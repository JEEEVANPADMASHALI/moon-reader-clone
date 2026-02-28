import 'dart:io';
import 'dart:typed_data';

class FileUtils {
  /// Detect book format by file extension
  static String? detectFormat(String filePath) {
    final ext = filePath.toLowerCase().split('.').last;
    const formats = {
      'epub', 'pdf', 'txt', 'cbz', 'cbr', 'mobi', 'azw3', 'fb2',
    };
    return formats.contains(ext) ? ext : null;
  }

  /// Detect format by magic bytes (more reliable)
  static Future<String?> detectFormatByBytes(String filePath) async {
    final file = File(filePath);
    if (!await file.exists()) return null;

    final bytes = await file.openRead(0, 8).first;
    final header = Uint8List.fromList(bytes);

    // PDF: %PDF
    if (header.length >= 4 &&
        header[0] == 0x25 &&
        header[1] == 0x50 &&
        header[2] == 0x44 &&
        header[3] == 0x46) {
      return 'pdf';
    }

    // ZIP-based (EPUB, CBZ): PK
    if (header.length >= 2 && header[0] == 0x50 && header[1] == 0x4B) {
      final ext = filePath.toLowerCase().split('.').last;
      if (ext == 'epub') return 'epub';
      if (ext == 'cbz') return 'cbz';
      return 'epub'; // default zip to epub
    }

    // RAR (CBR): Rar!
    if (header.length >= 7 &&
        header[0] == 0x52 &&
        header[1] == 0x61 &&
        header[2] == 0x72 &&
        header[3] == 0x21) {
      return 'cbr';
    }

    // MOBI/AZW: BOOKMOBI
    if (header.length >= 8) {
      final mobi = String.fromCharCodes(header.sublist(0, 8));
      if (mobi.contains('MOBI') || mobi.contains('BOOK')) return 'mobi';
    }

    // Fallback to extension
    return detectFormat(filePath);
  }

  static String formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1048576) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / 1048576).toStringAsFixed(1)} MB';
  }
}
