import 'package:freezed_annotation/freezed_annotation.dart';

part 'tts_settings.freezed.dart';
part 'tts_settings.g.dart';

@freezed
class TtsSettings with _$TtsSettings {
  const factory TtsSettings({
    @Default(1.0) double speed,
    @Default(1.0) double pitch,
    @Default(1.0) double volume,
    @Default('en-US') String language,
    @Default(true) bool shakeToToggle,
    @Default(true) bool highlightCurrentSentence,
  }) = _TtsSettings;

  factory TtsSettings.fromJson(Map<String, dynamic> json) =>
      _$TtsSettingsFromJson(json);
}
