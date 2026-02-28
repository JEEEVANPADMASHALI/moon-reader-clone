// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookChapter _$BookChapterFromJson(Map<String, dynamic> json) {
  return _BookChapter.fromJson(json);
}

/// @nodoc
mixin _$BookChapter {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  List<BookChapter> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookChapterCopyWith<BookChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookChapterCopyWith<$Res> {
  factory $BookChapterCopyWith(
          BookChapter value, $Res Function(BookChapter) then) =
      _$BookChapterCopyWithImpl<$Res, BookChapter>;
  @useResult
  $Res call(
      {String id,
      String title,
      int index,
      String? href,
      List<BookChapter> children});
}

/// @nodoc
class _$BookChapterCopyWithImpl<$Res, $Val extends BookChapter>
    implements $BookChapterCopyWith<$Res> {
  _$BookChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? index = null,
    Object? href = freezed,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BookChapter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookChapterImplCopyWith<$Res>
    implements $BookChapterCopyWith<$Res> {
  factory _$$BookChapterImplCopyWith(
          _$BookChapterImpl value, $Res Function(_$BookChapterImpl) then) =
      __$$BookChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      int index,
      String? href,
      List<BookChapter> children});
}

/// @nodoc
class __$$BookChapterImplCopyWithImpl<$Res>
    extends _$BookChapterCopyWithImpl<$Res, _$BookChapterImpl>
    implements _$$BookChapterImplCopyWith<$Res> {
  __$$BookChapterImplCopyWithImpl(
      _$BookChapterImpl _value, $Res Function(_$BookChapterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? index = null,
    Object? href = freezed,
    Object? children = null,
  }) {
    return _then(_$BookChapterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BookChapter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookChapterImpl implements _BookChapter {
  const _$BookChapterImpl(
      {required this.id,
      required this.title,
      this.index = 0,
      this.href,
      final List<BookChapter> children = const []})
      : _children = children;

  factory _$BookChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookChapterImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey()
  final int index;
  @override
  final String? href;
  final List<BookChapter> _children;
  @override
  @JsonKey()
  List<BookChapter> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'BookChapter(id: $id, title: $title, index: $index, href: $href, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.href, href) || other.href == href) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, index, href,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookChapterImplCopyWith<_$BookChapterImpl> get copyWith =>
      __$$BookChapterImplCopyWithImpl<_$BookChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookChapterImplToJson(
      this,
    );
  }
}

abstract class _BookChapter implements BookChapter {
  const factory _BookChapter(
      {required final String id,
      required final String title,
      final int index,
      final String? href,
      final List<BookChapter> children}) = _$BookChapterImpl;

  factory _BookChapter.fromJson(Map<String, dynamic> json) =
      _$BookChapterImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get index;
  @override
  String? get href;
  @override
  List<BookChapter> get children;
  @override
  @JsonKey(ignore: true)
  _$$BookChapterImplCopyWith<_$BookChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
