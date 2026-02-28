// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingPositionImpl _$$ReadingPositionImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingPositionImpl(
      bookId: (json['bookId'] as num).toInt(),
      pageIndex: (json['pageIndex'] as num?)?.toInt() ?? 0,
      chapterId: json['chapterId'] as String?,
      cfi: json['cfi'] as String?,
      scrollOffset: (json['scrollOffset'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$ReadingPositionImplToJson(
        _$ReadingPositionImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'pageIndex': instance.pageIndex,
      'chapterId': instance.chapterId,
      'cfi': instance.cfi,
      'scrollOffset': instance.scrollOffset,
    };
