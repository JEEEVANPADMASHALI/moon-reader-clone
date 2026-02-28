# Ebook Reader — Project Planning Document

> **Purpose:** This document captures the full project state, architecture decisions, and development roadmap.
> It is intended as a handoff document for continuing development on a new environment (VPS + Claude Code).

---

## 1. Project Overview

A **full-featured e-book reader app** built with Flutter — targeting feature parity with Moon Reader Pro.

- **Platform targets:** Android (primary), iOS, macOS
- **Flutter SDK:** `^3.11.0`
- **State management:** Riverpod
- **Navigation:** GoRouter
- **Database:** Drift (SQLite ORM)

---

## 2. Repository Structure

```
ebook-reader/
├── lib/
│   ├── main.dart               # App entry point — Hive + Drift init
│   ├── app.dart                # Root widget — GoRouter + Material 3 theme
│   ├── core/
│   │   ├── constants/          # App, reading, and theme constants
│   │   ├── database/           # Drift DB config, tables, DAOs
│   │   ├── router/             # GoRouter setup + route name constants
│   │   ├── theme/              # Light/dark Material 3 themes
│   │   └── utils/              # File format detection utilities
│   └── features/
│       ├── library/            # Book library management
│       ├── reader/             # Core reading experience (multi-format)
│       ├── annotations/        # Highlights & bookmarks
│       ├── settings/           # All settings screens + providers
│       ├── tts/                # Text-to-speech engine
│       ├── statistics/         # Reading stats + charts
│       └── sync/               # Cloud sync (Google Drive, WebDAV)
├── assets/                     # Fonts, icons, etc.
├── android/
├── ios/
├── macos/
├── pubspec.yaml
└── PLANNING.md                 # This file
```

**Each feature follows Clean Architecture:**
```
feature/
├── domain/
│   ├── entities/       # Freezed immutable models
│   └── repositories/   # Abstract interfaces
├── data/
│   ├── datasources/    # Local DB access
│   └── repositories/   # Concrete implementations
└── presentation/
    ├── screens/        # Routed full-screen widgets
    ├── providers/      # Riverpod providers/notifiers
    └── widgets/        # Reusable UI components
```

---

## 3. Tech Stack

| Concern | Package | Notes |
|---|---|---|
| State management | `flutter_riverpod` ^2.5.1 | Riverpod + code gen |
| Navigation | `go_router` ^13.2.0 | Declarative routing |
| Database | `drift` ^2.18.0 + `drift_sqflite` | SQLite ORM with DAOs |
| Immutable models | `freezed_annotation` ^2.4.1 | Code-generated entities |
| EPUB rendering | `epub_view` | CFI-based position tracking |
| PDF rendering | `pdfrx` ^1.0.70 | Page-based, gesture nav |
| Text-to-speech | `flutter_tts` ^4.0.2 | Platform TTS |
| Settings persistence | `hive_flutter` ^1.1.0 | Key-value store for preferences |
| File picking | `file_picker` ^8.0.3 | Import books |
| Archive handling | `archive` ^3.6.1 | CBZ/CBR image extraction |
| Charts | `fl_chart` ^0.68.0 | Statistics visualizations |
| Brightness | `screen_brightness` ^0.2.2+1 | System brightness control |
| Wakelock | `wakelock_plus` ^1.2.5 | Keep screen on while reading |
| Sensors | `sensors_plus` ^5.0.1 | Shake-to-toggle TTS |
| Google Drive sync | `googleapis` ^13.2.0 | Cloud sync |
| WebDAV sync | `webdav_client` | Self-hosted sync |
| Page flip anim | `page_flip` | Book-style page turn animation |
| UI extras | `google_fonts`, `flutter_colorpicker` | Fonts and color pickers |

---

## 4. Database Schema

```
books_table
  id, title, author, filePath, coverPath, format, fileSize
  totalPages, currentPage, currentCfi, scrollOffset
  totalReadingSeconds, isFinished, lastReadAt, addedAt
  description, language, publisher, isbn, year

bookmarks_table
  id, bookId (FK→books), pageIndex, cfi, title, excerpt, createdAt

highlights_table
  id, bookId (FK→books), startCfi, endCfi, color, type
  selectedText, pageIndex, createdAt

notes_table
  id, highlightId (FK→highlights), content, createdAt, updatedAt

reading_stats_table
  id, bookId (FK→books), sessionStart, sessionEnd
  pagesRead, wordsRead, wordsPerMinute

collections_table
  id, name, description, coverPath, createdAt
  book_collections_table (junction: bookId, collectionId)

tags_table
  id, name, color
  book_tags_table (junction: bookId, tagId)
```

