import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import '../providers/reader_provider.dart';
import '../providers/reading_settings_provider.dart';
import '../widgets/epub_reader_widget.dart';
import '../widgets/pdf_reader_widget.dart';
import '../widgets/txt_reader_widget.dart';
import '../widgets/cbz_reader_widget.dart';
import '../widgets/reader_overlay.dart';
import '../widgets/blue_light_filter.dart';
import '../../../../core/database/app_database.dart';

class ReaderScreen extends ConsumerStatefulWidget {
  final int bookId;
  const ReaderScreen({super.key, required this.bookId});

  @override
  ConsumerState<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends ConsumerState<ReaderScreen>
    with WidgetsBindingObserver {
  ReaderSessionTracker? _tracker;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _tracker = ReaderSessionTracker(ref);
      _tracker!.startSession(widget.bookId);
      _applyWakeLock();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _tracker?.endSession();
    WakelockPlus.disable();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _tracker?.endSession();
    } else if (state == AppLifecycleState.resumed) {
      _tracker?.startSession(widget.bookId);
    }
  }

  void _applyWakeLock() {
    final settings = ref.read(readingSettingsProvider);
    if (settings.keepScreenOn) WakelockPlus.enable();
  }

  @override
  Widget build(BuildContext context) {
    final bookAsync = ref.watch(currentBookProvider(widget.bookId));
    final settings = ref.watch(readingSettingsProvider);

    return bookAsync.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: Center(child: Text('Error: $e')),
      ),
      data: (bookData) {
        if (bookData == null) {
          return const Scaffold(body: Center(child: Text('Book not found')));
        }
        final book = bookData as BooksTableData;
        return Scaffold(
          body: Stack(
            children: [
              _buildReader(book.format, book.filePath, settings),
              BlueLightFilter(opacity: settings.blueLightFilter),
              ReaderOverlay(
                bookId: book.id,
                title: book.title,
                currentPage: book.currentPage,
                totalPages: book.totalPages,
                progress: book.readingProgress,
                currentCfi: book.currentCfi,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildReader(
      String format, String filePath, readingSettings) {
    final settings = ref.watch(readingSettingsProvider);
    switch (format.toLowerCase()) {
      case 'epub':
        return EpubReaderWidget(
          filePath: filePath,
          bookId: widget.bookId,
          settings: settings,
          onPageChanged: (_) => _tracker?.recordPageTurn(),
        );
      case 'pdf':
        return PdfReaderWidget(
          filePath: filePath,
          bookId: widget.bookId,
          settings: settings,
          onPageChanged: (_) => _tracker?.recordPageTurn(),
        );
      case 'cbz':
      case 'cbr':
        return CbzReaderWidget(
          filePath: filePath,
          bookId: widget.bookId,
          settings: settings,
          onPageChanged: (_) => _tracker?.recordPageTurn(),
        );
      case 'txt':
      default:
        return TxtReaderWidget(
          filePath: filePath,
          bookId: widget.bookId,
          settings: settings,
          onPageChanged: (_) => _tracker?.recordPageTurn(),
        );
    }
  }
}
