import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../reader/domain/entities/reading_settings.dart';
import '../../../reader/presentation/providers/reading_settings_provider.dart';

class GestureSettingsScreen extends ConsumerWidget {
  const GestureSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(readingSettingsProvider);
    final notifier = ref.read(readingSettingsProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Gesture Controls')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Tap Zone Configuration',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          const Text('Tap a zone to configure its action'),
          const SizedBox(height: 16),
          // 3x3 grid of tap zones
          AspectRatio(
            aspectRatio: 0.7,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).dividerColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        _ZoneTile(
                            label: 'Top Left',
                            action: settings.tapTopLeft,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapTopLeft: a))),
                        _ZoneTile(
                            label: 'Top Center',
                            action: settings.tapTopCenter,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapTopCenter: a))),
                        _ZoneTile(
                            label: 'Top Right',
                            action: settings.tapTopRight,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapTopRight: a))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        _ZoneTile(
                            label: 'Mid Left',
                            action: settings.tapMiddleLeft,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapMiddleLeft: a))),
                        _ZoneTile(
                            label: 'Mid Center',
                            action: settings.tapMiddleCenter,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapMiddleCenter: a))),
                        _ZoneTile(
                            label: 'Mid Right',
                            action: settings.tapMiddleRight,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapMiddleRight: a))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        _ZoneTile(
                            label: 'Bot Left',
                            action: settings.tapBottomLeft,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapBottomLeft: a))),
                        _ZoneTile(
                            label: 'Bot Center',
                            action: settings.tapBottomCenter,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapBottomCenter: a))),
                        _ZoneTile(
                            label: 'Bot Right',
                            action: settings.tapBottomRight,
                            onChanged: (a) => notifier
                                .update((s) => s.copyWith(tapBottomRight: a))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Volume Key Navigation'),
            subtitle: const Text(
                'Use volume buttons to turn pages (Android/iOS)'),
            value: settings.volumeKeyNavigation,
            onChanged: notifier.setVolumeKeyNavigation,
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}

class _ZoneTile extends StatelessWidget {
  final String label;
  final TapAction action;
  final void Function(TapAction) onChanged;

  const _ZoneTile({
    required this.label,
    required this.action,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => _pickAction(context),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).dividerColor, width: 0.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(label,
                  style: const TextStyle(fontSize: 10),
                  textAlign: TextAlign.center),
              const SizedBox(height: 4),
              Text(
                _actionLabel(action),
                style: TextStyle(
                    fontSize: 9,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _actionLabel(TapAction a) => switch (a) {
        TapAction.nextPage => 'Next',
        TapAction.prevPage => 'Prev',
        TapAction.toggleOverlay => 'Menu',
        TapAction.addBookmark => 'Bookmark',
        TapAction.showToc => 'TOC',
        TapAction.toggleTts => 'TTS',
        TapAction.none => 'None',
      };

  Future<void> _pickAction(BuildContext context) async {
    final result = await showDialog<TapAction>(
      context: context,
      builder: (ctx) => SimpleDialog(
        title: Text('Action for $label'),
        children: TapAction.values
            .map((a) => SimpleDialogOption(
                  onPressed: () => Navigator.pop(ctx, a),
                  child: Text(_actionLabel(a)),
                ))
            .toList(),
      ),
    );
    if (result != null) onChanged(result);
  }
}
