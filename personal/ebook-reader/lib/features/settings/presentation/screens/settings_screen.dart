import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../providers/settings_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          _SectionHeader('Reading'),
          ListTile(
            leading: const Icon(Icons.font_download_outlined),
            title: const Text('Reading Settings'),
            subtitle: const Text('Font, size, margins, spacing'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.goNamed(RouteNames.readingSettings),
          ),
          ListTile(
            leading: const Icon(Icons.palette_outlined),
            title: const Text('Display & Themes'),
            subtitle: const Text('Color themes, brightness, blue light filter'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.goNamed(RouteNames.displaySettings),
          ),
          ListTile(
            leading: const Icon(Icons.touch_app_outlined),
            title: const Text('Gesture Controls'),
            subtitle: const Text('Tap zones, swipe actions'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.goNamed(RouteNames.gestureSettings),
          ),
          ListTile(
            leading: const Icon(Icons.record_voice_over_outlined),
            title: const Text('Text-to-Speech'),
            subtitle: const Text('Voice, speed, language'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.goNamed(RouteNames.ttsSettings),
          ),
          _SectionHeader('Appearance'),
          ListTile(
            leading: const Icon(Icons.dark_mode_outlined),
            title: const Text('App Theme'),
            trailing: DropdownButton<ThemeMode>(
              value: themeMode,
              underline: const SizedBox.shrink(),
              items: const [
                DropdownMenuItem(
                    value: ThemeMode.system, child: Text('System')),
                DropdownMenuItem(
                    value: ThemeMode.light, child: Text('Light')),
                DropdownMenuItem(value: ThemeMode.dark, child: Text('Dark')),
              ],
              onChanged: (m) {
                if (m != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(m);
                }
              },
            ),
          ),
          _SectionHeader('Backup & Sync'),
          ListTile(
            leading: const Icon(Icons.cloud_outlined),
            title: const Text('Cloud Sync'),
            subtitle: const Text('Google Drive, Dropbox, WebDAV'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.goNamed(RouteNames.syncSettings),
          ),
          _SectionHeader('About'),
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Version'),
            trailing: Text('1.0.0'),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
