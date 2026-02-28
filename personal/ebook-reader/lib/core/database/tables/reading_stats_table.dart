import 'package:drift/drift.dart';
import 'books_table.dart';

class ReadingStatsTable extends Table {
  @override
  String get tableName => 'reading_stats';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookId =>
      integer().references(BooksTable, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get sessionStart => dateTime()();
  DateTimeColumn get sessionEnd => dateTime().nullable()();
  IntColumn get pagesRead => integer().withDefault(const Constant(0))();
  IntColumn get wordsRead => integer().withDefault(const Constant(0))();
  RealColumn get averageWpm => real().withDefault(const Constant(0.0))();
  DateTimeColumn get date => dateTime().withDefault(currentDateAndTime)();
}
