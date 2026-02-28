import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/library/presentation/screens/library_screen.dart';
import '../../features/library/presentation/screens/book_detail_screen.dart';
import '../../features/library/presentation/screens/collections_screen.dart';
import '../../features/reader/presentation/screens/reader_screen.dart';
import '../../features/statistics/presentation/screens/statistics_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/settings/presentation/screens/reading_settings_screen.dart';
import '../../features/settings/presentation/screens/display_settings_screen.dart';
import '../../features/settings/presentation/screens/gesture_settings_screen.dart';
import '../../features/settings/presentation/screens/tts_settings_screen.dart';
import '../../features/settings/presentation/screens/theme_picker_screen.dart';
import '../../features/sync/presentation/screens/sync_settings_screen.dart';
import 'route_names.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/library',
    routes: [
      GoRoute(
        path: '/library',
        name: RouteNames.library,
        builder: (ctx, state) => const LibraryScreen(),
      ),
      GoRoute(
        path: '/library/book/:id',
        name: RouteNames.bookDetail,
        builder: (ctx, state) => BookDetailScreen(
          bookId: int.parse(state.pathParameters['id']!),
        ),
      ),
      GoRoute(
        path: '/reader/:id',
        name: RouteNames.reader,
        builder: (ctx, state) => ReaderScreen(
          bookId: int.parse(state.pathParameters['id']!),
        ),
      ),
      GoRoute(
        path: '/library/collections',
        name: RouteNames.collections,
        builder: (ctx, state) => const CollectionsScreen(),
      ),
      GoRoute(
        path: '/statistics',
        name: RouteNames.statistics,
        builder: (ctx, state) => const StatisticsScreen(),
      ),
      GoRoute(
        path: '/settings',
        name: RouteNames.settings,
        builder: (ctx, state) => const SettingsScreen(),
        routes: [
          GoRoute(
            path: 'reading',
            name: RouteNames.readingSettings,
            builder: (ctx, state) => const ReadingSettingsScreen(),
          ),
          GoRoute(
            path: 'display',
            name: RouteNames.displaySettings,
            builder: (ctx, state) => const DisplaySettingsScreen(),
          ),
          GoRoute(
            path: 'gestures',
            name: RouteNames.gestureSettings,
            builder: (ctx, state) => const GestureSettingsScreen(),
          ),
          GoRoute(
            path: 'tts',
            name: RouteNames.ttsSettings,
            builder: (ctx, state) => const TtsSettingsScreen(),
          ),
          GoRoute(
            path: 'theme',
            name: RouteNames.themePicker,
            builder: (ctx, state) => const ThemePickerScreen(),
          ),
          GoRoute(
            path: 'sync',
            name: RouteNames.syncSettings,
            builder: (ctx, state) => const SyncSettingsScreen(),
          ),
        ],
      ),
    ],
  );
});
