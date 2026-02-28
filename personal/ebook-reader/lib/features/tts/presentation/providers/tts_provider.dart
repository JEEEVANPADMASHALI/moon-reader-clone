import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sensors_plus/sensors_plus.dart';
import '../../data/tts_service.dart';
import '../../domain/entities/tts_settings.dart';

final ttsSettingsProvider =
    StateNotifierProvider<TtsSettingsNotifier, TtsSettings>((ref) {
  return TtsSettingsNotifier(ref);
});

class TtsSettingsNotifier extends StateNotifier<TtsSettings> {
  static const _key = 'tts_settings_data';
  final Ref _ref;

  TtsSettingsNotifier(this._ref) : super(const TtsSettings()) {
    _load();
    _setupShakeDetection();
  }

  void _load() {
    final box = Hive.box('settings');
    final raw = box.get(_key);
    if (raw != null) {
      try {
        state = TtsSettings.fromJson(
            jsonDecode(raw as String) as Map<String, dynamic>);
      } catch (_) {}
    }
  }

  void _save() {
    Hive.box('settings').put(_key, jsonEncode(state.toJson()));
  }

  void setSpeed(double speed) {
    state = state.copyWith(speed: speed);
    _ref.read(ttsServiceProvider).setRate(speed);
    _save();
  }

  void setPitch(double pitch) {
    state = state.copyWith(pitch: pitch);
    _ref.read(ttsServiceProvider).setPitch(pitch);
    _save();
  }

  void setVolume(double volume) {
    state = state.copyWith(volume: volume);
    _ref.read(ttsServiceProvider).setVolume(volume);
    _save();
  }

  void setShakeToToggle(bool value) {
    state = state.copyWith(shakeToToggle: value);
    _save();
  }

  void _setupShakeDetection() {
    double lastX = 0, lastY = 0, lastZ = 0;
    DateTime lastShake = DateTime.now();

    accelerometerEventStream().listen((event) {
      if (!state.shakeToToggle) return;

      final dx = (event.x - lastX).abs();
      final dy = (event.y - lastY).abs();
      final dz = (event.z - lastZ).abs();

      lastX = event.x;
      lastY = event.y;
      lastZ = event.z;

      if (dx + dy + dz > 30) {
        final now = DateTime.now();
        if (now.difference(lastShake).inMilliseconds > 1000) {
          lastShake = now;
          _toggleTts();
        }
      }
    });
  }

  void _toggleTts() {
    final tts = _ref.read(ttsServiceProvider);
    if (tts.isPlaying) {
      tts.stop();
      _ref.read(ttsPlayingProvider.notifier).state = false;
    }
  }
}

final ttsPlayingProvider = StateProvider<bool>((ref) => false);

final ttsActionsProvider = Provider<TtsActions>((ref) => TtsActions(ref));

class TtsActions {
  final Ref ref;
  TtsActions(this.ref);

  Future<void> speakText(String text) async {
    final service = ref.read(ttsServiceProvider);
    final settings = ref.read(ttsSettingsProvider);
    await service.setRate(settings.speed);
    await service.setPitch(settings.pitch);
    await service.setVolume(settings.volume);
    await service.speak(text);
    ref.read(ttsPlayingProvider.notifier).state = true;
  }

  Future<void> stop() async {
    await ref.read(ttsServiceProvider).stop();
    ref.read(ttsPlayingProvider.notifier).state = false;
  }

  Future<void> pause() async {
    await ref.read(ttsServiceProvider).pause();
    ref.read(ttsPlayingProvider.notifier).state = false;
  }
}
