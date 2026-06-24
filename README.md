# TechCrunch Go — Flutter App

Generated from the AppVyte Native Blueprint. This is a real, compilable Flutter project structure
that targets both Android and iOS.

## Getting started

This repository is **Codemagic-ready** — the platform folders are regenerated on build, so no manual setup is needed.

```bash
# To run locally:
flutter create --project-name tech_crunch_go --platforms=android,ios .
flutter pub get
flutter run
```

To build installable artifacts, push this repo to Git and connect it to Codemagic — see `codemagic.yaml`.

## Structure
```
tech_crunch_go/
├── pubspec.yaml
├── README.md
└── lib/
    ├── main.dart
    ├── theme/
    │   └── app_theme.dart
    ├── navigation/
    │   ├── app_router.dart
    │   └── main_navigation.dart
    ├── models/
    │   ├── article.dart
    │   ├── event.dart
    │   └── user_profile.dart
    ├── services/
    │   ├── api_service.dart
    │   ├── article_service.dart
    │   ├── event_service.dart
    │   ├── user_profile_service.dart
    ├── widgets/
    │   ├── section_header.dart
    │   └── item_card.dart
    └── screens/
        ├── home_screen.dart
        ├── categories_screen.dart
        ├── article_details_screen.dart
        ├── tech_crunch_screen.dart
        ├── events_screen.dart
        ├── event_details_screen.dart
        ├── profile_screen.dart
        └── search_screen.dart
```

## What's included
- **Theme** — color tokens and typography from the blueprint design system.
- **Navigation** — bottom-tab shell + named-route table for every screen.
- **Models** — typed Dart models with `fromJson` / `toJson`, `displayTitle`/`displaySubtitle` getters, and realistic `seed` data.
- **Services** — `ApiService` + per-model repositories that fall back to seed data until a backend is connected.
- **Widgets** — reusable `SectionHeader` and `ItemCard`.
- **Screens** — 8 screens that render their own typed model data (list / detail / profile / dashboard / grid layouts).

> Next phase: compile this project into Android (.apk/.aab) and iOS (.ipa) artifacts.
