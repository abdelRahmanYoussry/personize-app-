# App Icon Setup Guide

## Overview
This guide explains how to change the app icon for both Android and iOS platforms.

## Prerequisites
The `flutter_launcher_icons` package has been added to the project.

## Steps to Change App Icon

### 1. Prepare Your Icon Image

Create your app icon with the following specifications:
- **Size**: 1024x1024 pixels (recommended)
- **Format**: PNG with transparency (if needed)
- **Shape**: Square (the system will apply rounded corners automatically)

### 2. Place Icon Files

Place your icon files in the `assets/icons/` folder:

1. **`app_icon.png`** - The main app icon (1024x1024 px)
2. **`app_icon_foreground.png`** - For Android adaptive icons (foreground layer, 1024x1024 px with padding)

> **Note for Adaptive Icons (Android 8.0+):**
> - The foreground image should have ~20% padding around the actual icon content
> - The background color is set to `#6C63FF` (primary purple) in pubspec.yaml

### 3. Run the Icon Generator

After placing your icon files, run these commands in terminal:

```bash
# Get dependencies
flutter pub get

# Generate icons
dart run flutter_launcher_icons
```

### 4. Verify the Icons

- **Android**: Check `android/app/src/main/res/` folders (mipmap-*)
- **iOS**: Check `ios/Runner/Assets.xcassets/AppIcon.appiconset/`

## Configuration (pubspec.yaml)

The current configuration in `pubspec.yaml`:

```yaml
flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/icons/app_icon.png"
  min_sdk_android: 21
  adaptive_icon_background: "#6C63FF"
  adaptive_icon_foreground: "assets/icons/app_icon_foreground.png"
  remove_alpha_ios: true
```

### Configuration Options

| Option | Description |
|--------|-------------|
| `android` | Generate Android icons |
| `ios` | Generate iOS icons |
| `image_path` | Path to the main icon image |
| `adaptive_icon_background` | Background color for Android adaptive icons |
| `adaptive_icon_foreground` | Foreground image for Android adaptive icons |
| `remove_alpha_ios` | Remove transparency for iOS (required by App Store) |
| `min_sdk_android` | Minimum Android SDK version |

## Icon Design Tips

1. **Keep it Simple**: The icon will be displayed at various sizes, so simple designs work best
2. **Use Bold Colors**: The app uses a purple theme (#6C63FF), consider incorporating this
3. **Add Padding**: For adaptive icons, ensure 20% padding around the main content
4. **Test at Small Sizes**: Preview your icon at 48x48 px to ensure it's recognizable

## Suggested Icon Ideas for Personality App

- Brain/Mind icon with gradient colors
- Abstract personality symbol
- Quiz/Question mark with modern design
- Human silhouette with colorful elements

## Troubleshooting

### Icons not updating on device
- Uninstall the app completely
- Run `flutter clean`
- Rebuild and reinstall

### Android adaptive icons not showing correctly
- Ensure foreground image has proper padding
- Check that background color is a valid hex color

### iOS icon has white corners
- Ensure `remove_alpha_ios: true` is set
- Use a fully opaque background in your icon

