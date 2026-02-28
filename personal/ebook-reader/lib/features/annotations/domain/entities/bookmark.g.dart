// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkImpl _$$BookmarkImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkImpl(
      id: (json['id'] as num).toInt(),
      bookId: (json['bookId'] as num).toInt(),
      pageIndex: (json['pageIndex'] as num).toInt(),
      cfi: json['cfi'] as String?,
      title: json['title'] as String?,
      excerpt: json['excerpt'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$BookmarkImplToJson(_$BookmarkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'pageIndex': instance.pageIndex,
      'cfi': instance.cfi,
      'title': instance.title,
      'excerpt': instance.excerpt,
      'createdAt': instance.createdAt.toIso8601String(),
    };
