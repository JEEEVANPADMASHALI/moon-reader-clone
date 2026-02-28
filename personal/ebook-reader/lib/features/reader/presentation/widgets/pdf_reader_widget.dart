import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdfrx/pdfrx.dart';
import '../../../../core/database/app_database.dart';
import '../../domain/entities/reading_settings.dart';
import 'reader_gesture_detector.dart';

class PdfReaderWidget extends ConsumerStatefulWidget {
  final String filePath;
  final int bookId;
  final ReadingSettings settings;
  final void Function(int page)? onPageChanged;

  const PdfReaderWidget({
    super.key,
    required this.filePath,
    required this.bookId,
    required this.settings,
    this.onPageChanged,
  });

  @override
  ConsumerState<PdfReaderWidget> createState() => _PdfReaderWidgetState();
}

class _PdfReaderWidgetState extends ConsumerState<PdfReaderWidget> {
  final PdfViewerController _controller = PdfViewerController();

  @override
  void initState() {
    super.initState();
    _restorePosition();
  }

  Future<void> _restorePosition() async {
    final db = ref.read(appDatabaseProvider);
    final book = await db.booksDao.getBookById(widget.bookId);
    if (book != null && book.currentPage > 0 && mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await _controller.goToPage(pageNumber: book.currentPage + 1);
      });
    }
  }

  void _onPageChanged(int? page) {
    if (page == null) return;
    widget.onPageChanged?.call(page - 1);
    final total = _controller.pageCount;
    final progress = total > 0 ? (page - 1) / total : 0.0;
    final db = ref.read(appDatabaseProvider);
    db.booksDao.updateProgress(widget.bookId, page - 1, progress);
  }

  @override
  Widget build(BuildContext context) {
    return ReaderGestureDetector(
      settings: widget.settings,
      onNextPage: () async {
        final current = _controller.pageNumber ?? 1;
        await _controller.goToPage(pageNumber: current + 1);
      },
      onPrevPage: () async {
        final current = _controller.pageNumber ?? 1;
        await _controller.goToPage(pageNumber: (current - 1).clamp(1, 999999));
      },
      child: PdfViewer.file(
        widget.filePath,
        controller: _controller,
        params: PdfViewerParams(
          backgroundColor: Colors.grey.shade800,
          onPageChanged: _onPageChanged,
        ),
      ),
    );
  }
}