---

## 5. Navigation Routes

```
/library                    → LibraryScreen (home)
/library/book/:id           → BookDetailScreen
/library/collections        → CollectionsScreen
/reader/:id                 → ReaderScreen
/statistics                 → StatisticsScreen
/settings                   → SettingsScreen
/settings/reading           → ReadingSettingsScreen
/settings/display           → DisplaySettingsScreen
/settings/gestures          → GestureSettingsScreen
/settings/tts               → TtsSettingsScreen
/settings/theme             → ThemePickerScreen
/settings/sync              → SyncSettingsScreen
```

---

## 6. Implementation Status

### ✅ Fully Implemented

#### Core Infrastructure
- `main.dart` — Hive box init, Drift DB init, ProviderScope
- `app.dart` — GoRouter integration, Material 3 theme, theme mode switching
- All constants (app, reading UI, 10 reading themes)
- Full Drift schema: all 7 tables + all DAOs (books, bookmarks, highlights, stats)
- All Freezed entities with JSON serialization
- GoRouter with all 13 routes wired up
- File format detection (extension + magic bytes for PDF, EPUB, CBZ, MOBI)

#### Library Feature
- Import books via file picker with metadata extraction from EPUB (title, author, cover, description, publisher, language)
- Cover image saved as JPEG to app directory
- Grid and list view toggle
- Sort by: title, author, last read, date added, progress
- Search books by title/author
- Book detail screen: cover, metadata, reading progress, delete confirmation
- Collections: create, list, empty state

#### Reader Feature
- **EPUB:** `epub_view` controller with CFI position save/restore, chapter tracking
- **PDF:** `pdfrx` with page save/restore, gesture page navigation
- **TXT:** Naive pagination (2000-char chunks), theme-aware rendering
- **CBZ:** Archive extraction, sorted image display, interactive viewer; CBR shows unsupported message
- 3×3 tap zone gesture system — configurable actions per zone
- Reading overlay: top bar (title + chapter name) + bottom bar (progress bar, settings)
- Brightness slider (left edge swipe)
- Blue light filter (amber overlay, configurable opacity)
- Chapter drawer (bottom sheet with chapter list)
- Wakelock (keep screen on while reading)
- Session tracking: start/end time, pages read, WPM recording to DB

#### Annotations
- Highlight creation popup: type (highlight/underline/strikethrough), color picker
- Bookmark panel: list with title/excerpt, delete, empty state
- Full CRUD via DAOs with JSON export

#### Settings
- Reading: font family, size (10–36pt), line spacing, margins — with live preview
- Display: reading theme picker (10 themes), blue light filter slider, page animation dropdown
- Gestures: 3×3 tap zone configurator with action picker, volume key toggle
- TTS: speed, pitch, volume sliders, shake-to-toggle switch
- Theme picker: grid of all 10 reading themes

#### Statistics
- 30-day reading history aggregated from sessions
- Bar chart: daily reading time
- Line chart: daily pages read
- Summary cards: total hours, total pages read

#### Text-to-Speech
- `flutter_tts` wrapper with play/pause/stop, speed/pitch/volume control
- Shake detection via accelerometer to toggle TTS
- Settings persisted to Hive
- Control bar UI with play/pause/stop + speed slider

---

### ⚠️ Partially Implemented

#### Cloud Sync (`features/sync/`)
- **Done:** UI skeleton — toggle on/off, provider selector (Google Drive, Dropbox, WebDAV), WebDAV credentials form, manual sync button
- **NOT done:** Actual sync logic — no OAuth flow, no file upload/download, no conflict resolution
- `googleapis` and `webdav_client` are in `pubspec.yaml` but unused in logic

---

### ❌ Not Yet Built (Planned Features)

| Feature | Priority | Notes |
|---|---|---|
| Cloud Sync backend | High | Google Drive OAuth + file sync; WebDAV upload/download |
| MOBI / AZW3 support | Medium | `archive` pkg may help; needs format parser |
| Search inside book | Medium | In-reader text search for EPUB/TXT |
| Annotations export | Medium | Export highlights/bookmarks as CSV or Markdown |
| Reading goals | Medium | Daily/weekly reading goals with progress notifications |
| Collections management | Medium | Add/remove books from collections in library screen |
| Tags support | Low | Tag-based filtering; DB schema exists, UI missing |
| Notes on highlights | Low | Notes table exists in DB; UI not built |
| App-wide search | Low | Search across all books + annotations |
| Backup/restore | Low | Local backup of DB + covers to zip file |
| Import from URL | Low | Download EPUB/PDF from a URL |
| Dictionary lookup | Low | Long-press word → dictionary/Wikipedia |
| Reading streaks | Low | Gamification on statistics screen |

