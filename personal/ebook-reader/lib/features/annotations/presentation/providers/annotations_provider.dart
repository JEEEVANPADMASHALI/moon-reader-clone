import 'dart:convert';
import 'package:drift/drift.dart' show Value;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../core/database/app_database.dart';
import '../../../annotations/domain/entities/highlight.dart';
import '../../../annotations/domain/entities/bookmark.dart';

final highlightsProvider =
    StreamProvider.family<List<Highlight>, int>((ref, bookId) {
  final db = ref.watch(appDatabaseProvider);
  return db.highlightsDao
      .watchHighlights(bookId)
      .map((rows) => rows.map(_rowToHighlight).toList());
});

final bookmarksProvider =
    StreamProvider.family<List<Bookmark>, int>((ref, bookId) {
  final db = ref.watch(appDatabaseProvider);
  return db.bookmarksDao
      .watchBookmarks(bookId)
      .map((rows) => rows.map(_rowToBookmark).toList());
});

Highlight _rowToHighlight(HighlightsTableData row) => Highlight(
      id: row.id,
      bookId: row.bookId,
      cfiStart: row.cfiStart,
      cfiEnd: row.cfiEnd,
      selectedText: row.selectedText,
      color: row.color,
      type: HighlightType.values.firstWhere(
        (t) => t.name == row.highlightType,
        orElse: () => HighlightType.highlight,
      ),
      pageIndex: row.pageIndex,
      createdAt: row.createdAt,
    );

Bookmark _rowToBookmark(BookmarksTableData row) => Bookmark(
      id: row.id,
      bookId: row.bookId,
      pageIndex: row.pageIndex,
      cfi: row.cfi,
      title: row.title,
      excerpt: row.excerpt,
      createdAt: row.createdAt,
    );

final annotationActionsProvider =
    Provider<AnnotationActions>((ref) => AnnotationActions(ref));

class AnnotationActions {
  final Ref ref;
  AnnotationActions(this.ref);

  AppDatabase get _db => ref.read(appDatabaseProvider);

  Future<void> addHighlight({
    required int bookId,
    required String cfiStart,
    String? cfiEnd,
    required String text,
    int color = 0xFFFFEB3B,
    String type = 'highlight',
    int pageIndex = 0,
  }) =>
      _db.highlightsDao.insertHighlight(
        HighlightsTableCompanion.insert(
          bookId: bookId,
          cfiStart: cfiStart,
          cfiEnd: Value(cfiEnd),
          selectedText: text,
          color: Value(color),
          highlightType: Value(type),
          pageIndex: Value(pageIndex),
        ),
      );

  Future<void> deleteHighlight(int id) =>
      _db.highlightsDao.deleteHighlight(id);

  Future<void> addBookmark({
    required int bookId,
    required int pageIndex,
    String? cfi,
    String? title,
    String? excerpt,
  }) =>
      _db.bookmarksDao.insertBookmark(
        BookmarksTableCompanion.insert(
          bookId: bookId,
          pageIndex: pageIndex,
          cfi: Value(cfi),
          title: Value(title),
          excerpt: Value(excerpt),
        ),
      );

  Future<void> deleteBookmark(int id) =>
      _db.bookmarksDao.deleteBookmark(id);

  Future<void> exportAnnotations(int bookId) async {
    final highlights = await _db.highlightsDao.getHighlights(bookId);
    final bookmarks = await _db.bookmarksDao.getBookmarks(bookId);

    final data = {
      'highlights': highlights
          .map((h) => {
                'text': h.selectedText,
                'cfi': h.cfiStart,
                'color': h.color,
                'type': h.highlightType,
                'page': h.pageIndex,
                'date': h.createdAt.toIso8601String(),
              })
          .toList(),
      'bookmarks': bookmarks
          .map((b) => {
                'page': b.pageIndex,
                'cfi': b.cfi,
                'title': b.title,
                'excerpt': b.excerpt,
                'date': b.createdAt.toIso8601String(),
              })
          .toList(),
    };

    await Share.share(
      jsonEncode(data),
      subject: 'Annotations Export',
    );
  }
}
