import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/highlights_table.dart';
import '../tables/notes_table.dart';

part 'highlights_dao.g.dart';

@DriftAccessor(tables: [HighlightsTable, NotesTable])
class HighlightsDao extends DatabaseAccessor<AppDatabase>
    with _$HighlightsDaoMixin {
  HighlightsDao(super.db);

  Stream<List<HighlightsTableData>> watchHighlights(int bookId) =>
      (select(highlightsTable)..where((t) => t.bookId.equals(bookId))).watch();

  Future<List<HighlightsTableData>> getHighlights(int bookId) =>
      (select(highlightsTable)..where((t) => t.bookId.equals(bookId))).get();

  Future<int> insertHighlight(HighlightsTableCompanion highlight) =>
      into(highlightsTable).insert(highlight);

  Future<int> deleteHighlight(int id) =>
      (delete(highlightsTable)..where((t) => t.id.equals(id))).go();

  Future<int> addNote(NotesTableCompanion note) =>
      into(notesTable).insert(note);

  Future<List<NotesTableData>> getNotes(int highlightId) =>
      (select(notesTable)
            ..where((t) => t.highlightId.equals(highlightId)))
          .get();
}