---

## 7. Known Issues / Technical Debt

| Issue | Location | Notes |
|---|---|---|
| TXT pagination is naive | `txt_reader_widget.dart` | Fixed 2000-char chunks ignore word breaks and line endings |
| CBR not supported | `cbz_reader_widget.dart` | RAR extraction shows a message; implement unrar |
| Metadata extraction is EPUB-only | `local_book_datasource.dart` | PDF and TXT books get no author/title from file |
| No error boundary in reader | `reader_screen.dart` | Corrupt file crashes silently |
| Collections UI incomplete | `collections_screen.dart` | Can create collections but can't add books to them |
| Tags UI missing entirely | — | DB schema + junction table exist, no UI at all |
| Notes UI missing | — | `notes_table` exists, `highlight_popup.dart` has no note field |
| Sync logic is placeholder | `sync_settings_screen.dart` | All sync buttons are no-ops |

---

## 8. What To Do Next (Suggested Order)

### Phase 1 — Polish & Bug Fixes (Short term)
1. **Fix TXT pagination** — split on newlines/word boundaries, respect paragraphs
2. **PDF metadata extraction** — extract title/author from PDF document info
3. **Add books to collections** — wire up the collections UI to actually assign books
4. **Error handling in reader** — catch corrupt file errors, show user-friendly message
5. **Highlight notes** — add a text field to `highlight_popup.dart` to save to `notes_table`

### Phase 2 — Missing Core Features (Medium term)
6. **In-reader search** — search text within EPUB/TXT, jump to result
7. **Tags UI** — tag filter bar in library, tag management screen, assign tags to books
8. **Annotations export** — export all highlights for a book as Markdown/CSV
9. **Reading goals** — set daily page/minute targets, show progress on stats screen

### Phase 3 — Cloud Sync (Medium-High priority)
10. **Google Drive OAuth** — implement `googleapis_auth` sign-in flow
11. **Sync reading progress** — upload/download a JSON progress file on session end
12. **Sync annotations** — merge highlights/bookmarks across devices
13. **WebDAV sync** — implement upload/download to WebDAV server

### Phase 4 — Format Support & Power Features (Longer term)
14. **MOBI/AZW3 parser** — investigate Dart-side parsing or convert via tool
15. **CBR support** — integrate a RAR decoder (native plugin or server-side conversion)
16. **Dictionary lookup** — long-press word, show definition (offline dictionary or API)
17. **Backup/restore** — zip DB + covers, save to local storage or share

---

## 9. Development Environment Setup (VPS)

When picking up on a new machine:

```bash
# 1. Clone repo
git clone <your-remote> ebook-reader
cd ebook-reader

# 2. Install Flutter (if not installed)
# Follow: https://docs.flutter.dev/get-started/install/linux

# 3. Install dependencies
flutter pub get

# 4. Run code generation (REQUIRED — generates .g.dart and .freezed.dart files)
dart run build_runner build --delete-conflicting-outputs

# 5. Check for issues
flutter analyze

# 6. Run on connected device or emulator
flutter run
```

**Code generation must be re-run after any changes to:**
- Drift table/DAO files
- Freezed entity files
- Riverpod `@riverpod` annotated providers
- JSON serializable classes

---

## 10. Hive Boxes (Settings Storage)

These are the Hive box names used across the app (defined in `app_constants.dart`):

| Box name | Used for |
|---|---|
| `reading_settings` | Font, spacing, margins, theme, brightness, filters |
| `tts_settings` | Speed, pitch, volume, language, shake toggle |
| `app_settings` | Theme mode (system/light/dark) |

---

## 11. Riverpod Provider Map

| Provider | Location | Type |
|---|---|---|
| `appDatabaseProvider` | `main.dart` | `Provider<AppDatabase>` |
| `libraryProvider` | `library/presentation/providers/` | `AsyncNotifierProvider` |
| `sortModeProvider` | same | `StateProvider` |
| `viewModeProvider` | same | `StateProvider` |
| `searchQueryProvider` | same | `StateProvider` |
| `readerProvider` | `reader/presentation/providers/` | `AsyncNotifierProvider` |
| `readingSettingsProvider` | same | `NotifierProvider` |
| `annotationsProvider` | `annotations/presentation/providers/` | `StreamProvider` |
| `settingsProvider` | `settings/presentation/providers/` | `NotifierProvider` |
| `ttsProvider` | `tts/presentation/providers/` | `NotifierProvider` |

---

*Last updated: 2026-02-28*
