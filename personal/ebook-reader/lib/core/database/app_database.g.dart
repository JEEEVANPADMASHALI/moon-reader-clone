// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BooksTableTable extends BooksTable
    with TableInfo<$BooksTableTable, BooksTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Unknown'));
  static const VerificationMeta _filePathMeta =
      const VerificationMeta('filePath');
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
      'file_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _formatMeta = const VerificationMeta('format');
  @override
  late final GeneratedColumn<String> format = GeneratedColumn<String>(
      'format', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _coverPathMeta =
      const VerificationMeta('coverPath');
  @override
  late final GeneratedColumn<String> coverPath = GeneratedColumn<String>(
      'cover_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _totalPagesMeta =
      const VerificationMeta('totalPages');
  @override
  late final GeneratedColumn<int> totalPages = GeneratedColumn<int>(
      'total_pages', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _currentPageMeta =
      const VerificationMeta('currentPage');
  @override
  late final GeneratedColumn<int> currentPage = GeneratedColumn<int>(
      'current_page', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _currentCfiMeta =
      const VerificationMeta('currentCfi');
  @override
  late final GeneratedColumn<String> currentCfi = GeneratedColumn<String>(
      'current_cfi', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _readingProgressMeta =
      const VerificationMeta('readingProgress');
  @override
  late final GeneratedColumn<double> readingProgress = GeneratedColumn<double>(
      'reading_progress', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _dateAddedMeta =
      const VerificationMeta('dateAdded');
  @override
  late final GeneratedColumn<DateTime> dateAdded = GeneratedColumn<DateTime>(
      'date_added', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _lastOpenedMeta =
      const VerificationMeta('lastOpened');
  @override
  late final GeneratedColumn<DateTime> lastOpened = GeneratedColumn<DateTime>(
      'last_opened', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _totalReadingSecondsMeta =
      const VerificationMeta('totalReadingSeconds');
  @override
  late final GeneratedColumn<int> totalReadingSeconds = GeneratedColumn<int>(
      'total_reading_seconds', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _isFinishedMeta =
      const VerificationMeta('isFinished');
  @override
  late final GeneratedColumn<bool> isFinished = GeneratedColumn<bool>(
      'is_finished', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_finished" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _publisherMeta =
      const VerificationMeta('publisher');
  @override
  late final GeneratedColumn<String> publisher = GeneratedColumn<String>(
      'publisher', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isbnMeta = const VerificationMeta('isbn');
  @override
  late final GeneratedColumn<String> isbn = GeneratedColumn<String>(
      'isbn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _publishDateMeta =
      const VerificationMeta('publishDate');
  @override
  late final GeneratedColumn<DateTime> publishDate = GeneratedColumn<DateTime>(
      'publish_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _fileSizeMeta =
      const VerificationMeta('fileSize');
  @override
  late final GeneratedColumn<int> fileSize = GeneratedColumn<int>(
      'file_size', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        author,
        filePath,
        format,
        coverPath,
        totalPages,
        currentPage,
        currentCfi,
        readingProgress,
        dateAdded,
        lastOpened,
        totalReadingSeconds,
        isFinished,
        description,
        language,
        publisher,
        isbn,
        publishDate,
        fileSize
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books';
  @override
  VerificationContext validateIntegrity(Insertable<BooksTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('file_path')) {
      context.handle(_filePathMeta,
          filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta));
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('format')) {
      context.handle(_formatMeta,
          format.isAcceptableOrUnknown(data['format']!, _formatMeta));
    } else if (isInserting) {
      context.missing(_formatMeta);
    }
    if (data.containsKey('cover_path')) {
      context.handle(_coverPathMeta,
          coverPath.isAcceptableOrUnknown(data['cover_path']!, _coverPathMeta));
    }
    if (data.containsKey('total_pages')) {
      context.handle(
          _totalPagesMeta,
          totalPages.isAcceptableOrUnknown(
              data['total_pages']!, _totalPagesMeta));
    }
    if (data.containsKey('current_page')) {
      context.handle(
          _currentPageMeta,
          currentPage.isAcceptableOrUnknown(
              data['current_page']!, _currentPageMeta));
    }
    if (data.containsKey('current_cfi')) {
      context.handle(
          _currentCfiMeta,
          currentCfi.isAcceptableOrUnknown(
              data['current_cfi']!, _currentCfiMeta));
    }
    if (data.containsKey('reading_progress')) {
      context.handle(
          _readingProgressMeta,
          readingProgress.isAcceptableOrUnknown(
              data['reading_progress']!, _readingProgressMeta));
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added']!, _dateAddedMeta));
    }
    if (data.containsKey('last_opened')) {
      context.handle(
          _lastOpenedMeta,
          lastOpened.isAcceptableOrUnknown(
              data['last_opened']!, _lastOpenedMeta));
    }
    if (data.containsKey('total_reading_seconds')) {
      context.handle(
          _totalReadingSecondsMeta,
          totalReadingSeconds.isAcceptableOrUnknown(
              data['total_reading_seconds']!, _totalReadingSecondsMeta));
    }
    if (data.containsKey('is_finished')) {
      context.handle(
          _isFinishedMeta,
          isFinished.isAcceptableOrUnknown(
              data['is_finished']!, _isFinishedMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    }
    if (data.containsKey('publisher')) {
      context.handle(_publisherMeta,
          publisher.isAcceptableOrUnknown(data['publisher']!, _publisherMeta));
    }
    if (data.containsKey('isbn')) {
      context.handle(
          _isbnMeta, isbn.isAcceptableOrUnknown(data['isbn']!, _isbnMeta));
    }
    if (data.containsKey('publish_date')) {
      context.handle(
          _publishDateMeta,
          publishDate.isAcceptableOrUnknown(
              data['publish_date']!, _publishDateMeta));
    }
    if (data.containsKey('file_size')) {
      context.handle(_fileSizeMeta,
          fileSize.isAcceptableOrUnknown(data['file_size']!, _fileSizeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BooksTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BooksTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author'])!,
      filePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_path'])!,
      format: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}format'])!,
      coverPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cover_path']),
      totalPages: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_pages'])!,
      currentPage: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}current_page'])!,
      currentCfi: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}current_cfi']),
      readingProgress: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}reading_progress'])!,
      dateAdded: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_added'])!,
      lastOpened: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_opened']),
      totalReadingSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_reading_seconds'])!,
      isFinished: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_finished'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language']),
      publisher: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}publisher']),
      isbn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}isbn']),
      publishDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}publish_date']),
      fileSize: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}file_size'])!,
    );
  }

  @override
  $BooksTableTable createAlias(String alias) {
    return $BooksTableTable(attachedDatabase, alias);
  }
}

class BooksTableData extends DataClass implements Insertable<BooksTableData> {
  final int id;
  final String title;
  final String author;
  final String filePath;
  final String format;
  final String? coverPath;
  final int totalPages;
  final int currentPage;
  final String? currentCfi;
  final double readingProgress;
  final DateTime dateAdded;
  final DateTime? lastOpened;
  final int totalReadingSeconds;
  final bool isFinished;
  final String? description;
  final String? language;
  final String? publisher;
  final String? isbn;
  final DateTime? publishDate;
  final int fileSize;
  const BooksTableData(
      {required this.id,
      required this.title,
      required this.author,
      required this.filePath,
      required this.format,
      this.coverPath,
      required this.totalPages,
      required this.currentPage,
      this.currentCfi,
      required this.readingProgress,
      required this.dateAdded,
      this.lastOpened,
      required this.totalReadingSeconds,
      required this.isFinished,
      this.description,
      this.language,
      this.publisher,
      this.isbn,
      this.publishDate,
      required this.fileSize});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['author'] = Variable<String>(author);
    map['file_path'] = Variable<String>(filePath);
    map['format'] = Variable<String>(format);
    if (!nullToAbsent || coverPath != null) {
      map['cover_path'] = Variable<String>(coverPath);
    }
    map['total_pages'] = Variable<int>(totalPages);
    map['current_page'] = Variable<int>(currentPage);
    if (!nullToAbsent || currentCfi != null) {
      map['current_cfi'] = Variable<String>(currentCfi);
    }
    map['reading_progress'] = Variable<double>(readingProgress);
    map['date_added'] = Variable<DateTime>(dateAdded);
    if (!nullToAbsent || lastOpened != null) {
      map['last_opened'] = Variable<DateTime>(lastOpened);
    }
    map['total_reading_seconds'] = Variable<int>(totalReadingSeconds);
    map['is_finished'] = Variable<bool>(isFinished);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || language != null) {
      map['language'] = Variable<String>(language);
    }
    if (!nullToAbsent || publisher != null) {
      map['publisher'] = Variable<String>(publisher);
    }
    if (!nullToAbsent || isbn != null) {
      map['isbn'] = Variable<String>(isbn);
    }
    if (!nullToAbsent || publishDate != null) {
      map['publish_date'] = Variable<DateTime>(publishDate);
    }
    map['file_size'] = Variable<int>(fileSize);
    return map;
  }

  BooksTableCompanion toCompanion(bool nullToAbsent) {
    return BooksTableCompanion(
      id: Value(id),
      title: Value(title),
      author: Value(author),
      filePath: Value(filePath),
      format: Value(format),
      coverPath: coverPath == null && nullToAbsent
          ? const Value.absent()
          : Value(coverPath),
      totalPages: Value(totalPages),
      currentPage: Value(currentPage),
      currentCfi: currentCfi == null && nullToAbsent
          ? const Value.absent()
          : Value(currentCfi),
      readingProgress: Value(readingProgress),
      dateAdded: Value(dateAdded),
      lastOpened: lastOpened == null && nullToAbsent
          ? const Value.absent()
          : Value(lastOpened),
      totalReadingSeconds: Value(totalReadingSeconds),
      isFinished: Value(isFinished),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      language: language == null && nullToAbsent
          ? const Value.absent()
          : Value(language),
      publisher: publisher == null && nullToAbsent
          ? const Value.absent()
          : Value(publisher),
      isbn: isbn == null && nullToAbsent ? const Value.absent() : Value(isbn),
      publishDate: publishDate == null && nullToAbsent
          ? const Value.absent()
          : Value(publishDate),
      fileSize: Value(fileSize),
    );
  }

  factory BooksTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BooksTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      author: serializer.fromJson<String>(json['author']),
      filePath: serializer.fromJson<String>(json['filePath']),
      format: serializer.fromJson<String>(json['format']),
      coverPath: serializer.fromJson<String?>(json['coverPath']),
      totalPages: serializer.fromJson<int>(json['totalPages']),
      currentPage: serializer.fromJson<int>(json['currentPage']),
      currentCfi: serializer.fromJson<String?>(json['currentCfi']),
      readingProgress: serializer.fromJson<double>(json['readingProgress']),
      dateAdded: serializer.fromJson<DateTime>(json['dateAdded']),
      lastOpened: serializer.fromJson<DateTime?>(json['lastOpened']),
      totalReadingSeconds:
          serializer.fromJson<int>(json['totalReadingSeconds']),
      isFinished: serializer.fromJson<bool>(json['isFinished']),
      description: serializer.fromJson<String?>(json['description']),
      language: serializer.fromJson<String?>(json['language']),
      publisher: serializer.fromJson<String?>(json['publisher']),
      isbn: serializer.fromJson<String?>(json['isbn']),
      publishDate: serializer.fromJson<DateTime?>(json['publishDate']),
      fileSize: serializer.fromJson<int>(json['fileSize']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'author': serializer.toJson<String>(author),
      'filePath': serializer.toJson<String>(filePath),
      'format': serializer.toJson<String>(format),
      'coverPath': serializer.toJson<String?>(coverPath),
      'totalPages': serializer.toJson<int>(totalPages),
      'currentPage': serializer.toJson<int>(currentPage),
      'currentCfi': serializer.toJson<String?>(currentCfi),
      'readingProgress': serializer.toJson<double>(readingProgress),
      'dateAdded': serializer.toJson<DateTime>(dateAdded),
      'lastOpened': serializer.toJson<DateTime?>(lastOpened),
      'totalReadingSeconds': serializer.toJson<int>(totalReadingSeconds),
      'isFinished': serializer.toJson<bool>(isFinished),
      'description': serializer.toJson<String?>(description),
      'language': serializer.toJson<String?>(language),
      'publisher': serializer.toJson<String?>(publisher),
      'isbn': serializer.toJson<String?>(isbn),
      'publishDate': serializer.toJson<DateTime?>(publishDate),
      'fileSize': serializer.toJson<int>(fileSize),
    };
  }

  BooksTableData copyWith(
          {int? id,
          String? title,
          String? author,
          String? filePath,
          String? format,
          Value<String?> coverPath = const Value.absent(),
          int? totalPages,
          int? currentPage,
          Value<String?> currentCfi = const Value.absent(),
          double? readingProgress,
          DateTime? dateAdded,
          Value<DateTime?> lastOpened = const Value.absent(),
          int? totalReadingSeconds,
          bool? isFinished,
          Value<String?> description = const Value.absent(),
          Value<String?> language = const Value.absent(),
          Value<String?> publisher = const Value.absent(),
          Value<String?> isbn = const Value.absent(),
          Value<DateTime?> publishDate = const Value.absent(),
          int? fileSize}) =>
      BooksTableData(
        id: id ?? this.id,
        title: title ?? this.title,
        author: author ?? this.author,
        filePath: filePath ?? this.filePath,
        format: format ?? this.format,
        coverPath: coverPath.present ? coverPath.value : this.coverPath,
        totalPages: totalPages ?? this.totalPages,
        currentPage: currentPage ?? this.currentPage,
        currentCfi: currentCfi.present ? currentCfi.value : this.currentCfi,
        readingProgress: readingProgress ?? this.readingProgress,
        dateAdded: dateAdded ?? this.dateAdded,
        lastOpened: lastOpened.present ? lastOpened.value : this.lastOpened,
        totalReadingSeconds: totalReadingSeconds ?? this.totalReadingSeconds,
        isFinished: isFinished ?? this.isFinished,
        description: description.present ? description.value : this.description,
        language: language.present ? language.value : this.language,
        publisher: publisher.present ? publisher.value : this.publisher,
        isbn: isbn.present ? isbn.value : this.isbn,
        publishDate: publishDate.present ? publishDate.value : this.publishDate,
        fileSize: fileSize ?? this.fileSize,
      );
  BooksTableData copyWithCompanion(BooksTableCompanion data) {
    return BooksTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      author: data.author.present ? data.author.value : this.author,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      format: data.format.present ? data.format.value : this.format,
      coverPath: data.coverPath.present ? data.coverPath.value : this.coverPath,
      totalPages:
          data.totalPages.present ? data.totalPages.value : this.totalPages,
      currentPage:
          data.currentPage.present ? data.currentPage.value : this.currentPage,
      currentCfi:
          data.currentCfi.present ? data.currentCfi.value : this.currentCfi,
      readingProgress: data.readingProgress.present
          ? data.readingProgress.value
          : this.readingProgress,
      dateAdded: data.dateAdded.present ? data.dateAdded.value : this.dateAdded,
      lastOpened:
          data.lastOpened.present ? data.lastOpened.value : this.lastOpened,
      totalReadingSeconds: data.totalReadingSeconds.present
          ? data.totalReadingSeconds.value
          : this.totalReadingSeconds,
      isFinished:
          data.isFinished.present ? data.isFinished.value : this.isFinished,
      description:
          data.description.present ? data.description.value : this.description,
      language: data.language.present ? data.language.value : this.language,
      publisher: data.publisher.present ? data.publisher.value : this.publisher,
      isbn: data.isbn.present ? data.isbn.value : this.isbn,
      publishDate:
          data.publishDate.present ? data.publishDate.value : this.publishDate,
      fileSize: data.fileSize.present ? data.fileSize.value : this.fileSize,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BooksTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('filePath: $filePath, ')
          ..write('format: $format, ')
          ..write('coverPath: $coverPath, ')
          ..write('totalPages: $totalPages, ')
          ..write('currentPage: $currentPage, ')
          ..write('currentCfi: $currentCfi, ')
          ..write('readingProgress: $readingProgress, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('lastOpened: $lastOpened, ')
          ..write('totalReadingSeconds: $totalReadingSeconds, ')
          ..write('isFinished: $isFinished, ')
          ..write('description: $description, ')
          ..write('language: $language, ')
          ..write('publisher: $publisher, ')
          ..write('isbn: $isbn, ')
          ..write('publishDate: $publishDate, ')
          ..write('fileSize: $fileSize')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      author,
      filePath,
      format,
      coverPath,
      totalPages,
      currentPage,
      currentCfi,
      readingProgress,
      dateAdded,
      lastOpened,
      totalReadingSeconds,
      isFinished,
      description,
      language,
      publisher,
      isbn,
      publishDate,
      fileSize);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BooksTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.author == this.author &&
          other.filePath == this.filePath &&
          other.format == this.format &&
          other.coverPath == this.coverPath &&
          other.totalPages == this.totalPages &&
          other.currentPage == this.currentPage &&
          other.currentCfi == this.currentCfi &&
          other.readingProgress == this.readingProgress &&
          other.dateAdded == this.dateAdded &&
          other.lastOpened == this.lastOpened &&
          other.totalReadingSeconds == this.totalReadingSeconds &&
          other.isFinished == this.isFinished &&
          other.description == this.description &&
          other.language == this.language &&
          other.publisher == this.publisher &&
          other.isbn == this.isbn &&
          other.publishDate == this.publishDate &&
          other.fileSize == this.fileSize);
}

class BooksTableCompanion extends UpdateCompanion<BooksTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> author;
  final Value<String> filePath;
  final Value<String> format;
  final Value<String?> coverPath;
  final Value<int> totalPages;
  final Value<int> currentPage;
  final Value<String?> currentCfi;
  final Value<double> readingProgress;
  final Value<DateTime> dateAdded;
  final Value<DateTime?> lastOpened;
  final Value<int> totalReadingSeconds;
  final Value<bool> isFinished;
  final Value<String?> description;
  final Value<String?> language;
  final Value<String?> publisher;
  final Value<String?> isbn;
  final Value<DateTime?> publishDate;
  final Value<int> fileSize;
  const BooksTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.author = const Value.absent(),
    this.filePath = const Value.absent(),
    this.format = const Value.absent(),
    this.coverPath = const Value.absent(),
    this.totalPages = const Value.absent(),
    this.currentPage = const Value.absent(),
    this.currentCfi = const Value.absent(),
    this.readingProgress = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.lastOpened = const Value.absent(),
    this.totalReadingSeconds = const Value.absent(),
    this.isFinished = const Value.absent(),
    this.description = const Value.absent(),
    this.language = const Value.absent(),
    this.publisher = const Value.absent(),
    this.isbn = const Value.absent(),
    this.publishDate = const Value.absent(),
    this.fileSize = const Value.absent(),
  });
  BooksTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.author = const Value.absent(),
    required String filePath,
    required String format,
    this.coverPath = const Value.absent(),
    this.totalPages = const Value.absent(),
    this.currentPage = const Value.absent(),
    this.currentCfi = const Value.absent(),
    this.readingProgress = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.lastOpened = const Value.absent(),
    this.totalReadingSeconds = const Value.absent(),
    this.isFinished = const Value.absent(),
    this.description = const Value.absent(),
    this.language = const Value.absent(),
    this.publisher = const Value.absent(),
    this.isbn = const Value.absent(),
    this.publishDate = const Value.absent(),
    this.fileSize = const Value.absent(),
  })  : title = Value(title),
        filePath = Value(filePath),
        format = Value(format);
  static Insertable<BooksTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? author,
    Expression<String>? filePath,
    Expression<String>? format,
    Expression<String>? coverPath,
    Expression<int>? totalPages,
    Expression<int>? currentPage,
    Expression<String>? currentCfi,
    Expression<double>? readingProgress,
    Expression<DateTime>? dateAdded,
    Expression<DateTime>? lastOpened,
    Expression<int>? totalReadingSeconds,
    Expression<bool>? isFinished,
    Expression<String>? description,
    Expression<String>? language,
    Expression<String>? publisher,
    Expression<String>? isbn,
    Expression<DateTime>? publishDate,
    Expression<int>? fileSize,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (author != null) 'author': author,
      if (filePath != null) 'file_path': filePath,
      if (format != null) 'format': format,
      if (coverPath != null) 'cover_path': coverPath,
      if (totalPages != null) 'total_pages': totalPages,
      if (currentPage != null) 'current_page': currentPage,
      if (currentCfi != null) 'current_cfi': currentCfi,
      if (readingProgress != null) 'reading_progress': readingProgress,
      if (dateAdded != null) 'date_added': dateAdded,
      if (lastOpened != null) 'last_opened': lastOpened,
      if (totalReadingSeconds != null)
        'total_reading_seconds': totalReadingSeconds,
      if (isFinished != null) 'is_finished': isFinished,
      if (description != null) 'description': description,
      if (language != null) 'language': language,
      if (publisher != null) 'publisher': publisher,
      if (isbn != null) 'isbn': isbn,
      if (publishDate != null) 'publish_date': publishDate,
      if (fileSize != null) 'file_size': fileSize,
    });
  }

  BooksTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? author,
      Value<String>? filePath,
      Value<String>? format,
      Value<String?>? coverPath,
      Value<int>? totalPages,
      Value<int>? currentPage,
      Value<String?>? currentCfi,
      Value<double>? readingProgress,
      Value<DateTime>? dateAdded,
      Value<DateTime?>? lastOpened,
      Value<int>? totalReadingSeconds,
      Value<bool>? isFinished,
      Value<String?>? description,
      Value<String?>? language,
      Value<String?>? publisher,
      Value<String?>? isbn,
      Value<DateTime?>? publishDate,
      Value<int>? fileSize}) {
    return BooksTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      filePath: filePath ?? this.filePath,
      format: format ?? this.format,
      coverPath: coverPath ?? this.coverPath,
      totalPages: totalPages ?? this.totalPages,
      currentPage: currentPage ?? this.currentPage,
      currentCfi: currentCfi ?? this.currentCfi,
      readingProgress: readingProgress ?? this.readingProgress,
      dateAdded: dateAdded ?? this.dateAdded,
      lastOpened: lastOpened ?? this.lastOpened,
      totalReadingSeconds: totalReadingSeconds ?? this.totalReadingSeconds,
      isFinished: isFinished ?? this.isFinished,
      description: description ?? this.description,
      language: language ?? this.language,
      publisher: publisher ?? this.publisher,
      isbn: isbn ?? this.isbn,
      publishDate: publishDate ?? this.publishDate,
      fileSize: fileSize ?? this.fileSize,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (format.present) {
      map['format'] = Variable<String>(format.value);
    }
    if (coverPath.present) {
      map['cover_path'] = Variable<String>(coverPath.value);
    }
    if (totalPages.present) {
      map['total_pages'] = Variable<int>(totalPages.value);
    }
    if (currentPage.present) {
      map['current_page'] = Variable<int>(currentPage.value);
    }
    if (currentCfi.present) {
      map['current_cfi'] = Variable<String>(currentCfi.value);
    }
    if (readingProgress.present) {
      map['reading_progress'] = Variable<double>(readingProgress.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<DateTime>(dateAdded.value);
    }
    if (lastOpened.present) {
      map['last_opened'] = Variable<DateTime>(lastOpened.value);
    }
    if (totalReadingSeconds.present) {
      map['total_reading_seconds'] = Variable<int>(totalReadingSeconds.value);
    }
    if (isFinished.present) {
      map['is_finished'] = Variable<bool>(isFinished.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (publisher.present) {
      map['publisher'] = Variable<String>(publisher.value);
    }
    if (isbn.present) {
      map['isbn'] = Variable<String>(isbn.value);
    }
    if (publishDate.present) {
      map['publish_date'] = Variable<DateTime>(publishDate.value);
    }
    if (fileSize.present) {
      map['file_size'] = Variable<int>(fileSize.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('filePath: $filePath, ')
          ..write('format: $format, ')
          ..write('coverPath: $coverPath, ')
          ..write('totalPages: $totalPages, ')
          ..write('currentPage: $currentPage, ')
          ..write('currentCfi: $currentCfi, ')
          ..write('readingProgress: $readingProgress, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('lastOpened: $lastOpened, ')
          ..write('totalReadingSeconds: $totalReadingSeconds, ')
          ..write('isFinished: $isFinished, ')
          ..write('description: $description, ')
          ..write('language: $language, ')
          ..write('publisher: $publisher, ')
          ..write('isbn: $isbn, ')
          ..write('publishDate: $publishDate, ')
          ..write('fileSize: $fileSize')
          ..write(')'))
        .toString();
  }
}

class $BookmarksTableTable extends BookmarksTable
    with TableInfo<$BookmarksTableTable, BookmarksTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarksTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES books (id) ON DELETE CASCADE'));
  static const VerificationMeta _pageIndexMeta =
      const VerificationMeta('pageIndex');
  @override
  late final GeneratedColumn<int> pageIndex = GeneratedColumn<int>(
      'page_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _cfiMeta = const VerificationMeta('cfi');
  @override
  late final GeneratedColumn<String> cfi = GeneratedColumn<String>(
      'cfi', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _excerptMeta =
      const VerificationMeta('excerpt');
  @override
  late final GeneratedColumn<String> excerpt = GeneratedColumn<String>(
      'excerpt', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, bookId, pageIndex, cfi, title, excerpt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarks';
  @override
  VerificationContext validateIntegrity(Insertable<BookmarksTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('page_index')) {
      context.handle(_pageIndexMeta,
          pageIndex.isAcceptableOrUnknown(data['page_index']!, _pageIndexMeta));
    } else if (isInserting) {
      context.missing(_pageIndexMeta);
    }
    if (data.containsKey('cfi')) {
      context.handle(
          _cfiMeta, cfi.isAcceptableOrUnknown(data['cfi']!, _cfiMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('excerpt')) {
      context.handle(_excerptMeta,
          excerpt.isAcceptableOrUnknown(data['excerpt']!, _excerptMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BookmarksTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookmarksTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      pageIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_index'])!,
      cfi: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cfi']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      excerpt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}excerpt']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $BookmarksTableTable createAlias(String alias) {
    return $BookmarksTableTable(attachedDatabase, alias);
  }
}

class BookmarksTableData extends DataClass
    implements Insertable<BookmarksTableData> {
  final int id;
  final int bookId;
  final int pageIndex;
  final String? cfi;
  final String? title;
  final String? excerpt;
  final DateTime createdAt;
  const BookmarksTableData(
      {required this.id,
      required this.bookId,
      required this.pageIndex,
      this.cfi,
      this.title,
      this.excerpt,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['page_index'] = Variable<int>(pageIndex);
    if (!nullToAbsent || cfi != null) {
      map['cfi'] = Variable<String>(cfi);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || excerpt != null) {
      map['excerpt'] = Variable<String>(excerpt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BookmarksTableCompanion toCompanion(bool nullToAbsent) {
    return BookmarksTableCompanion(
      id: Value(id),
      bookId: Value(bookId),
      pageIndex: Value(pageIndex),
      cfi: cfi == null && nullToAbsent ? const Value.absent() : Value(cfi),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      excerpt: excerpt == null && nullToAbsent
          ? const Value.absent()
          : Value(excerpt),
      createdAt: Value(createdAt),
    );
  }

  factory BookmarksTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookmarksTableData(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      pageIndex: serializer.fromJson<int>(json['pageIndex']),
      cfi: serializer.fromJson<String?>(json['cfi']),
      title: serializer.fromJson<String?>(json['title']),
      excerpt: serializer.fromJson<String?>(json['excerpt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'pageIndex': serializer.toJson<int>(pageIndex),
      'cfi': serializer.toJson<String?>(cfi),
      'title': serializer.toJson<String?>(title),
      'excerpt': serializer.toJson<String?>(excerpt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  BookmarksTableData copyWith(
          {int? id,
          int? bookId,
          int? pageIndex,
          Value<String?> cfi = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> excerpt = const Value.absent(),
          DateTime? createdAt}) =>
      BookmarksTableData(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        pageIndex: pageIndex ?? this.pageIndex,
        cfi: cfi.present ? cfi.value : this.cfi,
        title: title.present ? title.value : this.title,
        excerpt: excerpt.present ? excerpt.value : this.excerpt,
        createdAt: createdAt ?? this.createdAt,
      );
  BookmarksTableData copyWithCompanion(BookmarksTableCompanion data) {
    return BookmarksTableData(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      pageIndex: data.pageIndex.present ? data.pageIndex.value : this.pageIndex,
      cfi: data.cfi.present ? data.cfi.value : this.cfi,
      title: data.title.present ? data.title.value : this.title,
      excerpt: data.excerpt.present ? data.excerpt.value : this.excerpt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BookmarksTableData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('pageIndex: $pageIndex, ')
          ..write('cfi: $cfi, ')
          ..write('title: $title, ')
          ..write('excerpt: $excerpt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, bookId, pageIndex, cfi, title, excerpt, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookmarksTableData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.pageIndex == this.pageIndex &&
          other.cfi == this.cfi &&
          other.title == this.title &&
          other.excerpt == this.excerpt &&
          other.createdAt == this.createdAt);
}

class BookmarksTableCompanion extends UpdateCompanion<BookmarksTableData> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> pageIndex;
  final Value<String?> cfi;
  final Value<String?> title;
  final Value<String?> excerpt;
  final Value<DateTime> createdAt;
  const BookmarksTableCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.pageIndex = const Value.absent(),
    this.cfi = const Value.absent(),
    this.title = const Value.absent(),
    this.excerpt = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  BookmarksTableCompanion.insert({
    this.id = const Value.absent(),
    required int bookId,
    required int pageIndex,
    this.cfi = const Value.absent(),
    this.title = const Value.absent(),
    this.excerpt = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : bookId = Value(bookId),
        pageIndex = Value(pageIndex);
  static Insertable<BookmarksTableData> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<int>? pageIndex,
    Expression<String>? cfi,
    Expression<String>? title,
    Expression<String>? excerpt,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (pageIndex != null) 'page_index': pageIndex,
      if (cfi != null) 'cfi': cfi,
      if (title != null) 'title': title,
      if (excerpt != null) 'excerpt': excerpt,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  BookmarksTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookId,
      Value<int>? pageIndex,
      Value<String?>? cfi,
      Value<String?>? title,
      Value<String?>? excerpt,
      Value<DateTime>? createdAt}) {
    return BookmarksTableCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      pageIndex: pageIndex ?? this.pageIndex,
      cfi: cfi ?? this.cfi,
      title: title ?? this.title,
      excerpt: excerpt ?? this.excerpt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (pageIndex.present) {
      map['page_index'] = Variable<int>(pageIndex.value);
    }
    if (cfi.present) {
      map['cfi'] = Variable<String>(cfi.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (excerpt.present) {
      map['excerpt'] = Variable<String>(excerpt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarksTableCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('pageIndex: $pageIndex, ')
          ..write('cfi: $cfi, ')
          ..write('title: $title, ')
          ..write('excerpt: $excerpt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $HighlightsTableTable extends HighlightsTable
    with TableInfo<$HighlightsTableTable, HighlightsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HighlightsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES books (id) ON DELETE CASCADE'));
  static const VerificationMeta _cfiStartMeta =
      const VerificationMeta('cfiStart');
  @override
  late final GeneratedColumn<String> cfiStart = GeneratedColumn<String>(
      'cfi_start', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cfiEndMeta = const VerificationMeta('cfiEnd');
  @override
  late final GeneratedColumn<String> cfiEnd = GeneratedColumn<String>(
      'cfi_end', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _selectedTextMeta =
      const VerificationMeta('selectedText');
  @override
  late final GeneratedColumn<String> selectedText = GeneratedColumn<String>(
      'selected_text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
      'color', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0xFFFFEB3B));
  static const VerificationMeta _highlightTypeMeta =
      const VerificationMeta('highlightType');
  @override
  late final GeneratedColumn<String> highlightType = GeneratedColumn<String>(
      'highlight_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('highlight'));
  static const VerificationMeta _pageIndexMeta =
      const VerificationMeta('pageIndex');
  @override
  late final GeneratedColumn<int> pageIndex = GeneratedColumn<int>(
      'page_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        cfiStart,
        cfiEnd,
        selectedText,
        color,
        highlightType,
        pageIndex,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'highlights';
  @override
  VerificationContext validateIntegrity(
      Insertable<HighlightsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('cfi_start')) {
      context.handle(_cfiStartMeta,
          cfiStart.isAcceptableOrUnknown(data['cfi_start']!, _cfiStartMeta));
    } else if (isInserting) {
      context.missing(_cfiStartMeta);
    }
    if (data.containsKey('cfi_end')) {
      context.handle(_cfiEndMeta,
          cfiEnd.isAcceptableOrUnknown(data['cfi_end']!, _cfiEndMeta));
    }
    if (data.containsKey('selected_text')) {
      context.handle(
          _selectedTextMeta,
          selectedText.isAcceptableOrUnknown(
              data['selected_text']!, _selectedTextMeta));
    } else if (isInserting) {
      context.missing(_selectedTextMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('highlight_type')) {
      context.handle(
          _highlightTypeMeta,
          highlightType.isAcceptableOrUnknown(
              data['highlight_type']!, _highlightTypeMeta));
    }
    if (data.containsKey('page_index')) {
      context.handle(_pageIndexMeta,
          pageIndex.isAcceptableOrUnknown(data['page_index']!, _pageIndexMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HighlightsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HighlightsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      cfiStart: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cfi_start'])!,
      cfiEnd: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cfi_end']),
      selectedText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}selected_text'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}color'])!,
      highlightType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}highlight_type'])!,
      pageIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_index'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $HighlightsTableTable createAlias(String alias) {
    return $HighlightsTableTable(attachedDatabase, alias);
  }
}

class HighlightsTableData extends DataClass
    implements Insertable<HighlightsTableData> {
  final int id;
  final int bookId;
  final String cfiStart;
  final String? cfiEnd;
  final String selectedText;
  final int color;
  final String highlightType;
  final int pageIndex;
  final DateTime createdAt;
  const HighlightsTableData(
      {required this.id,
      required this.bookId,
      required this.cfiStart,
      this.cfiEnd,
      required this.selectedText,
      required this.color,
      required this.highlightType,
      required this.pageIndex,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['cfi_start'] = Variable<String>(cfiStart);
    if (!nullToAbsent || cfiEnd != null) {
      map['cfi_end'] = Variable<String>(cfiEnd);
    }
    map['selected_text'] = Variable<String>(selectedText);
    map['color'] = Variable<int>(color);
    map['highlight_type'] = Variable<String>(highlightType);
    map['page_index'] = Variable<int>(pageIndex);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  HighlightsTableCompanion toCompanion(bool nullToAbsent) {
    return HighlightsTableCompanion(
      id: Value(id),
      bookId: Value(bookId),
      cfiStart: Value(cfiStart),
      cfiEnd:
          cfiEnd == null && nullToAbsent ? const Value.absent() : Value(cfiEnd),
      selectedText: Value(selectedText),
      color: Value(color),
      highlightType: Value(highlightType),
      pageIndex: Value(pageIndex),
      createdAt: Value(createdAt),
    );
  }

  factory HighlightsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HighlightsTableData(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      cfiStart: serializer.fromJson<String>(json['cfiStart']),
      cfiEnd: serializer.fromJson<String?>(json['cfiEnd']),
      selectedText: serializer.fromJson<String>(json['selectedText']),
      color: serializer.fromJson<int>(json['color']),
      highlightType: serializer.fromJson<String>(json['highlightType']),
      pageIndex: serializer.fromJson<int>(json['pageIndex']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'cfiStart': serializer.toJson<String>(cfiStart),
      'cfiEnd': serializer.toJson<String?>(cfiEnd),
      'selectedText': serializer.toJson<String>(selectedText),
      'color': serializer.toJson<int>(color),
      'highlightType': serializer.toJson<String>(highlightType),
      'pageIndex': serializer.toJson<int>(pageIndex),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  HighlightsTableData copyWith(
          {int? id,
          int? bookId,
          String? cfiStart,
          Value<String?> cfiEnd = const Value.absent(),
          String? selectedText,
          int? color,
          String? highlightType,
          int? pageIndex,
          DateTime? createdAt}) =>
      HighlightsTableData(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        cfiStart: cfiStart ?? this.cfiStart,
        cfiEnd: cfiEnd.present ? cfiEnd.value : this.cfiEnd,
        selectedText: selectedText ?? this.selectedText,
        color: color ?? this.color,
        highlightType: highlightType ?? this.highlightType,
        pageIndex: pageIndex ?? this.pageIndex,
        createdAt: createdAt ?? this.createdAt,
      );
  HighlightsTableData copyWithCompanion(HighlightsTableCompanion data) {
    return HighlightsTableData(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      cfiStart: data.cfiStart.present ? data.cfiStart.value : this.cfiStart,
      cfiEnd: data.cfiEnd.present ? data.cfiEnd.value : this.cfiEnd,
      selectedText: data.selectedText.present
          ? data.selectedText.value
          : this.selectedText,
      color: data.color.present ? data.color.value : this.color,
      highlightType: data.highlightType.present
          ? data.highlightType.value
          : this.highlightType,
      pageIndex: data.pageIndex.present ? data.pageIndex.value : this.pageIndex,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HighlightsTableData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('cfiStart: $cfiStart, ')
          ..write('cfiEnd: $cfiEnd, ')
          ..write('selectedText: $selectedText, ')
          ..write('color: $color, ')
          ..write('highlightType: $highlightType, ')
          ..write('pageIndex: $pageIndex, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bookId, cfiStart, cfiEnd, selectedText,
      color, highlightType, pageIndex, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HighlightsTableData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.cfiStart == this.cfiStart &&
          other.cfiEnd == this.cfiEnd &&
          other.selectedText == this.selectedText &&
          other.color == this.color &&
          other.highlightType == this.highlightType &&
          other.pageIndex == this.pageIndex &&
          other.createdAt == this.createdAt);
}

class HighlightsTableCompanion extends UpdateCompanion<HighlightsTableData> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<String> cfiStart;
  final Value<String?> cfiEnd;
  final Value<String> selectedText;
  final Value<int> color;
  final Value<String> highlightType;
  final Value<int> pageIndex;
  final Value<DateTime> createdAt;
  const HighlightsTableCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.cfiStart = const Value.absent(),
    this.cfiEnd = const Value.absent(),
    this.selectedText = const Value.absent(),
    this.color = const Value.absent(),
    this.highlightType = const Value.absent(),
    this.pageIndex = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  HighlightsTableCompanion.insert({
    this.id = const Value.absent(),
    required int bookId,
    required String cfiStart,
    this.cfiEnd = const Value.absent(),
    required String selectedText,
    this.color = const Value.absent(),
    this.highlightType = const Value.absent(),
    this.pageIndex = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : bookId = Value(bookId),
        cfiStart = Value(cfiStart),
        selectedText = Value(selectedText);
  static Insertable<HighlightsTableData> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<String>? cfiStart,
    Expression<String>? cfiEnd,
    Expression<String>? selectedText,
    Expression<int>? color,
    Expression<String>? highlightType,
    Expression<int>? pageIndex,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (cfiStart != null) 'cfi_start': cfiStart,
      if (cfiEnd != null) 'cfi_end': cfiEnd,
      if (selectedText != null) 'selected_text': selectedText,
      if (color != null) 'color': color,
      if (highlightType != null) 'highlight_type': highlightType,
      if (pageIndex != null) 'page_index': pageIndex,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  HighlightsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookId,
      Value<String>? cfiStart,
      Value<String?>? cfiEnd,
      Value<String>? selectedText,
      Value<int>? color,
      Value<String>? highlightType,
      Value<int>? pageIndex,
      Value<DateTime>? createdAt}) {
    return HighlightsTableCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      cfiStart: cfiStart ?? this.cfiStart,
      cfiEnd: cfiEnd ?? this.cfiEnd,
      selectedText: selectedText ?? this.selectedText,
      color: color ?? this.color,
      highlightType: highlightType ?? this.highlightType,
      pageIndex: pageIndex ?? this.pageIndex,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (cfiStart.present) {
      map['cfi_start'] = Variable<String>(cfiStart.value);
    }
    if (cfiEnd.present) {
      map['cfi_end'] = Variable<String>(cfiEnd.value);
    }
    if (selectedText.present) {
      map['selected_text'] = Variable<String>(selectedText.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (highlightType.present) {
      map['highlight_type'] = Variable<String>(highlightType.value);
    }
    if (pageIndex.present) {
      map['page_index'] = Variable<int>(pageIndex.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HighlightsTableCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('cfiStart: $cfiStart, ')
          ..write('cfiEnd: $cfiEnd, ')
          ..write('selectedText: $selectedText, ')
          ..write('color: $color, ')
          ..write('highlightType: $highlightType, ')
          ..write('pageIndex: $pageIndex, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $NotesTableTable extends NotesTable
    with TableInfo<$NotesTableTable, NotesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _highlightIdMeta =
      const VerificationMeta('highlightId');
  @override
  late final GeneratedColumn<int> highlightId = GeneratedColumn<int>(
      'highlight_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES highlights (id) ON DELETE CASCADE'));
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, highlightId, content, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notes';
  @override
  VerificationContext validateIntegrity(Insertable<NotesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('highlight_id')) {
      context.handle(
          _highlightIdMeta,
          highlightId.isAcceptableOrUnknown(
              data['highlight_id']!, _highlightIdMeta));
    } else if (isInserting) {
      context.missing(_highlightIdMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NotesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NotesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      highlightId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}highlight_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $NotesTableTable createAlias(String alias) {
    return $NotesTableTable(attachedDatabase, alias);
  }
}

class NotesTableData extends DataClass implements Insertable<NotesTableData> {
  final int id;
  final int highlightId;
  final String content;
  final DateTime createdAt;
  final DateTime updatedAt;
  const NotesTableData(
      {required this.id,
      required this.highlightId,
      required this.content,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['highlight_id'] = Variable<int>(highlightId);
    map['content'] = Variable<String>(content);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  NotesTableCompanion toCompanion(bool nullToAbsent) {
    return NotesTableCompanion(
      id: Value(id),
      highlightId: Value(highlightId),
      content: Value(content),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory NotesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotesTableData(
      id: serializer.fromJson<int>(json['id']),
      highlightId: serializer.fromJson<int>(json['highlightId']),
      content: serializer.fromJson<String>(json['content']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'highlightId': serializer.toJson<int>(highlightId),
      'content': serializer.toJson<String>(content),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  NotesTableData copyWith(
          {int? id,
          int? highlightId,
          String? content,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      NotesTableData(
        id: id ?? this.id,
        highlightId: highlightId ?? this.highlightId,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  NotesTableData copyWithCompanion(NotesTableCompanion data) {
    return NotesTableData(
      id: data.id.present ? data.id.value : this.id,
      highlightId:
          data.highlightId.present ? data.highlightId.value : this.highlightId,
      content: data.content.present ? data.content.value : this.content,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NotesTableData(')
          ..write('id: $id, ')
          ..write('highlightId: $highlightId, ')
          ..write('content: $content, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, highlightId, content, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotesTableData &&
          other.id == this.id &&
          other.highlightId == this.highlightId &&
          other.content == this.content &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class NotesTableCompanion extends UpdateCompanion<NotesTableData> {
  final Value<int> id;
  final Value<int> highlightId;
  final Value<String> content;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const NotesTableCompanion({
    this.id = const Value.absent(),
    this.highlightId = const Value.absent(),
    this.content = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  NotesTableCompanion.insert({
    this.id = const Value.absent(),
    required int highlightId,
    required String content,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : highlightId = Value(highlightId),
        content = Value(content);
  static Insertable<NotesTableData> custom({
    Expression<int>? id,
    Expression<int>? highlightId,
    Expression<String>? content,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (highlightId != null) 'highlight_id': highlightId,
      if (content != null) 'content': content,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  NotesTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? highlightId,
      Value<String>? content,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return NotesTableCompanion(
      id: id ?? this.id,
      highlightId: highlightId ?? this.highlightId,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (highlightId.present) {
      map['highlight_id'] = Variable<int>(highlightId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesTableCompanion(')
          ..write('id: $id, ')
          ..write('highlightId: $highlightId, ')
          ..write('content: $content, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ReadingStatsTableTable extends ReadingStatsTable
    with TableInfo<$ReadingStatsTableTable, ReadingStatsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReadingStatsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES books (id) ON DELETE CASCADE'));
  static const VerificationMeta _sessionStartMeta =
      const VerificationMeta('sessionStart');
  @override
  late final GeneratedColumn<DateTime> sessionStart = GeneratedColumn<DateTime>(
      'session_start', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _sessionEndMeta =
      const VerificationMeta('sessionEnd');
  @override
  late final GeneratedColumn<DateTime> sessionEnd = GeneratedColumn<DateTime>(
      'session_end', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _pagesReadMeta =
      const VerificationMeta('pagesRead');
  @override
  late final GeneratedColumn<int> pagesRead = GeneratedColumn<int>(
      'pages_read', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _wordsReadMeta =
      const VerificationMeta('wordsRead');
  @override
  late final GeneratedColumn<int> wordsRead = GeneratedColumn<int>(
      'words_read', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _averageWpmMeta =
      const VerificationMeta('averageWpm');
  @override
  late final GeneratedColumn<double> averageWpm = GeneratedColumn<double>(
      'average_wpm', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        sessionStart,
        sessionEnd,
        pagesRead,
        wordsRead,
        averageWpm,
        date
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reading_stats';
  @override
  VerificationContext validateIntegrity(
      Insertable<ReadingStatsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('session_start')) {
      context.handle(
          _sessionStartMeta,
          sessionStart.isAcceptableOrUnknown(
              data['session_start']!, _sessionStartMeta));
    } else if (isInserting) {
      context.missing(_sessionStartMeta);
    }
    if (data.containsKey('session_end')) {
      context.handle(
          _sessionEndMeta,
          sessionEnd.isAcceptableOrUnknown(
              data['session_end']!, _sessionEndMeta));
    }
    if (data.containsKey('pages_read')) {
      context.handle(_pagesReadMeta,
          pagesRead.isAcceptableOrUnknown(data['pages_read']!, _pagesReadMeta));
    }
    if (data.containsKey('words_read')) {
      context.handle(_wordsReadMeta,
          wordsRead.isAcceptableOrUnknown(data['words_read']!, _wordsReadMeta));
    }
    if (data.containsKey('average_wpm')) {
      context.handle(
          _averageWpmMeta,
          averageWpm.isAcceptableOrUnknown(
              data['average_wpm']!, _averageWpmMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReadingStatsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReadingStatsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      sessionStart: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}session_start'])!,
      sessionEnd: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}session_end']),
      pagesRead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pages_read'])!,
      wordsRead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}words_read'])!,
      averageWpm: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}average_wpm'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
    );
  }

  @override
  $ReadingStatsTableTable createAlias(String alias) {
    return $ReadingStatsTableTable(attachedDatabase, alias);
  }
}

class ReadingStatsTableData extends DataClass
    implements Insertable<ReadingStatsTableData> {
  final int id;
  final int bookId;
  final DateTime sessionStart;
  final DateTime? sessionEnd;
  final int pagesRead;
  final int wordsRead;
  final double averageWpm;
  final DateTime date;
  const ReadingStatsTableData(
      {required this.id,
      required this.bookId,
      required this.sessionStart,
      this.sessionEnd,
      required this.pagesRead,
      required this.wordsRead,
      required this.averageWpm,
      required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['session_start'] = Variable<DateTime>(sessionStart);
    if (!nullToAbsent || sessionEnd != null) {
      map['session_end'] = Variable<DateTime>(sessionEnd);
    }
    map['pages_read'] = Variable<int>(pagesRead);
    map['words_read'] = Variable<int>(wordsRead);
    map['average_wpm'] = Variable<double>(averageWpm);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  ReadingStatsTableCompanion toCompanion(bool nullToAbsent) {
    return ReadingStatsTableCompanion(
      id: Value(id),
      bookId: Value(bookId),
      sessionStart: Value(sessionStart),
      sessionEnd: sessionEnd == null && nullToAbsent
          ? const Value.absent()
          : Value(sessionEnd),
      pagesRead: Value(pagesRead),
      wordsRead: Value(wordsRead),
      averageWpm: Value(averageWpm),
      date: Value(date),
    );
  }

  factory ReadingStatsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReadingStatsTableData(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      sessionStart: serializer.fromJson<DateTime>(json['sessionStart']),
      sessionEnd: serializer.fromJson<DateTime?>(json['sessionEnd']),
      pagesRead: serializer.fromJson<int>(json['pagesRead']),
      wordsRead: serializer.fromJson<int>(json['wordsRead']),
      averageWpm: serializer.fromJson<double>(json['averageWpm']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'sessionStart': serializer.toJson<DateTime>(sessionStart),
      'sessionEnd': serializer.toJson<DateTime?>(sessionEnd),
      'pagesRead': serializer.toJson<int>(pagesRead),
      'wordsRead': serializer.toJson<int>(wordsRead),
      'averageWpm': serializer.toJson<double>(averageWpm),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  ReadingStatsTableData copyWith(
          {int? id,
          int? bookId,
          DateTime? sessionStart,
          Value<DateTime?> sessionEnd = const Value.absent(),
          int? pagesRead,
          int? wordsRead,
          double? averageWpm,
          DateTime? date}) =>
      ReadingStatsTableData(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        sessionStart: sessionStart ?? this.sessionStart,
        sessionEnd: sessionEnd.present ? sessionEnd.value : this.sessionEnd,
        pagesRead: pagesRead ?? this.pagesRead,
        wordsRead: wordsRead ?? this.wordsRead,
        averageWpm: averageWpm ?? this.averageWpm,
        date: date ?? this.date,
      );
  ReadingStatsTableData copyWithCompanion(ReadingStatsTableCompanion data) {
    return ReadingStatsTableData(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      sessionStart: data.sessionStart.present
          ? data.sessionStart.value
          : this.sessionStart,
      sessionEnd:
          data.sessionEnd.present ? data.sessionEnd.value : this.sessionEnd,
      pagesRead: data.pagesRead.present ? data.pagesRead.value : this.pagesRead,
      wordsRead: data.wordsRead.present ? data.wordsRead.value : this.wordsRead,
      averageWpm:
          data.averageWpm.present ? data.averageWpm.value : this.averageWpm,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReadingStatsTableData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('sessionStart: $sessionStart, ')
          ..write('sessionEnd: $sessionEnd, ')
          ..write('pagesRead: $pagesRead, ')
          ..write('wordsRead: $wordsRead, ')
          ..write('averageWpm: $averageWpm, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bookId, sessionStart, sessionEnd,
      pagesRead, wordsRead, averageWpm, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReadingStatsTableData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.sessionStart == this.sessionStart &&
          other.sessionEnd == this.sessionEnd &&
          other.pagesRead == this.pagesRead &&
          other.wordsRead == this.wordsRead &&
          other.averageWpm == this.averageWpm &&
          other.date == this.date);
}

class ReadingStatsTableCompanion
    extends UpdateCompanion<ReadingStatsTableData> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<DateTime> sessionStart;
  final Value<DateTime?> sessionEnd;
  final Value<int> pagesRead;
  final Value<int> wordsRead;
  final Value<double> averageWpm;
  final Value<DateTime> date;
  const ReadingStatsTableCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.sessionStart = const Value.absent(),
    this.sessionEnd = const Value.absent(),
    this.pagesRead = const Value.absent(),
    this.wordsRead = const Value.absent(),
    this.averageWpm = const Value.absent(),
    this.date = const Value.absent(),
  });
  ReadingStatsTableCompanion.insert({
    this.id = const Value.absent(),
    required int bookId,
    required DateTime sessionStart,
    this.sessionEnd = const Value.absent(),
    this.pagesRead = const Value.absent(),
    this.wordsRead = const Value.absent(),
    this.averageWpm = const Value.absent(),
    this.date = const Value.absent(),
  })  : bookId = Value(bookId),
        sessionStart = Value(sessionStart);
  static Insertable<ReadingStatsTableData> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<DateTime>? sessionStart,
    Expression<DateTime>? sessionEnd,
    Expression<int>? pagesRead,
    Expression<int>? wordsRead,
    Expression<double>? averageWpm,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (sessionStart != null) 'session_start': sessionStart,
      if (sessionEnd != null) 'session_end': sessionEnd,
      if (pagesRead != null) 'pages_read': pagesRead,
      if (wordsRead != null) 'words_read': wordsRead,
      if (averageWpm != null) 'average_wpm': averageWpm,
      if (date != null) 'date': date,
    });
  }

  ReadingStatsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookId,
      Value<DateTime>? sessionStart,
      Value<DateTime?>? sessionEnd,
      Value<int>? pagesRead,
      Value<int>? wordsRead,
      Value<double>? averageWpm,
      Value<DateTime>? date}) {
    return ReadingStatsTableCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      sessionStart: sessionStart ?? this.sessionStart,
      sessionEnd: sessionEnd ?? this.sessionEnd,
      pagesRead: pagesRead ?? this.pagesRead,
      wordsRead: wordsRead ?? this.wordsRead,
      averageWpm: averageWpm ?? this.averageWpm,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (sessionStart.present) {
      map['session_start'] = Variable<DateTime>(sessionStart.value);
    }
    if (sessionEnd.present) {
      map['session_end'] = Variable<DateTime>(sessionEnd.value);
    }
    if (pagesRead.present) {
      map['pages_read'] = Variable<int>(pagesRead.value);
    }
    if (wordsRead.present) {
      map['words_read'] = Variable<int>(wordsRead.value);
    }
    if (averageWpm.present) {
      map['average_wpm'] = Variable<double>(averageWpm.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadingStatsTableCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('sessionStart: $sessionStart, ')
          ..write('sessionEnd: $sessionEnd, ')
          ..write('pagesRead: $pagesRead, ')
          ..write('wordsRead: $wordsRead, ')
          ..write('averageWpm: $averageWpm, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $CollectionsTableTable extends CollectionsTable
    with TableInfo<$CollectionsTableTable, CollectionsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _coverPathMeta =
      const VerificationMeta('coverPath');
  @override
  late final GeneratedColumn<String> coverPath = GeneratedColumn<String>(
      'cover_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, description, coverPath, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'collections';
  @override
  VerificationContext validateIntegrity(
      Insertable<CollectionsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('cover_path')) {
      context.handle(_coverPathMeta,
          coverPath.isAcceptableOrUnknown(data['cover_path']!, _coverPathMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      coverPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cover_path']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CollectionsTableTable createAlias(String alias) {
    return $CollectionsTableTable(attachedDatabase, alias);
  }
}

class CollectionsTableData extends DataClass
    implements Insertable<CollectionsTableData> {
  final int id;
  final String name;
  final String? description;
  final String? coverPath;
  final DateTime createdAt;
  const CollectionsTableData(
      {required this.id,
      required this.name,
      this.description,
      this.coverPath,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || coverPath != null) {
      map['cover_path'] = Variable<String>(coverPath);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CollectionsTableCompanion toCompanion(bool nullToAbsent) {
    return CollectionsTableCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      coverPath: coverPath == null && nullToAbsent
          ? const Value.absent()
          : Value(coverPath),
      createdAt: Value(createdAt),
    );
  }

  factory CollectionsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CollectionsTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      coverPath: serializer.fromJson<String?>(json['coverPath']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'coverPath': serializer.toJson<String?>(coverPath),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CollectionsTableData copyWith(
          {int? id,
          String? name,
          Value<String?> description = const Value.absent(),
          Value<String?> coverPath = const Value.absent(),
          DateTime? createdAt}) =>
      CollectionsTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description.present ? description.value : this.description,
        coverPath: coverPath.present ? coverPath.value : this.coverPath,
        createdAt: createdAt ?? this.createdAt,
      );
  CollectionsTableData copyWithCompanion(CollectionsTableCompanion data) {
    return CollectionsTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
      coverPath: data.coverPath.present ? data.coverPath.value : this.coverPath,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CollectionsTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('coverPath: $coverPath, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, coverPath, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollectionsTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.coverPath == this.coverPath &&
          other.createdAt == this.createdAt);
}

class CollectionsTableCompanion extends UpdateCompanion<CollectionsTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<String?> coverPath;
  final Value<DateTime> createdAt;
  const CollectionsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.coverPath = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  CollectionsTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
    this.coverPath = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : name = Value(name);
  static Insertable<CollectionsTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? coverPath,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (coverPath != null) 'cover_path': coverPath,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CollectionsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? description,
      Value<String?>? coverPath,
      Value<DateTime>? createdAt}) {
    return CollectionsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      coverPath: coverPath ?? this.coverPath,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (coverPath.present) {
      map['cover_path'] = Variable<String>(coverPath.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('coverPath: $coverPath, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $BookCollectionsTableTable extends BookCollectionsTable
    with TableInfo<$BookCollectionsTableTable, BookCollectionsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookCollectionsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES books (id) ON DELETE CASCADE'));
  static const VerificationMeta _collectionIdMeta =
      const VerificationMeta('collectionId');
  @override
  late final GeneratedColumn<int> collectionId = GeneratedColumn<int>(
      'collection_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES collections (id) ON DELETE CASCADE'));
  @override
  List<GeneratedColumn> get $columns => [bookId, collectionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'book_collections';
  @override
  VerificationContext validateIntegrity(
      Insertable<BookCollectionsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('collection_id')) {
      context.handle(
          _collectionIdMeta,
          collectionId.isAcceptableOrUnknown(
              data['collection_id']!, _collectionIdMeta));
    } else if (isInserting) {
      context.missing(_collectionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {bookId, collectionId};
  @override
  BookCollectionsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookCollectionsTableData(
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      collectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}collection_id'])!,
    );
  }

  @override
  $BookCollectionsTableTable createAlias(String alias) {
    return $BookCollectionsTableTable(attachedDatabase, alias);
  }
}

class BookCollectionsTableData extends DataClass
    implements Insertable<BookCollectionsTableData> {
  final int bookId;
  final int collectionId;
  const BookCollectionsTableData(
      {required this.bookId, required this.collectionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['book_id'] = Variable<int>(bookId);
    map['collection_id'] = Variable<int>(collectionId);
    return map;
  }

  BookCollectionsTableCompanion toCompanion(bool nullToAbsent) {
    return BookCollectionsTableCompanion(
      bookId: Value(bookId),
      collectionId: Value(collectionId),
    );
  }

  factory BookCollectionsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookCollectionsTableData(
      bookId: serializer.fromJson<int>(json['bookId']),
      collectionId: serializer.fromJson<int>(json['collectionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bookId': serializer.toJson<int>(bookId),
      'collectionId': serializer.toJson<int>(collectionId),
    };
  }

  BookCollectionsTableData copyWith({int? bookId, int? collectionId}) =>
      BookCollectionsTableData(
        bookId: bookId ?? this.bookId,
        collectionId: collectionId ?? this.collectionId,
      );
  BookCollectionsTableData copyWithCompanion(
      BookCollectionsTableCompanion data) {
    return BookCollectionsTableData(
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      collectionId: data.collectionId.present
          ? data.collectionId.value
          : this.collectionId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BookCollectionsTableData(')
          ..write('bookId: $bookId, ')
          ..write('collectionId: $collectionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(bookId, collectionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookCollectionsTableData &&
          other.bookId == this.bookId &&
          other.collectionId == this.collectionId);
}

class BookCollectionsTableCompanion
    extends UpdateCompanion<BookCollectionsTableData> {
  final Value<int> bookId;
  final Value<int> collectionId;
  final Value<int> rowid;
  const BookCollectionsTableCompanion({
    this.bookId = const Value.absent(),
    this.collectionId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BookCollectionsTableCompanion.insert({
    required int bookId,
    required int collectionId,
    this.rowid = const Value.absent(),
  })  : bookId = Value(bookId),
        collectionId = Value(collectionId);
  static Insertable<BookCollectionsTableData> custom({
    Expression<int>? bookId,
    Expression<int>? collectionId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (bookId != null) 'book_id': bookId,
      if (collectionId != null) 'collection_id': collectionId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BookCollectionsTableCompanion copyWith(
      {Value<int>? bookId, Value<int>? collectionId, Value<int>? rowid}) {
    return BookCollectionsTableCompanion(
      bookId: bookId ?? this.bookId,
      collectionId: collectionId ?? this.collectionId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (collectionId.present) {
      map['collection_id'] = Variable<int>(collectionId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookCollectionsTableCompanion(')
          ..write('bookId: $bookId, ')
          ..write('collectionId: $collectionId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TagsTableTable extends TagsTable
    with TableInfo<$TagsTableTable, TagsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
      'color', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0xFF4CAF50));
  @override
  List<GeneratedColumn> get $columns => [id, name, color];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tags';
  @override
  VerificationContext validateIntegrity(Insertable<TagsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TagsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TagsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}color'])!,
    );
  }

  @override
  $TagsTableTable createAlias(String alias) {
    return $TagsTableTable(attachedDatabase, alias);
  }
}

class TagsTableData extends DataClass implements Insertable<TagsTableData> {
  final int id;
  final String name;
  final int color;
  const TagsTableData(
      {required this.id, required this.name, required this.color});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['color'] = Variable<int>(color);
    return map;
  }

  TagsTableCompanion toCompanion(bool nullToAbsent) {
    return TagsTableCompanion(
      id: Value(id),
      name: Value(name),
      color: Value(color),
    );
  }

  factory TagsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TagsTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<int>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<int>(color),
    };
  }

  TagsTableData copyWith({int? id, String? name, int? color}) => TagsTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
      );
  TagsTableData copyWithCompanion(TagsTableCompanion data) {
    return TagsTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      color: data.color.present ? data.color.value : this.color,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TagsTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TagsTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color);
}

class TagsTableCompanion extends UpdateCompanion<TagsTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> color;
  const TagsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
  });
  TagsTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.color = const Value.absent(),
  }) : name = Value(name);
  static Insertable<TagsTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? color,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
    });
  }

  TagsTableCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<int>? color}) {
    return TagsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

class $BookTagsTableTable extends BookTagsTable
    with TableInfo<$BookTagsTableTable, BookTagsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookTagsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES books (id) ON DELETE CASCADE'));
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
      'tag_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES tags (id) ON DELETE CASCADE'));
  @override
  List<GeneratedColumn> get $columns => [bookId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'book_tags';
  @override
  VerificationContext validateIntegrity(Insertable<BookTagsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {bookId, tagId};
  @override
  BookTagsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookTagsTableData(
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      tagId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tag_id'])!,
    );
  }

  @override
  $BookTagsTableTable createAlias(String alias) {
    return $BookTagsTableTable(attachedDatabase, alias);
  }
}

class BookTagsTableData extends DataClass
    implements Insertable<BookTagsTableData> {
  final int bookId;
  final int tagId;
  const BookTagsTableData({required this.bookId, required this.tagId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['book_id'] = Variable<int>(bookId);
    map['tag_id'] = Variable<int>(tagId);
    return map;
  }

  BookTagsTableCompanion toCompanion(bool nullToAbsent) {
    return BookTagsTableCompanion(
      bookId: Value(bookId),
      tagId: Value(tagId),
    );
  }

  factory BookTagsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookTagsTableData(
      bookId: serializer.fromJson<int>(json['bookId']),
      tagId: serializer.fromJson<int>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bookId': serializer.toJson<int>(bookId),
      'tagId': serializer.toJson<int>(tagId),
    };
  }

  BookTagsTableData copyWith({int? bookId, int? tagId}) => BookTagsTableData(
        bookId: bookId ?? this.bookId,
        tagId: tagId ?? this.tagId,
      );
  BookTagsTableData copyWithCompanion(BookTagsTableCompanion data) {
    return BookTagsTableData(
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BookTagsTableData(')
          ..write('bookId: $bookId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(bookId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookTagsTableData &&
          other.bookId == this.bookId &&
          other.tagId == this.tagId);
}

class BookTagsTableCompanion extends UpdateCompanion<BookTagsTableData> {
  final Value<int> bookId;
  final Value<int> tagId;
  final Value<int> rowid;
  const BookTagsTableCompanion({
    this.bookId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BookTagsTableCompanion.insert({
    required int bookId,
    required int tagId,
    this.rowid = const Value.absent(),
  })  : bookId = Value(bookId),
        tagId = Value(tagId);
  static Insertable<BookTagsTableData> custom({
    Expression<int>? bookId,
    Expression<int>? tagId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (bookId != null) 'book_id': bookId,
      if (tagId != null) 'tag_id': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BookTagsTableCompanion copyWith(
      {Value<int>? bookId, Value<int>? tagId, Value<int>? rowid}) {
    return BookTagsTableCompanion(
      bookId: bookId ?? this.bookId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookTagsTableCompanion(')
          ..write('bookId: $bookId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BooksTableTable booksTable = $BooksTableTable(this);
  late final $BookmarksTableTable bookmarksTable = $BookmarksTableTable(this);
  late final $HighlightsTableTable highlightsTable =
      $HighlightsTableTable(this);
  late final $NotesTableTable notesTable = $NotesTableTable(this);
  late final $ReadingStatsTableTable readingStatsTable =
      $ReadingStatsTableTable(this);
  late final $CollectionsTableTable collectionsTable =
      $CollectionsTableTable(this);
  late final $BookCollectionsTableTable bookCollectionsTable =
      $BookCollectionsTableTable(this);
  late final $TagsTableTable tagsTable = $TagsTableTable(this);
  late final $BookTagsTableTable bookTagsTable = $BookTagsTableTable(this);
  late final BooksDao booksDao = BooksDao(this as AppDatabase);
  late final BookmarksDao bookmarksDao = BookmarksDao(this as AppDatabase);
  late final HighlightsDao highlightsDao = HighlightsDao(this as AppDatabase);
  late final StatsDao statsDao = StatsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        booksTable,
        bookmarksTable,
        highlightsTable,
        notesTable,
        readingStatsTable,
        collectionsTable,
        bookCollectionsTable,
        tagsTable,
        bookTagsTable
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('books',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('bookmarks', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('books',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('highlights', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('highlights',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('notes', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('books',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('reading_stats', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('books',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('book_collections', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('collections',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('book_collections', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('books',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('book_tags', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('tags',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('book_tags', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
}

typedef $$BooksTableTableCreateCompanionBuilder = BooksTableCompanion Function({
  Value<int> id,
  required String title,
  Value<String> author,
  required String filePath,
  required String format,
  Value<String?> coverPath,
  Value<int> totalPages,
  Value<int> currentPage,
  Value<String?> currentCfi,
  Value<double> readingProgress,
  Value<DateTime> dateAdded,
  Value<DateTime?> lastOpened,
  Value<int> totalReadingSeconds,
  Value<bool> isFinished,
  Value<String?> description,
  Value<String?> language,
  Value<String?> publisher,
  Value<String?> isbn,
  Value<DateTime?> publishDate,
  Value<int> fileSize,
});
typedef $$BooksTableTableUpdateCompanionBuilder = BooksTableCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> author,
  Value<String> filePath,
  Value<String> format,
  Value<String?> coverPath,
  Value<int> totalPages,
  Value<int> currentPage,
  Value<String?> currentCfi,
  Value<double> readingProgress,
  Value<DateTime> dateAdded,
  Value<DateTime?> lastOpened,
  Value<int> totalReadingSeconds,
  Value<bool> isFinished,
  Value<String?> description,
  Value<String?> language,
  Value<String?> publisher,
  Value<String?> isbn,
  Value<DateTime?> publishDate,
  Value<int> fileSize,
});

class $$BooksTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BooksTableTable,
    BooksTableData,
    $$BooksTableTableFilterComposer,
    $$BooksTableTableOrderingComposer,
    $$BooksTableTableCreateCompanionBuilder,
    $$BooksTableTableUpdateCompanionBuilder> {
  $$BooksTableTableTableManager(_$AppDatabase db, $BooksTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BooksTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BooksTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> author = const Value.absent(),
            Value<String> filePath = const Value.absent(),
            Value<String> format = const Value.absent(),
            Value<String?> coverPath = const Value.absent(),
            Value<int> totalPages = const Value.absent(),
            Value<int> currentPage = const Value.absent(),
            Value<String?> currentCfi = const Value.absent(),
            Value<double> readingProgress = const Value.absent(),
            Value<DateTime> dateAdded = const Value.absent(),
            Value<DateTime?> lastOpened = const Value.absent(),
            Value<int> totalReadingSeconds = const Value.absent(),
            Value<bool> isFinished = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> language = const Value.absent(),
            Value<String?> publisher = const Value.absent(),
            Value<String?> isbn = const Value.absent(),
            Value<DateTime?> publishDate = const Value.absent(),
            Value<int> fileSize = const Value.absent(),
          }) =>
              BooksTableCompanion(
            id: id,
            title: title,
            author: author,
            filePath: filePath,
            format: format,
            coverPath: coverPath,
            totalPages: totalPages,
            currentPage: currentPage,
            currentCfi: currentCfi,
            readingProgress: readingProgress,
            dateAdded: dateAdded,
            lastOpened: lastOpened,
            totalReadingSeconds: totalReadingSeconds,
            isFinished: isFinished,
            description: description,
            language: language,
            publisher: publisher,
            isbn: isbn,
            publishDate: publishDate,
            fileSize: fileSize,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            Value<String> author = const Value.absent(),
            required String filePath,
            required String format,
            Value<String?> coverPath = const Value.absent(),
            Value<int> totalPages = const Value.absent(),
            Value<int> currentPage = const Value.absent(),
            Value<String?> currentCfi = const Value.absent(),
            Value<double> readingProgress = const Value.absent(),
            Value<DateTime> dateAdded = const Value.absent(),
            Value<DateTime?> lastOpened = const Value.absent(),
            Value<int> totalReadingSeconds = const Value.absent(),
            Value<bool> isFinished = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> language = const Value.absent(),
            Value<String?> publisher = const Value.absent(),
            Value<String?> isbn = const Value.absent(),
            Value<DateTime?> publishDate = const Value.absent(),
            Value<int> fileSize = const Value.absent(),
          }) =>
              BooksTableCompanion.insert(
            id: id,
            title: title,
            author: author,
            filePath: filePath,
            format: format,
            coverPath: coverPath,
            totalPages: totalPages,
            currentPage: currentPage,
            currentCfi: currentCfi,
            readingProgress: readingProgress,
            dateAdded: dateAdded,
            lastOpened: lastOpened,
            totalReadingSeconds: totalReadingSeconds,
            isFinished: isFinished,
            description: description,
            language: language,
            publisher: publisher,
            isbn: isbn,
            publishDate: publishDate,
            fileSize: fileSize,
          ),
        ));
}

class $$BooksTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BooksTableTable> {
  $$BooksTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get author => $state.composableBuilder(
      column: $state.table.author,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get filePath => $state.composableBuilder(
      column: $state.table.filePath,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get format => $state.composableBuilder(
      column: $state.table.format,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get coverPath => $state.composableBuilder(
      column: $state.table.coverPath,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get totalPages => $state.composableBuilder(
      column: $state.table.totalPages,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get currentPage => $state.composableBuilder(
      column: $state.table.currentPage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get currentCfi => $state.composableBuilder(
      column: $state.table.currentCfi,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get readingProgress => $state.composableBuilder(
      column: $state.table.readingProgress,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get lastOpened => $state.composableBuilder(
      column: $state.table.lastOpened,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get totalReadingSeconds => $state.composableBuilder(
      column: $state.table.totalReadingSeconds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isFinished => $state.composableBuilder(
      column: $state.table.isFinished,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get publisher => $state.composableBuilder(
      column: $state.table.publisher,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get isbn => $state.composableBuilder(
      column: $state.table.isbn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get publishDate => $state.composableBuilder(
      column: $state.table.publishDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get fileSize => $state.composableBuilder(
      column: $state.table.fileSize,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter bookmarksTableRefs(
      ComposableFilter Function($$BookmarksTableTableFilterComposer f) f) {
    final $$BookmarksTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.bookmarksTable,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder, parentComposers) =>
            $$BookmarksTableTableFilterComposer(ComposerState($state.db,
                $state.db.bookmarksTable, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter highlightsTableRefs(
      ComposableFilter Function($$HighlightsTableTableFilterComposer f) f) {
    final $$HighlightsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.highlightsTable,
            getReferencedColumn: (t) => t.bookId,
            builder: (joinBuilder, parentComposers) =>
                $$HighlightsTableTableFilterComposer(ComposerState($state.db,
                    $state.db.highlightsTable, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter readingStatsTableRefs(
      ComposableFilter Function($$ReadingStatsTableTableFilterComposer f) f) {
    final $$ReadingStatsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.readingStatsTable,
            getReferencedColumn: (t) => t.bookId,
            builder: (joinBuilder, parentComposers) =>
                $$ReadingStatsTableTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.readingStatsTable,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }

  ComposableFilter bookCollectionsTableRefs(
      ComposableFilter Function($$BookCollectionsTableTableFilterComposer f)
          f) {
    final $$BookCollectionsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.bookCollectionsTable,
            getReferencedColumn: (t) => t.bookId,
            builder: (joinBuilder, parentComposers) =>
                $$BookCollectionsTableTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.bookCollectionsTable,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }

  ComposableFilter bookTagsTableRefs(
      ComposableFilter Function($$BookTagsTableTableFilterComposer f) f) {
    final $$BookTagsTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.bookTagsTable,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder, parentComposers) =>
            $$BookTagsTableTableFilterComposer(ComposerState($state.db,
                $state.db.bookTagsTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$BooksTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BooksTableTable> {
  $$BooksTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get author => $state.composableBuilder(
      column: $state.table.author,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get filePath => $state.composableBuilder(
      column: $state.table.filePath,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get format => $state.composableBuilder(
      column: $state.table.format,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get coverPath => $state.composableBuilder(
      column: $state.table.coverPath,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get totalPages => $state.composableBuilder(
      column: $state.table.totalPages,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get currentPage => $state.composableBuilder(
      column: $state.table.currentPage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get currentCfi => $state.composableBuilder(
      column: $state.table.currentCfi,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get readingProgress => $state.composableBuilder(
      column: $state.table.readingProgress,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get lastOpened => $state.composableBuilder(
      column: $state.table.lastOpened,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get totalReadingSeconds => $state.composableBuilder(
      column: $state.table.totalReadingSeconds,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isFinished => $state.composableBuilder(
      column: $state.table.isFinished,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get publisher => $state.composableBuilder(
      column: $state.table.publisher,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get isbn => $state.composableBuilder(
      column: $state.table.isbn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get publishDate => $state.composableBuilder(
      column: $state.table.publishDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get fileSize => $state.composableBuilder(
      column: $state.table.fileSize,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$BookmarksTableTableCreateCompanionBuilder = BookmarksTableCompanion
    Function({
  Value<int> id,
  required int bookId,
  required int pageIndex,
  Value<String?> cfi,
  Value<String?> title,
  Value<String?> excerpt,
  Value<DateTime> createdAt,
});
typedef $$BookmarksTableTableUpdateCompanionBuilder = BookmarksTableCompanion
    Function({
  Value<int> id,
  Value<int> bookId,
  Value<int> pageIndex,
  Value<String?> cfi,
  Value<String?> title,
  Value<String?> excerpt,
  Value<DateTime> createdAt,
});

class $$BookmarksTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookmarksTableTable,
    BookmarksTableData,
    $$BookmarksTableTableFilterComposer,
    $$BookmarksTableTableOrderingComposer,
    $$BookmarksTableTableCreateCompanionBuilder,
    $$BookmarksTableTableUpdateCompanionBuilder> {
  $$BookmarksTableTableTableManager(
      _$AppDatabase db, $BookmarksTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BookmarksTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BookmarksTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> bookId = const Value.absent(),
            Value<int> pageIndex = const Value.absent(),
            Value<String?> cfi = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String?> excerpt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              BookmarksTableCompanion(
            id: id,
            bookId: bookId,
            pageIndex: pageIndex,
            cfi: cfi,
            title: title,
            excerpt: excerpt,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int bookId,
            required int pageIndex,
            Value<String?> cfi = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String?> excerpt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              BookmarksTableCompanion.insert(
            id: id,
            bookId: bookId,
            pageIndex: pageIndex,
            cfi: cfi,
            title: title,
            excerpt: excerpt,
            createdAt: createdAt,
          ),
        ));
}

class $$BookmarksTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BookmarksTableTable> {
  $$BookmarksTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get pageIndex => $state.composableBuilder(
      column: $state.table.pageIndex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cfi => $state.composableBuilder(
      column: $state.table.cfi,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get excerpt => $state.composableBuilder(
      column: $state.table.excerpt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$BooksTableTableFilterComposer get bookId {
    final $$BooksTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableFilterComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$BookmarksTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BookmarksTableTable> {
  $$BookmarksTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get pageIndex => $state.composableBuilder(
      column: $state.table.pageIndex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cfi => $state.composableBuilder(
      column: $state.table.cfi,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get excerpt => $state.composableBuilder(
      column: $state.table.excerpt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$BooksTableTableOrderingComposer get bookId {
    final $$BooksTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableOrderingComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$HighlightsTableTableCreateCompanionBuilder = HighlightsTableCompanion
    Function({
  Value<int> id,
  required int bookId,
  required String cfiStart,
  Value<String?> cfiEnd,
  required String selectedText,
  Value<int> color,
  Value<String> highlightType,
  Value<int> pageIndex,
  Value<DateTime> createdAt,
});
typedef $$HighlightsTableTableUpdateCompanionBuilder = HighlightsTableCompanion
    Function({
  Value<int> id,
  Value<int> bookId,
  Value<String> cfiStart,
  Value<String?> cfiEnd,
  Value<String> selectedText,
  Value<int> color,
  Value<String> highlightType,
  Value<int> pageIndex,
  Value<DateTime> createdAt,
});

class $$HighlightsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HighlightsTableTable,
    HighlightsTableData,
    $$HighlightsTableTableFilterComposer,
    $$HighlightsTableTableOrderingComposer,
    $$HighlightsTableTableCreateCompanionBuilder,
    $$HighlightsTableTableUpdateCompanionBuilder> {
  $$HighlightsTableTableTableManager(
      _$AppDatabase db, $HighlightsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$HighlightsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$HighlightsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> bookId = const Value.absent(),
            Value<String> cfiStart = const Value.absent(),
            Value<String?> cfiEnd = const Value.absent(),
            Value<String> selectedText = const Value.absent(),
            Value<int> color = const Value.absent(),
            Value<String> highlightType = const Value.absent(),
            Value<int> pageIndex = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              HighlightsTableCompanion(
            id: id,
            bookId: bookId,
            cfiStart: cfiStart,
            cfiEnd: cfiEnd,
            selectedText: selectedText,
            color: color,
            highlightType: highlightType,
            pageIndex: pageIndex,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int bookId,
            required String cfiStart,
            Value<String?> cfiEnd = const Value.absent(),
            required String selectedText,
            Value<int> color = const Value.absent(),
            Value<String> highlightType = const Value.absent(),
            Value<int> pageIndex = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              HighlightsTableCompanion.insert(
            id: id,
            bookId: bookId,
            cfiStart: cfiStart,
            cfiEnd: cfiEnd,
            selectedText: selectedText,
            color: color,
            highlightType: highlightType,
            pageIndex: pageIndex,
            createdAt: createdAt,
          ),
        ));
}

class $$HighlightsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $HighlightsTableTable> {
  $$HighlightsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cfiStart => $state.composableBuilder(
      column: $state.table.cfiStart,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cfiEnd => $state.composableBuilder(
      column: $state.table.cfiEnd,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get selectedText => $state.composableBuilder(
      column: $state.table.selectedText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get highlightType => $state.composableBuilder(
      column: $state.table.highlightType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get pageIndex => $state.composableBuilder(
      column: $state.table.pageIndex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$BooksTableTableFilterComposer get bookId {
    final $$BooksTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableFilterComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter notesTableRefs(
      ComposableFilter Function($$NotesTableTableFilterComposer f) f) {
    final $$NotesTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.notesTable,
        getReferencedColumn: (t) => t.highlightId,
        builder: (joinBuilder, parentComposers) =>
            $$NotesTableTableFilterComposer(ComposerState($state.db,
                $state.db.notesTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$HighlightsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $HighlightsTableTable> {
  $$HighlightsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cfiStart => $state.composableBuilder(
      column: $state.table.cfiStart,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cfiEnd => $state.composableBuilder(
      column: $state.table.cfiEnd,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get selectedText => $state.composableBuilder(
      column: $state.table.selectedText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get highlightType => $state.composableBuilder(
      column: $state.table.highlightType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get pageIndex => $state.composableBuilder(
      column: $state.table.pageIndex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$BooksTableTableOrderingComposer get bookId {
    final $$BooksTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableOrderingComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$NotesTableTableCreateCompanionBuilder = NotesTableCompanion Function({
  Value<int> id,
  required int highlightId,
  required String content,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});
typedef $$NotesTableTableUpdateCompanionBuilder = NotesTableCompanion Function({
  Value<int> id,
  Value<int> highlightId,
  Value<String> content,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});

class $$NotesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NotesTableTable,
    NotesTableData,
    $$NotesTableTableFilterComposer,
    $$NotesTableTableOrderingComposer,
    $$NotesTableTableCreateCompanionBuilder,
    $$NotesTableTableUpdateCompanionBuilder> {
  $$NotesTableTableTableManager(_$AppDatabase db, $NotesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$NotesTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$NotesTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> highlightId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              NotesTableCompanion(
            id: id,
            highlightId: highlightId,
            content: content,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int highlightId,
            required String content,
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              NotesTableCompanion.insert(
            id: id,
            highlightId: highlightId,
            content: content,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
        ));
}

class $$NotesTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $NotesTableTable> {
  $$NotesTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$HighlightsTableTableFilterComposer get highlightId {
    final $$HighlightsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.highlightId,
            referencedTable: $state.db.highlightsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$HighlightsTableTableFilterComposer(ComposerState($state.db,
                    $state.db.highlightsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$NotesTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $NotesTableTable> {
  $$NotesTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$HighlightsTableTableOrderingComposer get highlightId {
    final $$HighlightsTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.highlightId,
            referencedTable: $state.db.highlightsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$HighlightsTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.highlightsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$ReadingStatsTableTableCreateCompanionBuilder
    = ReadingStatsTableCompanion Function({
  Value<int> id,
  required int bookId,
  required DateTime sessionStart,
  Value<DateTime?> sessionEnd,
  Value<int> pagesRead,
  Value<int> wordsRead,
  Value<double> averageWpm,
  Value<DateTime> date,
});
typedef $$ReadingStatsTableTableUpdateCompanionBuilder
    = ReadingStatsTableCompanion Function({
  Value<int> id,
  Value<int> bookId,
  Value<DateTime> sessionStart,
  Value<DateTime?> sessionEnd,
  Value<int> pagesRead,
  Value<int> wordsRead,
  Value<double> averageWpm,
  Value<DateTime> date,
});

class $$ReadingStatsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReadingStatsTableTable,
    ReadingStatsTableData,
    $$ReadingStatsTableTableFilterComposer,
    $$ReadingStatsTableTableOrderingComposer,
    $$ReadingStatsTableTableCreateCompanionBuilder,
    $$ReadingStatsTableTableUpdateCompanionBuilder> {
  $$ReadingStatsTableTableTableManager(
      _$AppDatabase db, $ReadingStatsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ReadingStatsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$ReadingStatsTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> bookId = const Value.absent(),
            Value<DateTime> sessionStart = const Value.absent(),
            Value<DateTime?> sessionEnd = const Value.absent(),
            Value<int> pagesRead = const Value.absent(),
            Value<int> wordsRead = const Value.absent(),
            Value<double> averageWpm = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
          }) =>
              ReadingStatsTableCompanion(
            id: id,
            bookId: bookId,
            sessionStart: sessionStart,
            sessionEnd: sessionEnd,
            pagesRead: pagesRead,
            wordsRead: wordsRead,
            averageWpm: averageWpm,
            date: date,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int bookId,
            required DateTime sessionStart,
            Value<DateTime?> sessionEnd = const Value.absent(),
            Value<int> pagesRead = const Value.absent(),
            Value<int> wordsRead = const Value.absent(),
            Value<double> averageWpm = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
          }) =>
              ReadingStatsTableCompanion.insert(
            id: id,
            bookId: bookId,
            sessionStart: sessionStart,
            sessionEnd: sessionEnd,
            pagesRead: pagesRead,
            wordsRead: wordsRead,
            averageWpm: averageWpm,
            date: date,
          ),
        ));
}

class $$ReadingStatsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ReadingStatsTableTable> {
  $$ReadingStatsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get sessionStart => $state.composableBuilder(
      column: $state.table.sessionStart,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get sessionEnd => $state.composableBuilder(
      column: $state.table.sessionEnd,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get pagesRead => $state.composableBuilder(
      column: $state.table.pagesRead,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get wordsRead => $state.composableBuilder(
      column: $state.table.wordsRead,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get averageWpm => $state.composableBuilder(
      column: $state.table.averageWpm,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$BooksTableTableFilterComposer get bookId {
    final $$BooksTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableFilterComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$ReadingStatsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ReadingStatsTableTable> {
  $$ReadingStatsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get sessionStart => $state.composableBuilder(
      column: $state.table.sessionStart,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get sessionEnd => $state.composableBuilder(
      column: $state.table.sessionEnd,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get pagesRead => $state.composableBuilder(
      column: $state.table.pagesRead,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get wordsRead => $state.composableBuilder(
      column: $state.table.wordsRead,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get averageWpm => $state.composableBuilder(
      column: $state.table.averageWpm,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$BooksTableTableOrderingComposer get bookId {
    final $$BooksTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableOrderingComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$CollectionsTableTableCreateCompanionBuilder
    = CollectionsTableCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> description,
  Value<String?> coverPath,
  Value<DateTime> createdAt,
});
typedef $$CollectionsTableTableUpdateCompanionBuilder
    = CollectionsTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> description,
  Value<String?> coverPath,
  Value<DateTime> createdAt,
});

class $$CollectionsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CollectionsTableTable,
    CollectionsTableData,
    $$CollectionsTableTableFilterComposer,
    $$CollectionsTableTableOrderingComposer,
    $$CollectionsTableTableCreateCompanionBuilder,
    $$CollectionsTableTableUpdateCompanionBuilder> {
  $$CollectionsTableTableTableManager(
      _$AppDatabase db, $CollectionsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CollectionsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CollectionsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> coverPath = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              CollectionsTableCompanion(
            id: id,
            name: name,
            description: description,
            coverPath: coverPath,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> description = const Value.absent(),
            Value<String?> coverPath = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              CollectionsTableCompanion.insert(
            id: id,
            name: name,
            description: description,
            coverPath: coverPath,
            createdAt: createdAt,
          ),
        ));
}

class $$CollectionsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CollectionsTableTable> {
  $$CollectionsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get coverPath => $state.composableBuilder(
      column: $state.table.coverPath,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter bookCollectionsTableRefs(
      ComposableFilter Function($$BookCollectionsTableTableFilterComposer f)
          f) {
    final $$BookCollectionsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.bookCollectionsTable,
            getReferencedColumn: (t) => t.collectionId,
            builder: (joinBuilder, parentComposers) =>
                $$BookCollectionsTableTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.bookCollectionsTable,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }
}

class $$CollectionsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CollectionsTableTable> {
  $$CollectionsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get coverPath => $state.composableBuilder(
      column: $state.table.coverPath,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$BookCollectionsTableTableCreateCompanionBuilder
    = BookCollectionsTableCompanion Function({
  required int bookId,
  required int collectionId,
  Value<int> rowid,
});
typedef $$BookCollectionsTableTableUpdateCompanionBuilder
    = BookCollectionsTableCompanion Function({
  Value<int> bookId,
  Value<int> collectionId,
  Value<int> rowid,
});

class $$BookCollectionsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookCollectionsTableTable,
    BookCollectionsTableData,
    $$BookCollectionsTableTableFilterComposer,
    $$BookCollectionsTableTableOrderingComposer,
    $$BookCollectionsTableTableCreateCompanionBuilder,
    $$BookCollectionsTableTableUpdateCompanionBuilder> {
  $$BookCollectionsTableTableTableManager(
      _$AppDatabase db, $BookCollectionsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$BookCollectionsTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$BookCollectionsTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> bookId = const Value.absent(),
            Value<int> collectionId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BookCollectionsTableCompanion(
            bookId: bookId,
            collectionId: collectionId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int bookId,
            required int collectionId,
            Value<int> rowid = const Value.absent(),
          }) =>
              BookCollectionsTableCompanion.insert(
            bookId: bookId,
            collectionId: collectionId,
            rowid: rowid,
          ),
        ));
}

class $$BookCollectionsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BookCollectionsTableTable> {
  $$BookCollectionsTableTableFilterComposer(super.$state);
  $$BooksTableTableFilterComposer get bookId {
    final $$BooksTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableFilterComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$CollectionsTableTableFilterComposer get collectionId {
    final $$CollectionsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.collectionId,
            referencedTable: $state.db.collectionsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$CollectionsTableTableFilterComposer(ComposerState($state.db,
                    $state.db.collectionsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$BookCollectionsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BookCollectionsTableTable> {
  $$BookCollectionsTableTableOrderingComposer(super.$state);
  $$BooksTableTableOrderingComposer get bookId {
    final $$BooksTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableOrderingComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$CollectionsTableTableOrderingComposer get collectionId {
    final $$CollectionsTableTableOrderingComposer composer = $state
        .composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.collectionId,
            referencedTable: $state.db.collectionsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$CollectionsTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.collectionsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$TagsTableTableCreateCompanionBuilder = TagsTableCompanion Function({
  Value<int> id,
  required String name,
  Value<int> color,
});
typedef $$TagsTableTableUpdateCompanionBuilder = TagsTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int> color,
});

class $$TagsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TagsTableTable,
    TagsTableData,
    $$TagsTableTableFilterComposer,
    $$TagsTableTableOrderingComposer,
    $$TagsTableTableCreateCompanionBuilder,
    $$TagsTableTableUpdateCompanionBuilder> {
  $$TagsTableTableTableManager(_$AppDatabase db, $TagsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TagsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TagsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> color = const Value.absent(),
          }) =>
              TagsTableCompanion(
            id: id,
            name: name,
            color: color,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<int> color = const Value.absent(),
          }) =>
              TagsTableCompanion.insert(
            id: id,
            name: name,
            color: color,
          ),
        ));
}

class $$TagsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TagsTableTable> {
  $$TagsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter bookTagsTableRefs(
      ComposableFilter Function($$BookTagsTableTableFilterComposer f) f) {
    final $$BookTagsTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.bookTagsTable,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder, parentComposers) =>
            $$BookTagsTableTableFilterComposer(ComposerState($state.db,
                $state.db.bookTagsTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$TagsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TagsTableTable> {
  $$TagsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$BookTagsTableTableCreateCompanionBuilder = BookTagsTableCompanion
    Function({
  required int bookId,
  required int tagId,
  Value<int> rowid,
});
typedef $$BookTagsTableTableUpdateCompanionBuilder = BookTagsTableCompanion
    Function({
  Value<int> bookId,
  Value<int> tagId,
  Value<int> rowid,
});

class $$BookTagsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookTagsTableTable,
    BookTagsTableData,
    $$BookTagsTableTableFilterComposer,
    $$BookTagsTableTableOrderingComposer,
    $$BookTagsTableTableCreateCompanionBuilder,
    $$BookTagsTableTableUpdateCompanionBuilder> {
  $$BookTagsTableTableTableManager(_$AppDatabase db, $BookTagsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BookTagsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BookTagsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> bookId = const Value.absent(),
            Value<int> tagId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BookTagsTableCompanion(
            bookId: bookId,
            tagId: tagId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int bookId,
            required int tagId,
            Value<int> rowid = const Value.absent(),
          }) =>
              BookTagsTableCompanion.insert(
            bookId: bookId,
            tagId: tagId,
            rowid: rowid,
          ),
        ));
}

class $$BookTagsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BookTagsTableTable> {
  $$BookTagsTableTableFilterComposer(super.$state);
  $$BooksTableTableFilterComposer get bookId {
    final $$BooksTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableFilterComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$TagsTableTableFilterComposer get tagId {
    final $$TagsTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $state.db.tagsTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TagsTableTableFilterComposer(ComposerState(
                $state.db, $state.db.tagsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$BookTagsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BookTagsTableTable> {
  $$BookTagsTableTableOrderingComposer(super.$state);
  $$BooksTableTableOrderingComposer get bookId {
    final $$BooksTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $state.db.booksTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BooksTableTableOrderingComposer(ComposerState($state.db,
                $state.db.booksTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$TagsTableTableOrderingComposer get tagId {
    final $$TagsTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $state.db.tagsTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TagsTableTableOrderingComposer(ComposerState(
                $state.db, $state.db.tagsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BooksTableTableTableManager get booksTable =>
      $$BooksTableTableTableManager(_db, _db.booksTable);
  $$BookmarksTableTableTableManager get bookmarksTable =>
      $$BookmarksTableTableTableManager(_db, _db.bookmarksTable);
  $$HighlightsTableTableTableManager get highlightsTable =>
      $$HighlightsTableTableTableManager(_db, _db.highlightsTable);
  $$NotesTableTableTableManager get notesTable =>
      $$NotesTableTableTableManager(_db, _db.notesTable);
  $$ReadingStatsTableTableTableManager get readingStatsTable =>
      $$ReadingStatsTableTableTableManager(_db, _db.readingStatsTable);
  $$CollectionsTableTableTableManager get collectionsTable =>
      $$CollectionsTableTableTableManager(_db, _db.collectionsTable);
  $$BookCollectionsTableTableTableManager get bookCollectionsTable =>
      $$BookCollectionsTableTableTableManager(_db, _db.bookCollectionsTable);
  $$TagsTableTableTableManager get tagsTable =>
      $$TagsTableTableTableManager(_db, _db.tagsTable);
  $$BookTagsTableTableTableManager get bookTagsTable =>
      $$BookTagsTableTableTableManager(_db, _db.bookTagsTable);
}
