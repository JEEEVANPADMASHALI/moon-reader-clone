// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadingPosition _$ReadingPositionFromJson(Map<String, dynamic> json) {
  return _ReadingPosition.fromJson(json);
}

/// @nodoc
mixin _$ReadingPosition {
  int get bookId => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  String? get chapterId => throw _privateConstructorUsedError;
  String? get cfi => throw _privateConstructorUsedError;
  double get scrollOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadingPositionCopyWith<ReadingPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingPositionCopyWith<$Res> {
  factory $ReadingPositionCopyWith(
          ReadingPosition value, $Res Function(ReadingPosition) then) =
      _$ReadingPositionCopyWithImpl<$Res, ReadingPosition>;
  @useResult
  $Res call(
      {int bookId,
      int pageIndex,
      String? chapterId,
      String? cfi,
      double scrollOffset});
}

/// @nodoc
class _$ReadingPositionCopyWithImpl<$Res, $Val extends ReadingPosition>
    implements $ReadingPositionCopyWith<$Res> {
  _$ReadingPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? pageIndex = null,
    Object? chapterId = freezed,
    Object? cfi = freezed,
    Object? scrollOffset = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      chapterId: freezed == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as String?,
      cfi: freezed == cfi
          ? _value.cfi
          : cfi // ignore: cast_nullable_to_non_nullable
              as String?,
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingPositionImplCopyWith<$Res>
    implements $ReadingPositionCopyWith<$Res> {
  factory _$$ReadingPositionImplCopyWith(_$ReadingPositionImpl value,
          $Res Function(_$ReadingPositionImpl) then) =
      __$$ReadingPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bookId,
      int pageIndex,
      String? chapterId,
      String? cfi,
      double scrollOffset});
}

/// @nodoc
class __$$ReadingPositionImplCopyWithImpl<$Res>
    extends _$ReadingPositionCopyWithImpl<$Res, _$ReadingPositionImpl>
    implements _$$ReadingPositionImplCopyWith<$Res> {
  __$$ReadingPositionImplCopyWithImpl(
      _$ReadingPositionImpl _value, $Res Function(_$ReadingPositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? pageIndex = null,
    Object? chapterId = freezed,
    Object? cfi = freezed,
    Object? scrollOffset = null,
  }) {
    return _then(_$ReadingPositionImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      chapterId: freezed == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as String?,
      cfi: freezed == cfi
          ? _value.cfi
          : cfi // ignore: cast_nullable_to_non_nullable
              as String?,
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingPositionImpl implements _ReadingPosition {
  const _$ReadingPositionImpl(
      {required this.bookId,
      this.pageIndex = 0,
      this.chapterId,
      this.cfi,
      this.scrollOffset = 0.0});

  factory _$ReadingPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingPositionImplFromJson(json);

  @override
  final int bookId;
  @override
  @JsonKey()
  final int pageIndex;
  @override
  final String? chapterId;
  @override
  final String? cfi;
  @override
  @JsonKey()
  final double scrollOffset;

  @override
  String toString() {
    return 'ReadingPosition(bookId: $bookId, pageIndex: $pageIndex, chapterId: $chapterId, cfi: $cfi, scrollOffset: $scrollOffset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingPositionImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.chapterId, chapterId) ||
                other.chapterId == chapterId) &&
            (identical(other.cfi, cfi) || other.cfi == cfi) &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, pageIndex, chapterId, cfi, scrollOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingPositionImplCopyWith<_$ReadingPositionImpl> get copyWith =>
      __$$ReadingPositionImplCopyWithImpl<_$ReadingPositionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingPositionImplToJson(
      this,
    );
  }
}

abstract class _ReadingPosition implements ReadingPosition {
  const factory _ReadingPosition(
      {required final int bookId,
      final int pageIndex,
      final String? chapterId,
      final String? cfi,
      final double scrollOffset}) = _$ReadingPositionImpl;

  factory _ReadingPosition.fromJson(Map<String, dynamic> json) =
      _$ReadingPositionImpl.fromJson;

  @override
  int get bookId;
  @override
  int get pageIndex;
  @override
  String? get chapterId;
  @override
  String? get cfi;
  @override
  double get scrollOffset;
  @override
  @JsonKey(ignore: true)
  _$$ReadingPositionImplCopyWith<_$ReadingPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
