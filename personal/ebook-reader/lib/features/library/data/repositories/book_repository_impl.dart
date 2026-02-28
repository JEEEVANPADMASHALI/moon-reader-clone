import 'dart:io';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/utils/file_utils.dart';
import '../../domain/entities/book.dart';
import '../../domain/entities/collection.dart';
import '../../domain/repositories/book_repository.dart';
import '../datasources/local_book_datasource.dart';

final bookRepositoryProvider = Provider<BookRepository>((ref) {
  final db = ref.watch(appDatabaseProvider);
  final datasource = ref.watch(localBookDatasourceProvider);
  return BookRepositoryImpl(db, datasource);
});

class BookRepositoryImpl implements BookRepository {
  final AppDatabase _db;
  final LocalBookDatasource _datasource;

  BookRepositoryImpl(this._db, this._datasource);

  @override
  Stream<List<Book>> watchAllBooks() =>
      _db.booksDao.watchAllBooks().map((rows) => rows.map(_rowToBook).toList());

  @override
  Future<List<Book>> getAllBooks() async {
    final rows = await _db.booksDao.getAllBooks();
    return rows.map(_rowToBook).toList();
  }

  @override
  Future<Book?> getBookById(int id) async {
    final row = await _db.booksDao.getBookById(id);
    return row != null ? _rowToBook(row) : null;
  }

  @override
  Future<int> importBook(String filePath) async {
    // Check if already in library
    final existing = await _db.booksDao.getBookByPath(filePath);
    if (existing != null) return existing.id;

    final file = File(filePath);
    final format = await FileUtils.detectFormatByBytes(filePath) ??
        FileUtils.detectFormat(filePath) ??
        'unknown';

    // Extract metadata
    final metadata = await _datasource.extractMetadata(filePath, format);

    return _db.booksDao.insertBook(
      BooksTableCompanion.insert(
        title: metadata['title'] ?? _titleFromPath(filePath),
        author: Value(metadata['author'] ?? 'Unknown'),
        filePath: filePath,
        format: format,
        coverPath: Value(metadata['coverPath']),
        description: Value(metadata['description']),
        language: Value(metadata['language']),
        publisher: Value(metadata['publisher']),
        fileSize: Value(await file.length()),
      ),
    );
  }

  @override
  Future<void> deleteBook(int id) async {
    await _db.booksDao.deleteBook(id);
  }

  @override
  Future<void> updateProgress(int id, int page, double progress,
      {String? cfi}) async {
    await _db.booksDao.updateProgress(id, page, progress, cfi: cfi);
  }

  @override
  Stream<List<Book>> searchBooks(String query) =>
      _db.booksDao.searchBooks(query).map((rows) => rows.map(_rowToBook).toList());

  @override
  Future<List<Collection>> getCollections() async {
    final rows = await _db.select(_db.collectionsTable).get();
    return rows.map(_rowToCollection).toList();
  }

  @override
  Future<int> createCollection(String name, {String? description}) =>
      _db.into(_db.collectionsTable).insert(
            CollectionsTableCompanion.insert(
              name: name,
              description: Value(description),
            ),
          );

  @override
  Future<void> addBookToCollection(int bookId, int collectionId) =>
      _db.into(_db.bookCollectionsTable).insertOnConflictUpdate(
            BookCollectionsTableCompanion.insert(
              bookId: bookId,
              collectionId: collectionId,
            ),
          );

  @override
  Future<void> removeBookFromCollection(int bookId, int collectionId) =>
      (_db.delete(_db.bookCollectionsTable)
            ..where((t) =>
                t.bookId.equals(bookId) & t.collectionId.equals(collectionId)))
          .go();

  Book _rowToBook(BooksTableData row) => Book(
        id: row.id,
        title: row.title,
        author: row.author,
        filePath: row.filePath,
        format: row.format,
        coverPath: row.coverPath,
        totalPages: row.totalPages,
        currentPage: row.currentPage,
        currentCfi: row.currentCfi,
        readingProgress: row.readingProgress,
        dateAdded: row.dateAdded,
        lastOpened: row.lastOpened,
        totalReadingSeconds: row.totalReadingSeconds,
        isFinished: row.isFinished,
        description: row.description,
        language: row.language,
        publisher: row.publisher,
        isbn: row.isbn,
        publishDate: row.publishDate,
        fileSize: row.fileSize,
      );

  Collection _rowToCollection(CollectionsTableData row) => Collection(
        id: row.id,
        name: row.name,
        description: row.description,
        coverPath: row.coverPath,
        createdAt: row.createdAt,
      );

  String _titleFromPath(String path) {
    final name = path.split('/').last;
    final dotIndex = name.lastIndexOf('.');
    return dotIndex > 0 ? name.substring(0, dotIndex) : name;
  }
}
