// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Highlight _$HighlightFromJson(Map<String, dynamic> json) {
  return _Highlight.fromJson(json);
}

/// @nodoc
mixin _$Highlight {
  int get id => throw _privateConstructorUsedError;
  int get bookId => throw _privateConstructorUsedError;
  String get cfiStart => throw _privateConstructorUsedError;
  String? get cfiEnd => throw _privateConstructorUsedError;
  String get selectedText => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  HighlightType get type => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighlightCopyWith<Highlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightCopyWith<$Res> {
  factory $HighlightCopyWith(Highlight value, $Res Function(Highlight) then) =
      _$HighlightCopyWithImpl<$Res, Highlight>;
  @useResult
  $Res call(
      {int id,
      int bookId,
      String cfiStart,
      String? cfiEnd,
      String selectedText,
      int color,
      HighlightType type,
      int pageIndex,
      DateTime createdAt,
      String? note});
}

/// @nodoc
class _$HighlightCopyWithImpl<$Res, $Val extends Highlight>
    implements $HighlightCopyWith<$Res> {
  _$HighlightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? cfiStart = null,
    Object? cfiEnd = freezed,
    Object? selectedText = null,
    Object? color = null,
    Object? type = null,
    Object? pageIndex = null,
    Object? createdAt = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      cfiStart: null == cfiStart
          ? _value.cfiStart
          : cfiStart // ignore: cast_nullable_to_non_nullable
              as String,
      cfiEnd: freezed == cfiEnd
          ? _value.cfiEnd
          : cfiEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedText: null == selectedText
          ? _value.selectedText
          : selectedText // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HighlightType,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HighlightImplCopyWith<$Res>
    implements $HighlightCopyWith<$Res> {
  factory _$$HighlightImplCopyWith(
          _$HighlightImpl value, $Res Function(_$HighlightImpl) then) =
      __$$HighlightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bookId,
      String cfiStart,
      String? cfiEnd,
      String selectedText,
      int color,
      HighlightType type,
      int pageIndex,
      DateTime createdAt,
      String? note});
}

/// @nodoc
class __$$HighlightImplCopyWithImpl<$Res>
    extends _$HighlightCopyWithImpl<$Res, _$HighlightImpl>
    implements _$$HighlightImplCopyWith<$Res> {
  __$$HighlightImplCopyWithImpl(
      _$HighlightImpl _value, $Res Function(_$HighlightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? cfiStart = null,
    Object? cfiEnd = freezed,
    Object? selectedText = null,
    Object? color = null,
    Object? type = null,
    Object? pageIndex = null,
    Object? createdAt = null,
    Object? note = freezed,
  }) {
    return _then(_$HighlightImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      cfiStart: null == cfiStart
          ? _value.cfiStart
          : cfiStart // ignore: cast_nullable_to_non_nullable
              as String,
      cfiEnd: freezed == cfiEnd
          ? _value.cfiEnd
          : cfiEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedText: null == selectedText
          ? _value.selectedText
          : selectedText // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HighlightType,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlightImpl implements _Highlight {
  const _$HighlightImpl(
      {required this.id,
      required this.bookId,
      required this.cfiStart,
      this.cfiEnd,
      required this.selectedText,
      this.color = 0xFFFFEB3B,
      this.type = HighlightType.highlight,
      this.pageIndex = 0,
      required this.createdAt,
      this.note});

  factory _$HighlightImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightImplFromJson(json);

  @override
  final int id;
  @override
  final int bookId;
  @override
  final String cfiStart;
  @override
  final String? cfiEnd;
  @override
  final String selectedText;
  @override
  @JsonKey()
  final int color;
  @override
  @JsonKey()
  final HighlightType type;
  @override
  @JsonKey()
  final int pageIndex;
  @override
  final DateTime createdAt;
  @override
  final String? note;

  @override
  String toString() {
    return 'Highlight(id: $id, bookId: $bookId, cfiStart: $cfiStart, cfiEnd: $cfiEnd, selectedText: $selectedText, color: $color, type: $type, pageIndex: $pageIndex, createdAt: $createdAt, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.cfiStart, cfiStart) ||
                other.cfiStart == cfiStart) &&
            (identical(other.cfiEnd, cfiEnd) || other.cfiEnd == cfiEnd) &&
            (identical(other.selectedText, selectedText) ||
                other.selectedText == selectedText) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookId, cfiStart, cfiEnd,
      selectedText, color, type, pageIndex, createdAt, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightImplCopyWith<_$HighlightImpl> get copyWith =>
      __$$HighlightImplCopyWithImpl<_$HighlightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightImplToJson(
      this,
    );
  }
}

abstract class _Highlight implements Highlight {
  const factory _Highlight(
      {required final int id,
      required final int bookId,
      required final String cfiStart,
      final String? cfiEnd,
      required final String selectedText,
      final int color,
      final HighlightType type,
      final int pageIndex,
      required final DateTime createdAt,
      final String? note}) = _$HighlightImpl;

  factory _Highlight.fromJson(Map<String, dynamic> json) =
      _$HighlightImpl.fromJson;

  @override
  int get id;
  @override
  int get bookId;
  @override
  String get cfiStart;
  @override
  String? get cfiEnd;
  @override
  String get selectedText;
  @override
  int get color;
  @override
  HighlightType get type;
  @override
  int get pageIndex;
  @override
  DateTime get createdAt;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$HighlightImplCopyWith<_$HighlightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
