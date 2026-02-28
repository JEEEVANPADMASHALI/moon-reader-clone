// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingSettingsImpl _$$ReadingSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingSettingsImpl(
      fontFamily: json['fontFamily'] as String? ?? 'Noto Serif',
      fontSize: (json['fontSize'] as num?)?.toDouble() ?? 18.0,
      lineSpacing: (json['lineSpacing'] as num?)?.toDouble() ?? 1.5,
      paragraphSpacing: (json['paragraphSpacing'] as num?)?.toDouble() ?? 8.0,
      horizontalMargin: (json['horizontalMargin'] as num?)?.toDouble() ?? 16.0,
      verticalMargin: (json['verticalMargin'] as num?)?.toDouble() ?? 16.0,
      themeId: json['themeId'] as String? ?? 'white',
      brightness: (json['brightness'] as num?)?.toDouble() ?? 0.7,
      blueLightFilter: (json['blueLightFilter'] as num?)?.toDouble() ?? 0.0,
      pageAnimation: $enumDecodeNullable(
              _$PageAnimationTypeEnumMap, json['pageAnimation']) ??
          PageAnimationType.slide,
      dualPageMode: json['dualPageMode'] as bool? ?? false,
      keepScreenOn: json['keepScreenOn'] as bool? ?? false,
      autoScrollMode: $enumDecodeNullable(
              _$AutoScrollModeEnumMap, json['autoScrollMode']) ??
          AutoScrollMode.off,
      autoScrollSpeed: (json['autoScrollSpeed'] as num?)?.toDouble() ?? 60.0,
      tapTopLeft: $enumDecodeNullable(_$TapActionEnumMap, json['tapTopLeft']) ??
          TapAction.prevPage,
      tapTopCenter:
          $enumDecodeNullable(_$TapActionEnumMap, json['tapTopCenter']) ??
              TapAction.toggleOverlay,
      tapTopRight:
          $enumDecodeNullable(_$TapActionEnumMap, json['tapTopRight']) ??
              TapAction.nextPage,
      tapMiddleLeft:
          $enumDecodeNullable(_$TapActionEnumMap, json['tapMiddleLeft']) ??
              TapAction.prevPage,
      tapMiddleCenter:
          $enumDecodeNullable(_$TapActionEnumMap, json['tapMiddleCenter']) ??
              TapAction.toggleOverlay,
      tapMiddleRight:
          $enumDecodeNullable(_$TapActionEnumMap, json['tapMiddleRight']) ??
              TapAction.nextPage,
      tapBottomLeft:
          $enumDecodeNullable(_$TapActionEnumMap, json['tapBottomLeft']) ??
              TapAction.prevPage,
      tapBottomCenter:
          $enumDecodeNullable(_$TapActionEnumMap, json['tapBottomCenter']) ??
              TapAction.toggleOverlay,
      tapBottomRight:
          $enumDecodeNullable(_$TapActionEnumMap, json['tapBottomRight']) ??
              TapAction.nextPage,
      volumeKeyNavigation: json['volumeKeyNavigation'] as bool? ?? true,
    );

Map<String, dynamic> _$$ReadingSettingsImplToJson(
        _$ReadingSettingsImpl instance) =>
    <String, dynamic>{
      'fontFamily': instance.fontFamily,
      'fontSize': instance.fontSize,
      'lineSpacing': instance.lineSpacing,
      'paragraphSpacing': instance.paragraphSpacing,
      'horizontalMargin': instance.horizontalMargin,
      'verticalMargin': instance.verticalMargin,
      'themeId': instance.themeId,
      'brightness': instance.brightness,
      'blueLightFilter': instance.blueLightFilter,
      'pageAnimation': _$PageAnimationTypeEnumMap[instance.pageAnimation]!,
      'dualPageMode': instance.dualPageMode,
      'keepScreenOn': instance.keepScreenOn,
      'autoScrollMode': _$AutoScrollModeEnumMap[instance.autoScrollMode]!,
      'autoScrollSpeed': instance.autoScrollSpeed,
      'tapTopLeft': _$TapActionEnumMap[instance.tapTopLeft]!,
      'tapTopCenter': _$TapActionEnumMap[instance.tapTopCenter]!,
      'tapTopRight': _$TapActionEnumMap[instance.tapTopRight]!,
      'tapMiddleLeft': _$TapActionEnumMap[instance.tapMiddleLeft]!,
      'tapMiddleCenter': _$TapActionEnumMap[instance.tapMiddleCenter]!,
      'tapMiddleRight': _$TapActionEnumMap[instance.tapMiddleRight]!,
      'tapBottomLeft': _$TapActionEnumMap[instance.tapBottomLeft]!,
      'tapBottomCenter': _$TapActionEnumMap[instance.tapBottomCenter]!,
      'tapBottomRight': _$TapActionEnumMap[instance.tapBottomRight]!,
      'volumeKeyNavigation': instance.volumeKeyNavigation,
    };

const _$PageAnimationTypeEnumMap = {
  PageAnimationType.none: 'none',
  PageAnimationType.slide: 'slide',
  PageAnimationType.fade: 'fade',
  PageAnimationType.curl: 'curl',
  PageAnimationType.flip3d: 'flip3d',
};

const _$AutoScrollModeEnumMap = {
  AutoScrollMode.off: 'off',
  AutoScrollMode.pixel: 'pixel',
  AutoScrollMode.line: 'line',
  AutoScrollMode.page: 'page',
  AutoScrollMode.speed: 'speed',
};

const _$TapActionEnumMap = {
  TapAction.nextPage: 'nextPage',
  TapAction.prevPage: 'prevPage',
  TapAction.toggleOverlay: 'toggleOverlay',
  TapAction.addBookmark: 'addBookmark',
  TapAction.showToc: 'showToc',
  TapAction.toggleTts: 'toggleTts',
  TapAction.none: 'none',
};
