import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/reader_provider.dart';

class ChapterDrawer extends ConsumerWidget {
  final ScrollController scrollController;
  const ChapterDrawer({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapters = ref.watch(currentChaptersProvider);
    final currentIdx = ref.watch(currentChapterIndexProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Table of Contents',
              style: Theme.of(context).textTheme.titleLarge),
        ),
        const Divider(height: 1),
        Expanded(
          child: chapters.isEmpty
              ? const Center(child: Text('No chapters available'))
              : ListView.builder(
                  controller: scrollController,
                  itemCount: chapters.length,
                  itemBuilder: (ctx, i) {
                    final chapter = chapters[i];
                    return ListTile(
                      selected: i == currentIdx,
                      title: Text(chapter.title),
                      leading: i == currentIdx
                          ? const Icon(Icons.bookmark, size: 16)
                          : null,
                      onTap: () {
                        ref
                            .read(currentChapterIndexProvider.notifier)
                            .state = i;
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
        ),
      ],
    );
  }
}
