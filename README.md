# Bangla Habit Tracker

A habit tracking app for Bangla-language users: create habits, log days, and watch streaks build, with local storage and a theme that follows time of day.

## Features

- Create, edit, and delete habits with start periods and recurring schedules (v2.0 dialogs)
- Day-by-day habit log backed by SQLite (`sqflite`) with habits and days tables
- Habit details view with period rows and slidable actions
- Light/dark theme service that updates on app resume
- Emoji input for habits (`emoji_picker_flutter`), dependency injection via `get_it`

## Tech stack

Flutter · Dart · sqflite · GetIt · Provider · shared_preferences · flutter_slidable

## How to run

```bash
flutter pub get
flutter run
```

Requires a Flutter SDK (3.x recommended). Data is stored locally; no backend needed.

## License

MIT
