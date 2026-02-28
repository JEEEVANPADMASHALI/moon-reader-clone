import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/tts_provider.dart';

class TtsControlBar extends ConsumerWidget {
  final String currentPageText;
  const TtsControlBar({super.key, required this.currentPageText});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPlaying = ref.watch(ttsPlayingProvider);
    final settings = ref.watch(ttsSettingsProvider);

    return Material(
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            IconButton(
              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
              onPressed: () {
                final actions = ref.read(ttsActionsProvider);
                if (isPlaying) {
                  actions.pause();
                } else {
                  actions.speakText(currentPageText);
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.stop),
              onPressed: () => ref.read(ttsActionsProvider).stop(),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Speed: ${settings.speed.toStringAsFixed(1)}x',
                      style: const TextStyle(fontSize: 12)),
                  Slider(
                    value: settings.speed,
                    min: 0.5,
                    max: 3.0,
                    divisions: 25,
                    onChanged: (v) =>
                        ref.read(ttsSettingsProvider.notifier).setSpeed(v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
