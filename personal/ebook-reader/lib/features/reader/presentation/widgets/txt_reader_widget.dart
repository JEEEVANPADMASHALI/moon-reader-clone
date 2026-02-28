import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/theme_constants.dart';
import '../../../../core/database/app_database.dart';
import '../../domain/entities/reading_settings.dart';
import 'reader_gesture_detector.dart';

class TxtReaderWidget extends ConsumerStatefulWidget {
  final String filePath;
  final int bookId;
  final ReadingSettings settings;
  final void Function(int page)? onPageChanged;

  const TxtReaderWidget({
    super.key,
    required this.filePath,
    required this.bookId,
    required this.settings,
    this.onPageChanged,
  });

  @override
  ConsumerState<TxtReaderWidget> createState() => _TxtReaderWidgetState();
}

class _TxtReaderWidgetState extends ConsumerState<TxtReaderWidget> {
  bool _loading = true;
  late PageController _pageController;
  List<String> _pages = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _loadContent();
  }

  Future<void> _loadContent() async {
    final content = await File(widget.filePath).readAsString();
    // Naive pagination: split by double newlines into chunks of ~2000 chars
    final paragraphs = content.split('\n\n');
    final pages = <String>[];
    final buf = StringBuffer();
    for (final para in paragraphs) {
      buf.write(para);
      buf.write('\n\n');
      if (buf.length > 2000) {
        pages.add(buf.toString());
        buf.clear();
      }
    }
    if (buf.isNotEmpty) pages.add(buf.toString());

    // Restore position
    final db = ref.read(appDatabaseProvider);
    final book = await db.booksDao.getBookById(widget.bookId);
    final startPage =
        book != null ? book.currentPage.clamp(0, pages.length - 1) : 0;

    if (mounted) {
      setState(() {
        _pages = pages.isEmpty ? [content] : pages;
        _currentPage = startPage;
        _pageController = PageController(initialPage: startPage);
        _loading = false;
      });
    }
  }

  ReadingTheme get _theme => ThemeConstants.readingThemes.firstWhere(
        (t) => t.id == widget.settings.themeId,
        orElse: () => ThemeConstants.defaultTheme,
      );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ReaderGestureDetector(
      settings: widget.settings,
      onNextPage: () {
        if (_currentPage < _pages.length - 1) {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
      onPrevPage: () {
        if (_currentPage > 0) {
          _pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
      child: Container(
        color: _theme.backgroundColor,
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
          itemBuilder: (ctx, i) => SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: widget.settings.horizontalMargin,
              vertical: widget.settings.verticalMargin,
            ),
            child: Text(
              _pages[i],
              style: TextStyle(
                fontFamily: widget.settings.fontFamily,
                fontSize: widget.settings.fontSize,
                height: widget.settings.lineSpacing,
                color: _theme.textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
