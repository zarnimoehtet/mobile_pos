# mobile_pos

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Build bundle
### Upload to playstore with `--flavor prod`
```
flutter build appbundle --target-platform android-arm,android-arm64,android-x64 --flavor prod -t lib/main_prod.dart
```

## Build release apk
### Dev
```
flutter build apk --split-per-abi --flavor dev -t lib/main_dev.dart
```
### Prod
```
flutter build apk --split-per-abi --flavor prod -t lib/main_prod.dart
```

## Generate build_runner
```
flutter packages pub run build_runner build --delete-conflicting-outputs
```