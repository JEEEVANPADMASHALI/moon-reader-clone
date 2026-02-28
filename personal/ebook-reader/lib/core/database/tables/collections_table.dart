import 'package:drift/drift.dart';
import 'books_table.dart';

class CollectionsTable extends Table {
  @override
  String get tableName => 'collections';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get coverPath => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class BookCollectionsTable extends Table {
  @override
  String get tableName => 'book_collections';

  IntColumn get bookId =>
      integer().references(BooksTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get collectionId =>
      integer().references(CollectionsTable, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {bookId, collectionId};
}
