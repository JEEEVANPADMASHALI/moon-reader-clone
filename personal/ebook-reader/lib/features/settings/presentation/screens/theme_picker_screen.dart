import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/theme_constants.dart';
import '../../../reader/presentation/providers/reading_settings_provider.dart';

class ThemePickerScreen extends ConsumerWidget {
  const ThemePickerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(readingSettingsProvider);
    final notifier = ref.read(readingSettingsProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Reading Theme')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.5,
        ),
        itemCount: ThemeConstants.readingThemes.length,
        itemBuilder: (ctx, i) {
          final theme = ThemeConstants.readingThemes[i];
          final selected = theme.id == settings.themeId;

          return GestureDetector(
            onTap: () => notifier.setThemeId(theme.id),
            child: Container(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: selected
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade300,
                  width: selected ? 3 : 1,
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(theme.name,
                          style: TextStyle(
                              color: theme.textColor,
                              fontWeight: FontWeight.bold)),
                      const Spacer(),
                      if (selected)
                        Icon(Icons.check_circle,
                            color: Theme.of(context).colorScheme.primary,
                            size: 18),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'The quick brown fox...',
                    style: TextStyle(
                        color: theme.textColor,
                        fontSize: 11),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
