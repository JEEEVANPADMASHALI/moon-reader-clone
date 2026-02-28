import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

final _syncProviderKey = 'sync_provider';
final _syncEnabledKey = 'sync_enabled';

final syncProviderNameProvider =
    StateNotifierProvider<SyncProviderNotifier, String>((ref) {
  return SyncProviderNotifier();
});

class SyncProviderNotifier extends StateNotifier<String> {
  SyncProviderNotifier()
      : super(
            Hive.box('settings').get(_syncProviderKey, defaultValue: 'none')
                as String);

  void select(String provider) {
    state = provider;
    Hive.box('settings').put(_syncProviderKey, provider);
  }
}

final syncEnabledProvider =
    StateNotifierProvider<SyncEnabledNotifier, bool>((ref) {
  return SyncEnabledNotifier();
});

class SyncEnabledNotifier extends StateNotifier<bool> {
  SyncEnabledNotifier()
      : super(
            Hive.box('settings').get(_syncEnabledKey, defaultValue: false)
                as bool);

  void toggle(bool v) {
    state = v;
    Hive.box('settings').put(_syncEnabledKey, v);
  }
}

class SyncSettingsScreen extends ConsumerWidget {
  const SyncSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(syncProviderNameProvider);
    final enabled = ref.watch(syncEnabledProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Cloud Sync')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SwitchListTile(
            title: const Text('Enable Sync'),
            subtitle: const Text(
                'Sync reading positions, bookmarks and highlights'),
            value: enabled,
            onChanged: ref.read(syncEnabledProvider.notifier).toggle,
            contentPadding: EdgeInsets.zero,
          ),
          const Divider(),
          Text('Sync Provider',
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          IgnorePointer(
            ignoring: !enabled,
            child: RadioGroup<String>(
              groupValue: provider,
              onChanged: (v) {
                if (v != null) {
                  ref.read(syncProviderNameProvider.notifier).select(v);
                }
              },
              child: Column(
                children: [
                  for (final p in ['Google Drive', 'Dropbox', 'WebDAV'])
                    RadioListTile<String>(
                      title: Text(p),
                      value: p.toLowerCase().replaceAll(' ', '_'),
                    ),
                ],
              ),
            ),
          ),
          if (provider == 'webdav') ...[
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'WebDAV Server URL',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ],
          const SizedBox(height: 24),
          if (enabled)
            FilledButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Sync started...')),
                );
              },
              icon: const Icon(Icons.sync),
              label: const Text('Sync Now'),
            ),
        ],
      ),
    );
  }
}
