import 'package:drift/drift.dart';
import 'package:drift_sqflite/drift_sqflite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'tables/books_table.dart';
import 'tables/bookmarks_table.dart';
import 'tables/highlights_table.dart';
import 'tables/notes_table.dart';
import 'tables/reading_stats_table.dart';
import 'tables/collections_table.dart';
import 'tables/tags_table.dart';
import 'daos/books_dao.dart';
import 'daos/bookmarks_dao.dart';
import 'daos/highlights_dao.dart';
import 'daos/stats_dao.dart';

part 'app_database.g.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  throw UnimplementedError('Override in main.dart');
});

@DriftDatabase(
  tables: [
    BooksTable,
    BookmarksTable,
    HighlightsTable,
    NotesTable,
    ReadingStatsTable,
    CollectionsTable,
    BookCollectionsTable,
    TagsTable,
    BookTagsTable,
  ],
  daos: [BooksDao, BookmarksDao, HighlightsDao, StatsDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) => m.createAll(),
        onUpgrade: (m, from, to) async {},
      );
}

QueryExecutor _openConnection() {
  return SqfliteQueryExecutor.inDatabaseFolder(
    path: 'ebook_reader.db',
    logStatements: false,
  );
}
