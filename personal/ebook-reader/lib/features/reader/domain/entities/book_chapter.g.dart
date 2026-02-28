// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookChapterImpl _$$BookChapterImplFromJson(Map<String, dynamic> json) =>
    _$BookChapterImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      index: (json['index'] as num?)?.toInt() ?? 0,
      href: json['href'] as String?,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => BookChapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BookChapterImplToJson(_$BookChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'index': instance.index,
      'href': instance.href,
      'children': instance.children,
    };
