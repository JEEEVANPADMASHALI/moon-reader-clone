import 'package:drift/drift.dart';
import 'books_table.dart';

class TagsTable extends Table {
  @override
  String get tableName => 'tags';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get color => integer().withDefault(const Constant(0xFF4CAF50))();
}

class BookTagsTable extends Table {
  @override
  String get tableName => 'book_tags';

  IntColumn get bookId =>
      integer().references(BooksTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get tagId =>
      integer().references(TagsTable, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {bookId, tagId};
}
