import '../entities/book.dart';
import '../entities/collection.dart';

abstract class BookRepository {
  Stream<List<Book>> watchAllBooks();
  Future<List<Book>> getAllBooks();
  Future<Book?> getBookById(int id);
  Future<int> importBook(String filePath);
  Future<void> deleteBook(int id);
  Future<void> updateProgress(int id, int page, double progress, {String? cfi});
  Stream<List<Book>> searchBooks(String query);
  Future<List<Collection>> getCollections();
  Future<int> createCollection(String name, {String? description});
  Future<void> addBookToCollection(int bookId, int collectionId);
  Future<void> removeBookFromCollection(int bookId, int collectionId);
}
