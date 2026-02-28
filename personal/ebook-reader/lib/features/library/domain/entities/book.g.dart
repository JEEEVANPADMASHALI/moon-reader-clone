// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String,
      filePath: json['filePath'] as String,
      format: json['format'] as String,
      coverPath: json['coverPath'] as String?,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 0,
      currentCfi: json['currentCfi'] as String?,
      readingProgress: (json['readingProgress'] as num?)?.toDouble() ?? 0.0,
      dateAdded: DateTime.parse(json['dateAdded'] as String),
      lastOpened: json['lastOpened'] == null
          ? null
          : DateTime.parse(json['lastOpened'] as String),
      totalReadingSeconds: (json['totalReadingSeconds'] as num?)?.toInt() ?? 0,
      isFinished: json['isFinished'] as bool? ?? false,
      description: json['description'] as String?,
      language: json['language'] as String?,
      publisher: json['publisher'] as String?,
      isbn: json['isbn'] as String?,
      publishDate: json['publishDate'] == null
          ? null
          : DateTime.parse(json['publishDate'] as String),
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'filePath': instance.filePath,
      'format': instance.format,
      'coverPath': instance.coverPath,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'currentCfi': instance.currentCfi,
      'readingProgress': instance.readingProgress,
      'dateAdded': instance.dateAdded.toIso8601String(),
      'lastOpened': instance.lastOpened?.toIso8601String(),
      'totalReadingSeconds': instance.totalReadingSeconds,
      'isFinished': instance.isFinished,
      'description': instance.description,
      'language': instance.language,
      'publisher': instance.publisher,
      'isbn': instance.isbn,
      'publishDate': instance.publishDate?.toIso8601String(),
      'fileSize': instance.fileSize,
      'tags': instance.tags,
    };
