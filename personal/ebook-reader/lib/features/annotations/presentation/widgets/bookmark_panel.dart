import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/annotations_provider.dart';

class BookmarkPanel extends ConsumerWidget {
  final int bookId;
  const BookmarkPanel({super.key, required this.bookId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarksAsync = ref.watch(bookmarksProvider(bookId));

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Bookmarks',
              style: Theme.of(context).textTheme.titleLarge),
        ),
        const Divider(height: 1),
        Expanded(
          child: bookmarksAsync.when(
            loading: () =>
                const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('$e')),
            data: (bookmarks) => bookmarks.isEmpty
                ? const Center(child: Text('No bookmarks yet'))
                : ListView.builder(
                    itemCount: bookmarks.length,
                    itemBuilder: (ctx, i) {
                      final bm = bookmarks[i];
                      return ListTile(
                        leading: const Icon(Icons.bookmark),
                        title: Text(bm.title ?? 'Page ${bm.pageIndex + 1}'),
                        subtitle: bm.excerpt != null
                            ? Text(
                                bm.excerpt!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            : null,
                        trailing: IconButton(
                          icon: const Icon(Icons.delete_outline),
                          onPressed: () => ref
                              .read(annotationActionsProvider)
                              .deleteBookmark(bm.id),
                        ),
                      );
                    },
                  ),
          ),
        ),
      ],
    );
  }
}
