import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/reading_constants.dart';
import '../../../reader/presentation/providers/reading_settings_provider.dart';

class ReadingSettingsScreen extends ConsumerWidget {
  const ReadingSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(readingSettingsProvider);
    final notifier = ref.read(readingSettingsProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Reading Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Preview
          Container(
            height: 120,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).dividerColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'The quick brown fox jumps over the lazy dog. '
              'Reading is a journey into imagination and knowledge.',
              style: TextStyle(
                fontFamily: settings.fontFamily,
                fontSize: settings.fontSize,
                height: settings.lineSpacing,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Font family
          Text('Font Family',
              style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            initialValue: settings.fontFamily,
            decoration: const InputDecoration(border: OutlineInputBorder()),
            items: const [
              DropdownMenuItem(
                  value: 'Noto Serif', child: Text('Noto Serif')),
              DropdownMenuItem(
                  value: 'Merriweather', child: Text('Merriweather')),
              DropdownMenuItem(value: 'Lora', child: Text('Lora')),
              DropdownMenuItem(
                  value: 'Georgia', child: Text('Georgia (System)')),
              DropdownMenuItem(
                  value: 'sans-serif', child: Text('Sans-Serif')),
              DropdownMenuItem(
                  value: 'monospace', child: Text('Monospace')),
            ],
            onChanged: (v) {
              if (v != null) notifier.setFontFamily(v);
            },
          ),
          const SizedBox(height: 24),

          _SliderSetting(
            label: 'Font Size',
            value: settings.fontSize,
            min: ReadingConstants.minFontSize,
            max: ReadingConstants.maxFontSize,
            divisions: 26,
            display: '${settings.fontSize.round()}pt',
            onChanged: notifier.setFontSize,
          ),
          const SizedBox(height: 16),

          _SliderSetting(
            label: 'Line Spacing',
            value: settings.lineSpacing,
            min: ReadingConstants.minLineSpacing,
            max: ReadingConstants.maxLineSpacing,
            divisions: 20,
            display: settings.lineSpacing.toStringAsFixed(1),
            onChanged: notifier.setLineSpacing,
          ),
          const SizedBox(height: 16),

          _SliderSetting(
            label: 'Horizontal Margin',
            value: settings.horizontalMargin,
            min: 0,
            max: 64,
            divisions: 32,
            display: '${settings.horizontalMargin.round()}px',
            onChanged: (v) =>
                notifier.setMargins(v, settings.verticalMargin),
          ),
          const SizedBox(height: 16),

          SwitchListTile(
            title: const Text('Keep Screen On'),
            subtitle: const Text('Prevents screen from sleeping while reading'),
            value: settings.keepScreenOn,
            onChanged: notifier.setKeepScreenOn,
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}

class _SliderSetting extends StatelessWidget {
  final String label;
  final double value;
  final double min;
  final double max;
  final int divisions;
  final String display;
  final void Function(double) onChanged;

  const _SliderSetting({
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.divisions,
    required this.display,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: Theme.of(context).textTheme.titleSmall),
            Text(display, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        Slider(
          value: value,
          min: min,
          max: max,
          divisions: divisions,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
