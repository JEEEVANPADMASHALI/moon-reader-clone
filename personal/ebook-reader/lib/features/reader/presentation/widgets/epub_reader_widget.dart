import 'dart:io';
import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/theme_constants.dart';
import '../../../../core/database/app_database.dart';
import '../../domain/entities/book_chapter.dart';
import '../../domain/entities/reading_settings.dart';
import '../providers/reader_provider.dart';
import 'reader_gesture_detector.dart';

class EpubReaderWidget extends ConsumerStatefulWidget {
  final String filePath;
  final int bookId;
  final ReadingSettings settings;
  final void Function(int page)? onPageChanged;

  const EpubReaderWidget({
    super.key,
    required this.filePath,
    required this.bookId,
    required this.settings,
    this.onPageChanged,
  });

  @override
  ConsumerState<EpubReaderWidget> createState() => _EpubReaderWidgetState();
}

class _EpubReaderWidgetState extends ConsumerState<EpubReaderWidget> {
  EpubController? _controller;
  int _currentChapterIndex = 0;

  @override
  void initState() {
    super.initState();
    _initEpub();
  }

  Future<void> _initEpub() async {
    final bytes = await File(widget.filePath).readAsBytes();

    _controller = EpubController(
      document: EpubDocument.openData(bytes),
    );

    // Listen to chapter changes via the listenable
    _controller!.currentValueListenable.addListener(_onChapterChanged);
    _controller!.tableOfContentsListenable.addListener(_onTocChanged);

    // Restore position
    final db = ref.read(appDatabaseProvider);
    final book = await db.booksDao.getBookById(widget.bookId);
    if (book?.currentCfi != null && _controller != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _controller?.gotoEpubCfi(book!.currentCfi!);
      });
    }

    if (mounted) setState(() {});
  }

  void _onTocChanged() {
    final chapters = _controller?.tableOfContentsListenable.value ?? [];
    final bookChapters = chapters
        .map((c) => BookChapter(
              id: c.title ?? '',
              title: c.title ?? '',
              index: c.startIndex,
            ))
        .toList();
    if (mounted) {
      ref.read(currentChaptersProvider.notifier).state = bookChapters;
    }
  }

  void _onChapterChanged() {
    final value = _controller?.currentValueListenable.value;
    if (value == null) return;

    _currentChapterIndex = value.chapterNumber;
    widget.onPageChanged?.call(value.chapterNumber);

    if (mounted) {
      ref.read(currentChapterIndexProvider.notifier).state =
          value.chapterNumber;
    }

    // Save CFI position
    final cfi = _controller?.generateEpubCfi();
    final db = ref.read(appDatabaseProvider);
    final progress = value.progress / 100.0;
    db.booksDao.updateProgress(
      widget.bookId,
      value.chapterNumber,
      progress.clamp(0.0, 1.0),
      cfi: cfi,
    );
  }

  @override
  void dispose() {
    _controller?.currentValueListenable.removeListener(_onChapterChanged);
    _controller?.tableOfContentsListenable.removeListener(_onTocChanged);
    super.dispose();
  }

  ReadingTheme get _theme {
    return ThemeConstants.readingThemes.firstWhere(
      (t) => t.id == widget.settings.themeId,
      orElse: () => ThemeConstants.defaultTheme,
    );
  }

  void _nextChapter() {
    final chapters = ref.read(currentChaptersProvider);
    if (_currentChapterIndex < chapters.length - 1) {
      _controller?.jumpTo(index: _currentChapterIndex + 1);
    }
  }

  void _prevChapter() {
    if (_currentChapterIndex > 0) {
      _controller?.jumpTo(index: _currentChapterIndex - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null) {
      return const Center(child: CircularProgressIndicator());
    }

    final theme = _theme;

    return ReaderGestureDetector(
      settings: widget.settings,
      onNextPage: _nextChapter,
      onPrevPage: _prevChapter,
      child: EpubView(
        controller: _controller!,
        onChapterChanged: (chapter) {
          if (chapter == null) return;
        },
        onDocumentLoaded: (_) => _onTocChanged(),
        builders: EpubViewBuilders<DefaultBuilderOptions>(
          options: DefaultBuilderOptions(
            textStyle: TextStyle(
              fontFamily: widget.settings.fontFamily,
              fontSize: widget.settings.fontSize,
              height: widget.settings.lineSpacing,
              color: theme.textColor,
            ),
          ),
          chapterDividerBuilder: (_) => const Divider(height: 1),
        ),
      ),
    );
  }
}
