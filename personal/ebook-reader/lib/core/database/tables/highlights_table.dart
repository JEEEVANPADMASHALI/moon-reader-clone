import 'package:drift/drift.dart';
import 'books_table.dart';

class HighlightsTable extends Table {
  @override
  String get tableName => 'highlights';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookId =>
      integer().references(BooksTable, #id, onDelete: KeyAction.cascade)();
  TextColumn get cfiStart => text()();
  TextColumn get cfiEnd => text().nullable()();
  TextColumn get selectedText => text()();
  IntColumn get color => integer().withDefault(const Constant(0xFFFFEB3B))();
  TextColumn get highlightType =>
      text().withDefault(const Constant('highlight'))();
  // 'highlight' | 'underline' | 'strikethrough'
  IntColumn get pageIndex => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
