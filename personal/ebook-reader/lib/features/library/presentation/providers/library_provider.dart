import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/book.dart';
import '../../domain/entities/collection.dart';
import '../../data/repositories/book_repository_impl.dart';

enum SortMode { title, author, lastRead, dateAdded, progress }
enum ViewMode { grid, list }

final viewModeProvider = StateProvider<ViewMode>((ref) => ViewMode.grid);
final sortModeProvider = StateProvider<SortMode>((ref) => SortMode.dateAdded);
final searchQueryProvider = StateProvider<String>((ref) => '');

final booksStreamProvider = StreamProvider<List<Book>>((ref) {
  final repo = ref.watch(bookRepositoryProvider);
  final query = ref.watch(searchQueryProvider);
  if (query.isEmpty) {
    return repo.watchAllBooks();
  }
  return repo.searchBooks(query);
});

final sortedBooksProvider = Provider<AsyncValue<List<Book>>>((ref) {
  final booksAsync = ref.watch(booksStreamProvider);
  final sortMode = ref.watch(sortModeProvider);

  return booksAsync.whenData((books) {
    final sorted = List<Book>.from(books);
    switch (sortMode) {
      case SortMode.title:
        sorted.sort((a, b) => a.title.compareTo(b.title));
      case SortMode.author:
        sorted.sort((a, b) => a.author.compareTo(b.author));
      case SortMode.lastRead:
        sorted.sort((a, b) {
          if (a.lastOpened == null && b.lastOpened == null) return 0;
          if (a.lastOpened == null) return 1;
          if (b.lastOpened == null) return -1;
          return b.lastOpened!.compareTo(a.lastOpened!);
        });
      case SortMode.dateAdded:
        sorted.sort((a, b) => b.dateAdded.compareTo(a.dateAdded));
      case SortMode.progress:
        sorted.sort((a, b) => b.readingProgress.compareTo(a.readingProgress));
    }
    return sorted;
  });
});

final collectionsProvider = FutureProvider<List<Collection>>((ref) async {
  final repo = ref.watch(bookRepositoryProvider);
  return repo.getCollections();
});

final importBookProvider =
    AsyncNotifierProvider<ImportBookNotifier, void>(ImportBookNotifier.new);

class ImportBookNotifier extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<void> importBook(String filePath) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(bookRepositoryProvider);
      await repo.importBook(filePath);
      ref.invalidate(booksStreamProvider);
    });
  }

  Future<void> deleteBook(int bookId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(bookRepositoryProvider);
      await repo.deleteBook(bookId);
      ref.invalidate(booksStreamProvider);
    });
  }
}
