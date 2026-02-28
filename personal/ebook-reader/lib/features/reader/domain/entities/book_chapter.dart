import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_chapter.freezed.dart';
part 'book_chapter.g.dart';

@freezed
class BookChapter with _$BookChapter {
  const factory BookChapter({
    required String id,
    required String title,
    @Default(0) int index,
    String? href,
    @Default([]) List<BookChapter> children,
  }) = _BookChapter;

  factory BookChapter.fromJson(Map<String, dynamic> json) =>
      _$BookChapterFromJson(json);
}
