import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../tts/presentation/providers/tts_provider.dart';

class TtsSettingsScreen extends ConsumerWidget {
  const TtsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(ttsSettingsProvider);
    final notifier = ref.read(ttsSettingsProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Text-to-Speech')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Speed', style: Theme.of(context).textTheme.titleSmall),
          Slider(
            value: settings.speed,
            min: 0.5,
            max: 3.0,
            divisions: 25,
            label: '${settings.speed.toStringAsFixed(1)}x',
            onChanged: notifier.setSpeed,
          ),
          Text('Pitch', style: Theme.of(context).textTheme.titleSmall),
          Slider(
            value: settings.pitch,
            min: 0.5,
            max: 2.0,
            divisions: 15,
            label: settings.pitch.toStringAsFixed(1),
            onChanged: notifier.setPitch,
          ),
          Text('Volume', style: Theme.of(context).textTheme.titleSmall),
          Slider(
            value: settings.volume,
            min: 0.0,
            max: 1.0,
            divisions: 10,
            label: '${(settings.volume * 100).round()}%',
            onChanged: notifier.setVolume,
          ),
          SwitchListTile(
            title: const Text('Shake to Toggle'),
            subtitle: const Text('Shake device to start/stop TTS'),
            value: settings.shakeToToggle,
            onChanged: (v) =>
                notifier.setShakeToToggle(v),
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
