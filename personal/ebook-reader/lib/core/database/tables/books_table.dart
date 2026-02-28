import 'package:drift/drift.dart';

class BooksTable extends Table {
  @override
  String get tableName => 'books';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get author => text().withDefault(const Constant('Unknown'))();
  TextColumn get filePath => text()();
  TextColumn get format => text()(); // epub, pdf, txt, cbz, cbr, mobi
  TextColumn get coverPath => text().nullable()();
  IntColumn get totalPages => integer().withDefault(const Constant(0))();
  IntColumn get currentPage => integer().withDefault(const Constant(0))();
  TextColumn get currentCfi => text().nullable()(); // EPUB CFI position
  RealColumn get readingProgress =>
      real().withDefault(const Constant(0.0))(); // 0.0–1.0
  DateTimeColumn get dateAdded => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get lastOpened => dateTime().nullable()();
  IntColumn get totalReadingSeconds =>
      integer().withDefault(const Constant(0))();
  BoolColumn get isFinished => boolean().withDefault(const Constant(false))();
  TextColumn get description => text().nullable()();
  TextColumn get language => text().nullable()();
  TextColumn get publisher => text().nullable()();
  TextColumn get isbn => text().nullable()();
  DateTimeColumn get publishDate => dateTime().nullable()();
  IntColumn get fileSize => integer().withDefault(const Constant(0))();
}
