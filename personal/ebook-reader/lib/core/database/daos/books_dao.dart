import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/books_table.dart';

part 'books_dao.g.dart';

@DriftAccessor(tables: [BooksTable])
class BooksDao extends DatabaseAccessor<AppDatabase> with _$BooksDaoMixin {
  BooksDao(super.db);

  Future<List<BooksTableData>> getAllBooks() => select(booksTable).get();

  Stream<List<BooksTableData>> watchAllBooks() => select(booksTable).watch();

  Future<BooksTableData?> getBookById(int id) =>
      (select(booksTable)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<BooksTableData?> getBookByPath(String path) =>
      (select(booksTable)..where((t) => t.filePath.equals(path)))
          .getSingleOrNull();

  Future<int> insertBook(BooksTableCompanion book) =>
      into(booksTable).insert(book);

  Future<bool> updateBook(BooksTableCompanion book) =>
      update(booksTable).replace(book);

  Future<int> deleteBook(int id) =>
      (delete(booksTable)..where((t) => t.id.equals(id))).go();

  Future<void> updateProgress(int id, int currentPage, double progress,
      {String? cfi}) =>
      (update(booksTable)..where((t) => t.id.equals(id))).write(
        BooksTableCompanion(
          currentPage: Value(currentPage),
          readingProgress: Value(progress),
          currentCfi: cfi != null ? Value(cfi) : const Value.absent(),
          lastOpened: Value(DateTime.now()),
        ),
      );

  Future<void> addReadingTime(int id, int seconds) async {
    final book = await getBookById(id);
    if (book == null) return;
    await (update(booksTable)..where((t) => t.id.equals(id))).write(
      BooksTableCompanion(
        totalReadingSeconds:
            Value(book.totalReadingSeconds + seconds),
      ),
    );
  }

  Stream<List<BooksTableData>> searchBooks(String query) {
    return (select(booksTable)
          ..where((t) =>
              t.title.like('%$query%') | t.author.like('%$query%')))
        .watch();
  }
}
