# Quick Kick

Quick Kick is a Flutter mobile app prototype focused on a football-themed onboarding experience. The current implementation centers on the app launch flow, branding, and a three-step onboarding journey for introducing the product’s core concept: building teams, tracking matches, and enjoying the game.

## Technologies and packages

- Flutter SDK: ^3.13.5
- Dart / Flutter app structure
- Material Design UI components
- Cupertino icons package: `cupertino_icons: ^1.0.8`
- Development tools: `flutter_test`, `flutter_lints: ^6.0.0`
- Asset-based image resources stored under `assets/images/`

## Project structure

```text
quick_kick/
├── android/                # Android platform files
├── ios/                    # iOS platform files
├── linux/                  # Linux platform files
├── macos/                  # macOS platform files
├── web/                    # Web platform files
├── windows/                # Windows platform files
├── assets/
│   └── images/             # App image assets (image1.png to image6.png)
├── lib/
│   ├── app/
│   │   └── my_app.dart     # App entry and MaterialApp setup
│   ├── core/
│   │   └── resources/      # Shared style and route constants
│   │       ├── colors_manager.dart
│   │       ├── font_manager.dart
│   │       ├── height_manager.dart
│   │       ├── horizontal_manager.dart
│   │       ├── images_manager.dart
│   │       ├── padding_manager.dart
│   │       ├── routes_manager.dart
│   │       ├── size_manager.dart
│   │       ├── strings_manager.dart
│   │       ├── vertical_manager.dart
│   │       └── width_manager.dart
│   └── features/
│       ├── splash/
│       │   └── screens/
│       │       ├── splash_screen.dart
│       │       └── widget/
│       │           └── custom_widget_splash.dart
│       └── onboarding/
│           ├── screens/
│           │   ├── onboarding_screen1.dart
│           │   ├── onboarding_screen2.dart
│           │   └── onboarding_screen3.dart
│           └── widget/
│               ├── custom_widget_onboarding_screen1.dart
│               ├── custom_widget_onboarding_screen2.dart
│               └── custom_widget_onboarding_screen3.dart
├── analysis_options.yaml
├── pubspec.yaml
├── pubspec.lock
├── README.md
└── quick_kick.iml
```

## Implemented features and completed screens

### Splash screen
- `SplashScreen` is the app’s initial screen.
- It sets a green background using `ColorsManager.primaryColor`.
- It displays the `Quick Kick` logo and name using `CustomWidgetSplash`.
- After a 3-second delay, it navigates to onboarding using `pushReplacementNamed`.

### Onboarding flow
The app includes a three-screen onboarding sequence, all routed through `RoutesManager`.

1. `OnboardingScreen` (`onboarding_screen1.dart`)
   - Displays the first onboarding illustration (`image1.png`)
   - Title: `Build Your Team`
   - Description: team lineup and player organization
   - Includes a top-right `Skip` button
   - Shows a three-dot progress indicator with the first dot active
   - `Next` button navigates to onboarding screen 2

2. `OnboardingScreen2` (`onboarding_screen2.dart`)
   - Displays the second onboarding illustration (`image2.png`)
   - Title: `Never Miss Your Match`
   - Description: quick pitch booking and match opportunities
   - Includes a back arrow in the app bar to return to the previous screen
   - Shows a three-dot progress indicator with the second dot active
   - `Next` button navigates to onboarding screen 3

3. `OnboardingScreen3` (`onboarding_screen3.dart`)
   - Displays the third onboarding illustration (`image3.png`)
   - Title: `Enjoy The Game`
   - Description: playing football with friends and enjoying the moment
   - Includes a back arrow in the app bar
   - Shows a three-dot progress indicator with the third dot active
   - `Next` button is present but has no action assigned in the current implementation

### Additional implemented app elements
- Centralized resource management for colors, fonts, spacing, widths, heights, and strings.
- Route-based navigation between splash and onboarding screens.
- Asset-based visual design using six image files: `image1.png` through `image6.png`.
- A green primary color theme (`#4CAF50`) used across the onboarding and splash UI.

## Current implementation status

The project is currently in an early app prototype stage. The verified, implemented flow is:

- App launch -> Splash screen -> Onboarding screen 1 -> Onboarding screen 2 -> Onboarding screen 3

Completed work confirmed in the codebase:
- Splash screen
- Three onboarding screens

Not yet implemented in the current project:
- Authentication or user account flow
- Home screen / dashboard
- Match booking or scheduling functionality
- Team management or player management screens
- Data persistence or backend integration
- Business logic beyond the navigation and onboarding UI

The app is functional as a UI prototype, but it does not yet contain a complete end-user product flow beyond the onboarding experience.

## Relevant notes

- The `Skip` button on the first onboarding screen is rendered but currently has no click handler.
- The final onboarding screen’s `Next` button is present visually, but its `onPressed` callback is empty.
- The app uses a simple route map and custom resource managers rather than a full architecture with state management, services, or domain layers.
- The project is structured as a starter Flutter application with a strong focus on UI presentation and onboarding screen design.
