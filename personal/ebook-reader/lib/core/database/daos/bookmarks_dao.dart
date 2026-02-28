import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/bookmarks_table.dart';

part 'bookmarks_dao.g.dart';

@DriftAccessor(tables: [BookmarksTable])
class BookmarksDao extends DatabaseAccessor<AppDatabase>
    with _$BookmarksDaoMixin {
  BookmarksDao(super.db);

  Stream<List<BookmarksTableData>> watchBookmarks(int bookId) =>
      (select(bookmarksTable)..where((t) => t.bookId.equals(bookId))).watch();

  Future<List<BookmarksTableData>> getBookmarks(int bookId) =>
      (select(bookmarksTable)..where((t) => t.bookId.equals(bookId))).get();

  Future<int> insertBookmark(BookmarksTableCompanion bookmark) =>
      into(bookmarksTable).insert(bookmark);

  Future<int> deleteBookmark(int id) =>
      (delete(bookmarksTable)..where((t) => t.id.equals(id))).go();
}
