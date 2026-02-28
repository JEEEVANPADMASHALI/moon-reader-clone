import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/reading_stats_table.dart';

part 'stats_dao.g.dart';

@DriftAccessor(tables: [ReadingStatsTable])
class StatsDao extends DatabaseAccessor<AppDatabase> with _$StatsDaoMixin {
  StatsDao(super.db);

  Future<int> startSession(int bookId) => into(readingStatsTable).insert(
        ReadingStatsTableCompanion.insert(
          bookId: bookId,
          sessionStart: DateTime.now(),
        ),
      );

  Future<void> endSession(int sessionId, int pagesRead, int wordsRead) async {
    final wpm = wordsRead > 0
        ? wordsRead /
            (DateTime.now()
                    .difference(
                      (await (select(readingStatsTable)
                                ..where((t) => t.id.equals(sessionId)))
                            .getSingleOrNull()
                          )!
                        .sessionStart)
                    .inMinutes
                    .clamp(1, double.maxFinite))
        : 0.0;

    await (update(readingStatsTable)
          ..where((t) => t.id.equals(sessionId)))
        .write(
      ReadingStatsTableCompanion(
        sessionEnd: Value(DateTime.now()),
        pagesRead: Value(pagesRead),
        wordsRead: Value(wordsRead),
        averageWpm: Value(wpm.toDouble()),
      ),
    );
  }

  Future<List<ReadingStatsTableData>> getStatsForBook(int bookId) =>
      (select(readingStatsTable)..where((t) => t.bookId.equals(bookId))).get();

  Future<List<ReadingStatsTableData>> getRecentSessions(int days) {
    final since = DateTime.now().subtract(Duration(days: days));
    return (select(readingStatsTable)
          ..where((t) => t.sessionStart.isBiggerThanValue(since)))
        .get();
  }
}
