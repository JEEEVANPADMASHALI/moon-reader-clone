import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/library_provider.dart';

class SortFilterBar extends ConsumerWidget {
  const SortFilterBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortMode = ref.watch(sortModeProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: [
          const Text('Sort: ', style: TextStyle(fontWeight: FontWeight.w500)),
          for (final mode in SortMode.values)
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: FilterChip(
                label: Text(_label(mode)),
                selected: sortMode == mode,
                onSelected: (_) =>
                    ref.read(sortModeProvider.notifier).state = mode,
              ),
            ),
        ],
      ),
    );
  }

  String _label(SortMode mode) => switch (mode) {
        SortMode.title => 'Title',
        SortMode.author => 'Author',
        SortMode.lastRead => 'Last Read',
        SortMode.dateAdded => 'Date Added',
        SortMode.progress => 'Progress',
      };
}
