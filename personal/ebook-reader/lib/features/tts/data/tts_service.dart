import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

final ttsServiceProvider = Provider<TtsService>((ref) {
  final service = TtsService();
  ref.onDispose(() => service.dispose());
  return service;
});

class TtsService {
  final FlutterTts _tts = FlutterTts();
  bool _isPlaying = false;

  TtsService() {
    _tts.setStartHandler(() => _isPlaying = true);
    _tts.setCompletionHandler(() => _isPlaying = false);
    _tts.setCancelHandler(() => _isPlaying = false);
    _tts.setErrorHandler((_) => _isPlaying = false);
  }

  bool get isPlaying => _isPlaying;

  Future<void> speak(String text) async {
    await _tts.speak(text);
  }

  Future<void> stop() async {
    await _tts.stop();
    _isPlaying = false;
  }

  Future<void> pause() async {
    await _tts.pause();
    _isPlaying = false;
  }

  Future<void> setRate(double rate) async {
    await _tts.setSpeechRate(rate.clamp(0.1, 3.0));
  }

  Future<void> setVolume(double volume) async {
    await _tts.setVolume(volume.clamp(0.0, 1.0));
  }

  Future<void> setPitch(double pitch) async {
    await _tts.setPitch(pitch.clamp(0.5, 2.0));
  }

  Future<List<dynamic>> getAvailableLanguages() async {
    return await _tts.getLanguages ?? [];
  }

  Future<void> setLanguage(String language) async {
    await _tts.setLanguage(language);
  }

  void dispose() {
    _tts.stop();
  }
}
