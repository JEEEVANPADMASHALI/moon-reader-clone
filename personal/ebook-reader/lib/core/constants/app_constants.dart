class AppConstants {
  static const String appName = 'Ebook Reader';
  static const String appVersion = '1.0.0';

  // Hive box names
  static const String settingsBox = 'settings';
  static const String readingSettingsBox = 'reading_settings';
  static const String gestureConfigBox = 'gesture_config';

  // Hive keys
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language';
  static const String autoSyncKey = 'auto_sync';
  static const String biometricLockKey = 'biometric_lock';

  // Supported formats
  static const List<String> supportedFormats = [
    'epub', 'pdf', 'txt', 'cbz', 'cbr', 'mobi', 'azw3',
  ];

  static const List<String> ebookExtensions = [
    '.epub', '.pdf', '.txt', '.cbz', '.cbr', '.mobi', '.azw3',
  ];
}
