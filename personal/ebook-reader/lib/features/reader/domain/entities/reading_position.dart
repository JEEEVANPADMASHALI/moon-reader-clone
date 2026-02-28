import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_position.freezed.dart';
part 'reading_position.g.dart';

@freezed
class ReadingPosition with _$ReadingPosition {
  const factory ReadingPosition({
    required int bookId,
    @Default(0) int pageIndex,
    String? chapterId,
    String? cfi,
    @Default(0.0) double scrollOffset,
  }) = _ReadingPosition;

  factory ReadingPosition.fromJson(Map<String, dynamic> json) =>
      _$ReadingPositionFromJson(json);
}
