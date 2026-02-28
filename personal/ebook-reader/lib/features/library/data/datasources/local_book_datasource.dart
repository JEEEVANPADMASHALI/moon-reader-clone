import 'dart:io';
import 'package:epub_view/epub_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

final localBookDatasourceProvider = Provider<LocalBookDatasource>((ref) {
  return LocalBookDatasource();
});

class LocalBookDatasource {
  /// Extract title, author, cover, description from a book file
  Future<Map<String, String?>> extractMetadata(
      String filePath, String format) async {
    switch (format.toLowerCase()) {
      case 'epub':
        return _extractEpubMetadata(filePath);
      default:
        return {'title': _titleFromPath(filePath)};
    }
  }

  Future<Map<String, String?>> _extractEpubMetadata(String filePath) async {
    try {
      final bytes = await File(filePath).readAsBytes();
      final epub = await EpubDocument.openData(bytes);
      final title = epub.Title ?? _titleFromPath(filePath);
      final author = epub.Author;

      // Extract cover image — CoverImage is img.Image from the image package
      String? coverPath;
      final cover = epub.CoverImage;
      if (cover != null) {
        final coversDir = await _coversDir();
        final coverFile = File(
            p.join(coversDir, '${title.hashCode}_cover.jpg'));
        if (!await coverFile.exists()) {
          final jpegBytes = img.encodeJpg(cover, quality: 85);
          await coverFile.writeAsBytes(jpegBytes);
        }
        coverPath = coverFile.path;
      }

      // epubx 4.0 EpubBook only exposes Title, Author, Schema, CoverImage
      // Additional metadata may be in Schema.Package.Metadata
      String? description;
      String? language;
      String? publisher;
      try {
        final metadata = epub.Schema?.Package?.Metadata;
        if (metadata != null) {
          description = metadata.Description;
          language = metadata.Languages?.isNotEmpty == true
              ? metadata.Languages!.first
              : null;
          publisher = metadata.Publishers?.isNotEmpty == true
              ? metadata.Publishers!.first
              : null;
        }
      } catch (_) {}

      return {
        'title': title,
        'author': author,
        'coverPath': coverPath,
        'description': description,
        'language': language,
        'publisher': publisher,
      };
    } catch (_) {
      return {'title': _titleFromPath(filePath)};
    }
  }

  Future<String> _coversDir() async {
    final appDir = await getApplicationDocumentsDirectory();
    final dir = Directory(p.join(appDir.path, 'covers'));
    if (!await dir.exists()) await dir.create(recursive: true);
    return dir.path;
  }

  String _titleFromPath(String path) {
    final name = path.split('/').last;
    final dot = name.lastIndexOf('.');
    return dot > 0 ? name.substring(0, dot) : name;
  }
}
