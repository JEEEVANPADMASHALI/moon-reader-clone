import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';

class ReadingProgressBar extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final double progress;
  final String title;

  const ReadingProgressBar({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.progress,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final pageStr = totalPages > 0
        ? '${currentPage + 1} / $totalPages'
        : 'Page ${currentPage + 1}';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LinearProgressIndicator(value: progress.clamp(0.0, 1.0), minHeight: 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Text(pageStr, style: Theme.of(context).textTheme.bodySmall),
              const Spacer(),
              Text(
                '${(progress * 100).toStringAsFixed(1)}%',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(width: 12),
              IconButton(
                icon: const Icon(Icons.settings_outlined, size: 20),
                onPressed: () =>
                    context.pushNamed(RouteNames.readingSettings),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
