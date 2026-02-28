import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_settings.freezed.dart';
part 'reading_settings.g.dart';

enum PageAnimationType { none, slide, fade, curl, flip3d }
enum AutoScrollMode { off, pixel, line, page, speed }
enum TapAction {
  nextPage,
  prevPage,
  toggleOverlay,
  addBookmark,
  showToc,
  toggleTts,
  none,
}

@freezed
class ReadingSettings with _$ReadingSettings {
  const factory ReadingSettings({
    @Default('Noto Serif') String fontFamily,
    @Default(18.0) double fontSize,
    @Default(1.5) double lineSpacing,
    @Default(8.0) double paragraphSpacing,
    @Default(16.0) double horizontalMargin,
    @Default(16.0) double verticalMargin,
    @Default('white') String themeId,
    @Default(0.7) double brightness,
    @Default(0.0) double blueLightFilter,
    @Default(PageAnimationType.slide) PageAnimationType pageAnimation,
    @Default(false) bool dualPageMode,
    @Default(false) bool keepScreenOn,
    @Default(AutoScrollMode.off) AutoScrollMode autoScrollMode,
    @Default(60.0) double autoScrollSpeed,
    @Default(TapAction.prevPage) TapAction tapTopLeft,
    @Default(TapAction.toggleOverlay) TapAction tapTopCenter,
    @Default(TapAction.nextPage) TapAction tapTopRight,
    @Default(TapAction.prevPage) TapAction tapMiddleLeft,
    @Default(TapAction.toggleOverlay) TapAction tapMiddleCenter,
    @Default(TapAction.nextPage) TapAction tapMiddleRight,
    @Default(TapAction.prevPage) TapAction tapBottomLeft,
    @Default(TapAction.toggleOverlay) TapAction tapBottomCenter,
    @Default(TapAction.nextPage) TapAction tapBottomRight,
    @Default(true) bool volumeKeyNavigation,
  }) = _ReadingSettings;

  factory ReadingSettings.fromJson(Map<String, dynamic> json) =>
      _$ReadingSettingsFromJson(json);
}
