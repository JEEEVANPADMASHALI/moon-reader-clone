import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required int id,
    required String title,
    required String author,
    required String filePath,
    required String format,
    String? coverPath,
    @Default(0) int totalPages,
    @Default(0) int currentPage,
    String? currentCfi,
    @Default(0.0) double readingProgress,
    required DateTime dateAdded,
    DateTime? lastOpened,
    @Default(0) int totalReadingSeconds,
    @Default(false) bool isFinished,
    String? description,
    String? language,
    String? publisher,
    String? isbn,
    DateTime? publishDate,
    @Default(0) int fileSize,
    @Default([]) List<String> tags,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
