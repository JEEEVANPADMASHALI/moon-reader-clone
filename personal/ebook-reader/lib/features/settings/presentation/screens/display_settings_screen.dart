import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/theme_constants.dart';
import '../../../reader/domain/entities/reading_settings.dart';
import '../../../reader/presentation/providers/reading_settings_provider.dart';

class DisplaySettingsScreen extends ConsumerWidget {
  const DisplaySettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(readingSettingsProvider);
    final notifier = ref.read(readingSettingsProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Display & Themes')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Reading Theme', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ThemeConstants.readingThemes.length,
              itemBuilder: (ctx, i) {
                final theme = ThemeConstants.readingThemes[i];
                final selected = theme.id == settings.themeId;
                return GestureDetector(
                  onTap: () => notifier.setThemeId(theme.id),
                  child: Container(
                    width: 72,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: theme.backgroundColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: selected
                            ? Theme.of(context).colorScheme.primary
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Aa',
                            style: TextStyle(
                                color: theme.textColor,
                                fontWeight: FontWeight.bold)),
                        Text(theme.name,
                            style: TextStyle(
                                color: theme.textColor, fontSize: 10)),
                        if (selected)
                          Icon(Icons.check_circle,
                              size: 14,
                              color: Theme.of(context).colorScheme.primary),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          Text('Blue Light Filter',
              style: Theme.of(context).textTheme.titleSmall),
          Slider(
            value: settings.blueLightFilter,
            min: 0.0,
            max: 0.95,
            divisions: 19,
            label: '${(settings.blueLightFilter * 100).round()}%',
            onChanged: notifier.setBlueLightFilter,
          ),
          const SizedBox(height: 16),
          Text('Page Animation',
              style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          DropdownButtonFormField<PageAnimationType>(
            initialValue: settings.pageAnimation,
            decoration: const InputDecoration(border: OutlineInputBorder()),
            items: PageAnimationType.values
                .map((t) => DropdownMenuItem<PageAnimationType>(
                    value: t, child: Text(t.name.toUpperCase())))
                .toList(),
            onChanged: (v) {
              if (v != null) notifier.setPageAnimation(v);
            },
          ),
        ],
      ),
    );
  }
}
