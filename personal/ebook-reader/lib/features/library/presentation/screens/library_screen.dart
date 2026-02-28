import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../providers/library_provider.dart';
import '../widgets/book_grid_item.dart';
import '../widgets/book_list_item.dart';
import '../widgets/sort_filter_bar.dart';

class LibraryScreen extends ConsumerWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksAsync = ref.watch(sortedBooksProvider);
    final viewMode = ref.watch(viewModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Library'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showSearch(context, ref),
          ),
          IconButton(
            icon: const Icon(Icons.collections_bookmark_outlined),
            onPressed: () => context.goNamed(RouteNames.collections),
          ),
          IconButton(
            icon: const Icon(Icons.bar_chart),
            onPressed: () => context.goNamed(RouteNames.statistics),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.goNamed(RouteNames.settings),
          ),
          IconButton(
            icon: Icon(
              viewMode == ViewMode.grid ? Icons.list : Icons.grid_view,
            ),
            onPressed: () => ref.read(viewModeProvider.notifier).state =
                viewMode == ViewMode.grid ? ViewMode.list : ViewMode.grid,
          ),
        ],
      ),
      body: Column(
        children: [
          const SortFilterBar(),
          Expanded(
            child: booksAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
              data: (books) {
                if (books.isEmpty) {
                  return _EmptyLibrary(onImport: () => _importBook(ref));
                }
                if (viewMode == ViewMode.grid) {
                  return GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 160,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: books.length,
                    itemBuilder: (ctx, i) => BookGridItem(book: books[i]),
                  );
                } else {
                  return ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (ctx, i) => BookListItem(book: books[i]),
                  );
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _importBook(ref),
        icon: const Icon(Icons.add),
        label: const Text('Import'),
      ),
    );
  }

  Future<void> _importBook(WidgetRef ref) async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['epub', 'pdf', 'txt', 'cbz', 'cbr', 'mobi'],
    );
    if (result == null) return;
    for (final file in result.files) {
      if (file.path != null) {
        await ref
            .read(importBookProvider.notifier)
            .importBook(file.path!);
      }
    }
  }

  void _showSearch(BuildContext context, WidgetRef ref) {
    showSearch(
      context: context,
      delegate: _BookSearchDelegate(ref),
    );
  }
}

class _EmptyLibrary extends StatelessWidget {
  final VoidCallback onImport;
  const _EmptyLibrary({required this.onImport});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.menu_book,
              size: 80, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 16),
          Text('Your library is empty',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          const Text('Import EPUB, PDF, TXT, or CBZ files to get started'),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: onImport,
            icon: const Icon(Icons.add),
            label: const Text('Import Books'),
          ),
        ],
      ),
    );
  }
}

class _BookSearchDelegate extends SearchDelegate<void> {
  final WidgetRef ref;

  _BookSearchDelegate(this.ref);

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = '',
        ),
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) {
    ref.read(searchQueryProvider.notifier).state = query;
    return _buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    ref.read(searchQueryProvider.notifier).state = query;
    return _buildSearchResults(context);
  }

  Widget _buildSearchResults(BuildContext context) {
    final booksAsync = ref.watch(sortedBooksProvider);
    return booksAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('$e')),
      data: (books) => ListView.builder(
        itemCount: books.length,
        itemBuilder: (ctx, i) => BookListItem(book: books[i]),
      ),
    );
  }
}
