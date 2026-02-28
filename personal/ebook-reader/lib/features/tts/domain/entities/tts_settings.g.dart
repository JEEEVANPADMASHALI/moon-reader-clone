// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tts_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TtsSettingsImpl _$$TtsSettingsImplFromJson(Map<String, dynamic> json) =>
    _$TtsSettingsImpl(
      speed: (json['speed'] as num?)?.toDouble() ?? 1.0,
      pitch: (json['pitch'] as num?)?.toDouble() ?? 1.0,
      volume: (json['volume'] as num?)?.toDouble() ?? 1.0,
      language: json['language'] as String? ?? 'en-US',
      shakeToToggle: json['shakeToToggle'] as bool? ?? true,
      highlightCurrentSentence:
          json['highlightCurrentSentence'] as bool? ?? true,
    );

Map<String, dynamic> _$$TtsSettingsImplToJson(_$TtsSettingsImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'pitch': instance.pitch,
      'volume': instance.volume,
      'language': instance.language,
      'shakeToToggle': instance.shakeToToggle,
      'highlightCurrentSentence': instance.highlightCurrentSentence,
    };
