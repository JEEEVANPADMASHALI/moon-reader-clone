import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../domain/entities/reading_settings.dart';

final readingSettingsProvider =
    StateNotifierProvider<ReadingSettingsNotifier, ReadingSettings>((ref) {
  return ReadingSettingsNotifier();
});

class ReadingSettingsNotifier extends StateNotifier<ReadingSettings> {
  static const _key = 'reading_settings_data';

  ReadingSettingsNotifier() : super(const ReadingSettings()) {
    _load();
  }

  void _load() {
    final box = Hive.box('reading_settings');
    final raw = box.get(_key);
    if (raw != null) {
      try {
        final map = jsonDecode(raw as String) as Map<String, dynamic>;
        state = ReadingSettings.fromJson(map);
      } catch (_) {}
    }
  }

  void _save() {
    Hive.box('reading_settings').put(_key, jsonEncode(state.toJson()));
  }

  void update(ReadingSettings Function(ReadingSettings) updater) {
    state = updater(state);
    _save();
  }

  void setFontSize(double size) => update((s) => s.copyWith(fontSize: size));
  void setFontFamily(String family) =>
      update((s) => s.copyWith(fontFamily: family));
  void setLineSpacing(double spacing) =>
      update((s) => s.copyWith(lineSpacing: spacing));
  void setMargins(double h, double v) =>
      update((s) => s.copyWith(horizontalMargin: h, verticalMargin: v));
  void setThemeId(String id) => update((s) => s.copyWith(themeId: id));
  void setBrightness(double b) => update((s) => s.copyWith(brightness: b));
  void setBlueLightFilter(double f) =>
      update((s) => s.copyWith(blueLightFilter: f));
  void setPageAnimation(PageAnimationType type) =>
      update((s) => s.copyWith(pageAnimation: type));
  void setAutoScrollMode(AutoScrollMode mode) =>
      update((s) => s.copyWith(autoScrollMode: mode));
  void setAutoScrollSpeed(double speed) =>
      update((s) => s.copyWith(autoScrollSpeed: speed));
  void setVolumeKeyNavigation(bool enabled) =>
      update((s) => s.copyWith(volumeKeyNavigation: enabled));
  void setKeepScreenOn(bool enabled) =>
      update((s) => s.copyWith(keepScreenOn: enabled));
}
