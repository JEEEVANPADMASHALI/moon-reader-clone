import 'package:drift/drift.dart';
import 'books_table.dart';

class BookmarksTable extends Table {
  @override
  String get tableName => 'bookmarks';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookId =>
      integer().references(BooksTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get pageIndex => integer()();
  TextColumn get cfi => text().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get excerpt => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
