// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighlightImpl _$$HighlightImplFromJson(Map<String, dynamic> json) =>
    _$HighlightImpl(
      id: (json['id'] as num).toInt(),
      bookId: (json['bookId'] as num).toInt(),
      cfiStart: json['cfiStart'] as String,
      cfiEnd: json['cfiEnd'] as String?,
      selectedText: json['selectedText'] as String,
      color: (json['color'] as num?)?.toInt() ?? 0xFFFFEB3B,
      type: $enumDecodeNullable(_$HighlightTypeEnumMap, json['type']) ??
          HighlightType.highlight,
      pageIndex: (json['pageIndex'] as num?)?.toInt() ?? 0,
      createdAt: DateTime.parse(json['createdAt'] as String),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$HighlightImplToJson(_$HighlightImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'cfiStart': instance.cfiStart,
      'cfiEnd': instance.cfiEnd,
      'selectedText': instance.selectedText,
      'color': instance.color,
      'type': _$HighlightTypeEnumMap[instance.type]!,
      'pageIndex': instance.pageIndex,
      'createdAt': instance.createdAt.toIso8601String(),
      'note': instance.note,
    };

const _$HighlightTypeEnumMap = {
  HighlightType.highlight: 'highlight',
  HighlightType.underline: 'underline',
  HighlightType.strikethrough: 'strikethrough',
};
