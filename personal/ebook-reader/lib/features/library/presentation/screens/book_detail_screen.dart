import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/file_utils.dart';
import '../../data/repositories/book_repository_impl.dart';
import '../providers/library_provider.dart';

class BookDetailScreen extends ConsumerWidget {
  final int bookId;
  const BookDetailScreen({super.key, required this.bookId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookAsync = ref.watch(
      FutureProvider((ref) =>
          ref.watch(bookRepositoryProvider).getBookById(bookId)).future,
    );

    return FutureBuilder(
      future: bookAsync,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        final book = snapshot.data;
        if (book == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(child: Text('Book not found')),
          );
        }
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 280,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: book.coverPath != null
                      ? Image.file(
                          File(book.coverPath!),
                          fit: BoxFit.cover,
                        )
                      : Container(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          child: const Icon(Icons.menu_book, size: 80),
                        ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () => _confirmDelete(context, ref),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(book.title,
                          style: Theme.of(context).textTheme.headlineSmall),
                      const SizedBox(height: 4),
                      Text(book.author,
                          style: Theme.of(context).textTheme.titleMedium),
                      const SizedBox(height: 16),
                      LinearProgressIndicator(
                        value: book.readingProgress,
                        minHeight: 6,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${(book.readingProgress * 100).toStringAsFixed(0)}% read'
                        ' • ${FileUtils.formatBytes(book.fileSize)}',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton.icon(
                          onPressed: () =>
                              context.pushNamed(RouteNames.reader,
                                  pathParameters: {'id': '$bookId'}),
                          icon: const Icon(Icons.menu_book),
                          label: Text(book.readingProgress > 0
                              ? 'Continue Reading'
                              : 'Start Reading'),
                        ),
                      ),
                      if (book.description != null) ...[
                        const SizedBox(height: 24),
                        Text('About',
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(height: 8),
                        Text(book.description!),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _confirmDelete(BuildContext context, WidgetRef ref) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Remove book?'),
        content: const Text('This removes the book from your library.'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancel')),
          FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const Text('Remove')),
        ],
      ),
    );
    if (confirmed == true && context.mounted) {
      await ref.read(importBookProvider.notifier).deleteBook(bookId);
      if (context.mounted) context.pop();
    }
  }
}
