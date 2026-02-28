// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String? get coverPath => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  String? get currentCfi => throw _privateConstructorUsedError;
  double get readingProgress => throw _privateConstructorUsedError;
  DateTime get dateAdded => throw _privateConstructorUsedError;
  DateTime? get lastOpened => throw _privateConstructorUsedError;
  int get totalReadingSeconds => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  String? get isbn => throw _privateConstructorUsedError;
  DateTime? get publishDate => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {int id,
      String title,
      String author,
      String filePath,
      String format,
      String? coverPath,
      int totalPages,
      int currentPage,
      String? currentCfi,
      double readingProgress,
      DateTime dateAdded,
      DateTime? lastOpened,
      int totalReadingSeconds,
      bool isFinished,
      String? description,
      String? language,
      String? publisher,
      String? isbn,
      DateTime? publishDate,
      int fileSize,
      List<String> tags});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? filePath = null,
    Object? format = null,
    Object? coverPath = freezed,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? currentCfi = freezed,
    Object? readingProgress = null,
    Object? dateAdded = null,
    Object? lastOpened = freezed,
    Object? totalReadingSeconds = null,
    Object? isFinished = null,
    Object? description = freezed,
    Object? language = freezed,
    Object? publisher = freezed,
    Object? isbn = freezed,
    Object? publishDate = freezed,
    Object? fileSize = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentCfi: freezed == currentCfi
          ? _value.currentCfi
          : currentCfi // ignore: cast_nullable_to_non_nullable
              as String?,
      readingProgress: null == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as double,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastOpened: freezed == lastOpened
          ? _value.lastOpened
          : lastOpened // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalReadingSeconds: null == totalReadingSeconds
          ? _value.totalReadingSeconds
          : totalReadingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String author,
      String filePath,
      String format,
      String? coverPath,
      int totalPages,
      int currentPage,
      String? currentCfi,
      double readingProgress,
      DateTime dateAdded,
      DateTime? lastOpened,
      int totalReadingSeconds,
      bool isFinished,
      String? description,
      String? language,
      String? publisher,
      String? isbn,
      DateTime? publishDate,
      int fileSize,
      List<String> tags});
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? filePath = null,
    Object? format = null,
    Object? coverPath = freezed,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? currentCfi = freezed,
    Object? readingProgress = null,
    Object? dateAdded = null,
    Object? lastOpened = freezed,
    Object? totalReadingSeconds = null,
    Object? isFinished = null,
    Object? description = freezed,
    Object? language = freezed,
    Object? publisher = freezed,
    Object? isbn = freezed,
    Object? publishDate = freezed,
    Object? fileSize = null,
    Object? tags = null,
  }) {
    return _then(_$BookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentCfi: freezed == currentCfi
          ? _value.currentCfi
          : currentCfi // ignore: cast_nullable_to_non_nullable
              as String?,
      readingProgress: null == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as double,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastOpened: freezed == lastOpened
          ? _value.lastOpened
          : lastOpened // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalReadingSeconds: null == totalReadingSeconds
          ? _value.totalReadingSeconds
          : totalReadingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl(
      {required this.id,
      required this.title,
      required this.author,
      required this.filePath,
      required this.format,
      this.coverPath,
      this.totalPages = 0,
      this.currentPage = 0,
      this.currentCfi,
      this.readingProgress = 0.0,
      required this.dateAdded,
      this.lastOpened,
      this.totalReadingSeconds = 0,
      this.isFinished = false,
      this.description,
      this.language,
      this.publisher,
      this.isbn,
      this.publishDate,
      this.fileSize = 0,
      final List<String> tags = const []})
      : _tags = tags;

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String author;
  @override
  final String filePath;
  @override
  final String format;
  @override
  final String? coverPath;
  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final String? currentCfi;
  @override
  @JsonKey()
  final double readingProgress;
  @override
  final DateTime dateAdded;
  @override
  final DateTime? lastOpened;
  @override
  @JsonKey()
  final int totalReadingSeconds;
  @override
  @JsonKey()
  final bool isFinished;
  @override
  final String? description;
  @override
  final String? language;
  @override
  final String? publisher;
  @override
  final String? isbn;
  @override
  final DateTime? publishDate;
  @override
  @JsonKey()
  final int fileSize;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Book(id: $id, title: $title, author: $author, filePath: $filePath, format: $format, coverPath: $coverPath, totalPages: $totalPages, currentPage: $currentPage, currentCfi: $currentCfi, readingProgress: $readingProgress, dateAdded: $dateAdded, lastOpened: $lastOpened, totalReadingSeconds: $totalReadingSeconds, isFinished: $isFinished, description: $description, language: $language, publisher: $publisher, isbn: $isbn, publishDate: $publishDate, fileSize: $fileSize, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.coverPath, coverPath) ||
                other.coverPath == coverPath) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.currentCfi, currentCfi) ||
                other.currentCfi == currentCfi) &&
            (identical(other.readingProgress, readingProgress) ||
                other.readingProgress == readingProgress) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.lastOpened, lastOpened) ||
                other.lastOpened == lastOpened) &&
            (identical(other.totalReadingSeconds, totalReadingSeconds) ||
                other.totalReadingSeconds == totalReadingSeconds) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
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
        fileSize,
        const DeepCollectionEquality().hash(_tags)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {required final int id,
      required final String title,
      required final String author,
      required final String filePath,
      required final String format,
      final String? coverPath,
      final int totalPages,
      final int currentPage,
      final String? currentCfi,
      final double readingProgress,
      required final DateTime dateAdded,
      final DateTime? lastOpened,
      final int totalReadingSeconds,
      final bool isFinished,
      final String? description,
      final String? language,
      final String? publisher,
      final String? isbn,
      final DateTime? publishDate,
      final int fileSize,
      final List<String> tags}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get author;
  @override
  String get filePath;
  @override
  String get format;
  @override
  String? get coverPath;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  String? get currentCfi;
  @override
  double get readingProgress;
  @override
  DateTime get dateAdded;
  @override
  DateTime? get lastOpened;
  @override
  int get totalReadingSeconds;
  @override
  bool get isFinished;
  @override
  String? get description;
  @override
  String? get language;
  @override
  String? get publisher;
  @override
  String? get isbn;
  @override
  DateTime? get publishDate;
  @override
  int get fileSize;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
