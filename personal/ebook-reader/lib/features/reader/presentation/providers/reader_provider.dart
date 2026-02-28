import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/app_database.dart';
import '../../domain/entities/book_chapter.dart';

final currentBookIdProvider = StateProvider<int?>((ref) => null);

final currentBookProvider = StreamProvider.family<dynamic, int>(
  (ref, bookId) => ref
      .watch(appDatabaseProvider)
      .booksDao
      .watchAllBooks()
      .map((books) => books.where((b) => b.id == bookId).firstOrNull),
);

final currentChaptersProvider =
    StateProvider<List<BookChapter>>((ref) => []);

final currentChapterIndexProvider = StateProvider<int>((ref) => 0);

final readerOverlayVisibleProvider = StateProvider<bool>((ref) => false);

final readerSessionIdProvider = StateProvider<int?>((ref) => null);

class ReaderSessionTracker {
  final WidgetRef ref;

  ReaderSessionTracker(this.ref);

  void startSession(int bookId) async {
    final db = ref.read(appDatabaseProvider);
    final sessionId = await db.statsDao.startSession(bookId);
    ref.read(readerSessionIdProvider.notifier).state = sessionId;
  }

  void recordPageTurn() {}

  Future<void> endSession() async {
    final sessionId = ref.read(readerSessionIdProvider);
    if (sessionId == null) return;
    final db = ref.read(appDatabaseProvider);
    await db.statsDao.endSession(
      sessionId,
      0,
      0,
    );
    ref.read(readerSessionIdProvider.notifier).state = null;
  }
}
