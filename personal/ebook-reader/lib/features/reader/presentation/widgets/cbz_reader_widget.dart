import 'dart:io';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/app_database.dart';
import '../../domain/entities/reading_settings.dart';
import 'reader_gesture_detector.dart';

class CbzReaderWidget extends ConsumerStatefulWidget {
  final String filePath;
  final int bookId;
  final ReadingSettings settings;
  final void Function(int page)? onPageChanged;

  const CbzReaderWidget({
    super.key,
    required this.filePath,
    required this.bookId,
    required this.settings,
    this.onPageChanged,
  });

  @override
  ConsumerState<CbzReaderWidget> createState() => _CbzReaderWidgetState();
}

class _CbzReaderWidgetState extends ConsumerState<CbzReaderWidget> {
  List<Uint8List> _pages = [];
  bool _loading = true;
  String? _errorMsg;
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _loadArchive();
  }

  Future<void> _loadArchive() async {
    try {
      final bytes = await File(widget.filePath).readAsBytes();
      final ext = widget.filePath.toLowerCase().split('.').last;

      Archive? archive;
      if (ext == 'cbr') {
        // RAR is not natively supported; show a friendly message
        if (mounted) {
          setState(() {
            _errorMsg =
                'CBR (RAR) format is not supported yet. Please convert to CBZ.';
            _loading = false;
          });
        }
        return;
      } else {
        archive = ZipDecoder().decodeBytes(bytes);
      }

      final imageExts = {'jpg', 'jpeg', 'png', 'gif', 'webp', 'bmp'};
      final pages = <Uint8List>[];

      final files = archive.files
          .where((f) => f.isFile)
          .where((f) {
            final fileExt = f.name.toLowerCase().split('.').last;
            return imageExts.contains(fileExt);
          })
          .toList()
        ..sort((a, b) => a.name.compareTo(b.name));

      for (final file in files) {
        pages.add(Uint8List.fromList(file.content as List<int>));
      }

      final db = ref.read(appDatabaseProvider);
      final book = await db.booksDao.getBookById(widget.bookId);
      final startPage =
          book != null ? book.currentPage.clamp(0, pages.length - 1) : 0;

      if (mounted) {
        setState(() {
          _pages = pages;
          _currentPage = startPage;
          _pageController = PageController(initialPage: startPage);
          _loading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMsg = 'Failed to load archive: $e';
          _loading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    if (!_loading && _errorMsg == null) {
      _pageController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMsg != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(_errorMsg!,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white)),
        ),
      );
    }

    if (_pages.isEmpty) {
      return const Center(child: Text('No images found in archive'));
    }

    return ReaderGestureDetector(
      settings: widget.settings,
      onNextPage: () {
        if (_currentPage < _pages.length - 1) {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
          );
        }
      },
      onPrevPage: () {
        if (_currentPage > 0) {
          _pageController.previousPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
          );
        }
      },
      child: Container(
        color: Colors.black,
        child: PageView.builder(
          controller: _pageController,
          itemCount: _pages.length,
          onPageChanged: (p) {
            _currentPage = p;
            widget.onPageChanged?.call(p);
            final db = ref.read(appDatabaseProvider);
            db.booksDao.updateProgress(
              widget.bookId,
              p,
              _pages.isNotEmpty ? p / _pages.length : 0.0,
            );
          },
          itemBuilder: (ctx, i) => InteractiveViewer(
            child: Center(
              child: Image.memory(_pages[i], fit: BoxFit.contain),
            ),
          ),
        ),
      ),
    );
  }
}
