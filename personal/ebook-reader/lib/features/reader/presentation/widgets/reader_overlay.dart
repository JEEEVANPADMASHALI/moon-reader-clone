import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:drift/drift.dart' show Value;
import '../../../../core/database/app_database.dart';
import '../providers/reader_provider.dart';
import 'chapter_drawer.dart';
import 'brightness_slider.dart';
import 'reading_progress_bar.dart';

class ReaderOverlay extends ConsumerWidget {
  final int bookId;
  final String title;
  final int currentPage;
  final int totalPages;
  final double progress;
  final String? currentCfi;

  const ReaderOverlay({
    super.key,
    required this.bookId,
    required this.title,
    required this.currentPage,
    required this.totalPages,
    required this.progress,
    this.currentCfi,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visible = ref.watch(readerOverlayVisibleProvider);

    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => ref
                .read(readerOverlayVisibleProvider.notifier)
                .state = !visible,
          ),
        ),

        // Brightness slider on left edge
        Positioned(
          left: 0,
          top: 60,
          bottom: 60,
          width: 24,
          child: BrightnessSlider(),
        ),

        if (visible) ...[
          // Top bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Material(
              child: SafeArea(
                bottom: false,
                child: Container(
                  height: 56,
                  color: Theme.of(context).colorScheme.surface,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () => context.pop(),
                      ),
                      Expanded(
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.list_alt),
                        onPressed: () => _showChapterDrawer(context),
                      ),
                      IconButton(
                        icon: const Icon(Icons.bookmark_add_outlined),
                        onPressed: () => _addBookmark(context, ref),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Bottom bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Material(
              child: SafeArea(
                top: false,
                child: ReadingProgressBar(
                  currentPage: currentPage,
                  totalPages: totalPages,
                  progress: progress,
                  title: title,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  void _showChapterDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        expand: false,
        builder: (ctx, scroll) => ChapterDrawer(scrollController: scroll),
      ),
    );
  }

  Future<void> _addBookmark(BuildContext context, WidgetRef ref) async {
    final db = ref.read(appDatabaseProvider);
    await db.bookmarksDao.insertBookmark(
      BookmarksTableCompanion.insert(
        bookId: bookId,
        pageIndex: currentPage,
        cfi: Value(currentCfi),
        title: Value('Page ${currentPage + 1}'),
      ),
    );
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bookmark added'),
          duration: Duration(seconds: 1),
        ),
      );
    }
  }
}
