import 'package:freezed_annotation/freezed_annotation.dart';

part 'highlight.freezed.dart';
part 'highlight.g.dart';

enum HighlightType { highlight, underline, strikethrough }

@freezed
class Highlight with _$Highlight {
  const factory Highlight({
    required int id,
    required int bookId,
    required String cfiStart,
    String? cfiEnd,
    required String selectedText,
    @Default(0xFFFFEB3B) int color,
    @Default(HighlightType.highlight) HighlightType type,
    @Default(0) int pageIndex,
    required DateTime createdAt,
    String? note,
  }) = _Highlight;

  factory Highlight.fromJson(Map<String, dynamic> json) =>
      _$HighlightFromJson(json);
}
