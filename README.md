# Quick Kick

Quick Kick is a cross-platform Flutter interface for a football and stadium booking application. The current project contains splash, onboarding, authentication, password recovery, home, map, notification, calendar, drawer, stadium, booking, and promo UI.

This repository is primarily a UI implementation. It does not include a backend, authentication service, database, booking API, or working social-login integration.

## Current Features

### Implemented UI

- Splash screen with a three-second replacement navigation to onboarding.
- Three onboarding pages with illustrations, progress indicators, back navigation, and skip/next actions.
- Login screen with email and password fields, password visibility control, remember-me checkbox, forgot-password navigation, and social-login buttons.
- Sign-up screen with email, password, confirmation-password, and social-login controls.
- Forgot-password email and phone variants.
- OTP entry screen with a four-field numeric controller flow.
- Reset-password form.
- Home screen with:
  - Welcome text
  - Promotional card
  - Upcoming booking card
  - Two stadium cards
  - Popular-near-you section
- Bottom navigation for Home, Map, Notifications, and Calendar.
- Home drawer with profile, settings, support, and logout controls.
- Static map image with a search field.
- Notification list with five predefined notification cards.
- Calendar/booking list with paid and cancelled booking cards.

### Local Interactive Behavior

- Password fields support showing and hiding text.
- The login remember-me checkbox changes local widget state.
- Login and sign-up social buttons are visual controls; their callbacks are currently empty or navigate only where implemented.
- OTP fields move focus to the next or previous field.
- Navigation buttons use named routes or `Navigator` methods.
- Bottom navigation changes the locally assembled home page using `setState`.

### Not Implemented

- User authentication or account creation
- Backend/API communication
- Form validation
- Password recovery processing
- Real OTP verification
- Persistent login or remember-me storage
- Real map and location services
- Stadium search or filtering
- Booking creation or cancellation
- Payment processing
- Notification state or notification actions
- Calendar interaction
- Profile, settings, and support screens
- Real social-login providers

## Technologies

- Flutter
- Dart
- Material widgets
- Named-route navigation
- Feature-based source organization
- PNG image assets

The Dart SDK constraint in `pubspec.yaml` is `^3.13.5`.

## Dependencies

Declared runtime dependencies:

- `cupertino_icons: ^1.0.8`
- `pinput: ^7.0.0`

Declared development dependencies:

- `flutter_test`
- `flutter_lints: ^6.0.0`

No source file currently uses `pinput` or `cupertino_icons`. The application uses Material widgets and icon classes directly.

## Project Architecture

The project uses a lightweight feature-based architecture:

- `lib/core` contains shared widgets and resource managers.
- `lib/features` contains feature-specific screens, widgets, and models.
- `lib/main.dart` starts the application.
- `lib/my_app.dart` creates `MaterialApp`, sets the initial route, and registers routes.
- `assets/images` contains application images.
- `test` contains Flutter widget tests.
- Platform directories contain the generated Flutter runner projects.

The project does not use a state-management package or a service/repository architecture. Screen and widget state is managed locally with `StatefulWidget`, `setState`, static models, or const data.

## Folder Structure

```text
quick_kick/
├── android/
├── assets/
│   └── images/
├── ios/
├── lib/
│   ├── main.dart
│   ├── my_app.dart
│   ├── core/
│   │   ├── resources/
│   │   └── widgets/
│   └── features/
│       ├── Forgetpassword/
│       │   ├── screen/
│       │   └── widget/
│       ├── home/
│       │   ├── model/
│       │   ├── screen/
│       │   └── widgets/
│       ├── login/
│       │   ├── screen/
│       │   └── widgets/
│       ├── onboarding/
│       │   ├── screen/
│       │   └── widgets/
│       ├── sign_up/
│       │   ├── screen/
│       │   └── widgets/
│       └── splash/
│           ├── screen/
│           └── widgets/
├── linux/
├── macos/
├── test/
├── web/
├── windows/
├── analysis_options.yaml
├── pubspec.yaml
└── README.md
```

Generated build output and IDE metadata are excluded from the application source description.

## Important Source Files

### Entry Point

- `lib/main.dart` calls `runApp(MyApp())`.
- `lib/my_app.dart` disables the debug banner, sets the splash route as the initial route, and registers named routes.

### Core Resources

- `lib/core/resources/routes_manager.dart` declares route names and their widget builders.
- `lib/core/resources/colors_manager.dart` contains shared application colors.
- `lib/core/resources/font_manager.dart` contains shared font sizes and weights.
- `lib/core/resources/height_manager.dart` contains shared height values.
- `lib/core/resources/width_manager.dart` contains shared width values.
- `lib/core/resources/horizontal_manager.dart` contains horizontal spacing values.
- `lib/core/resources/vertical_manager.dart` contains vertical spacing values.
- `lib/core/resources/padding_manager.dart` contains shared padding values.
- `lib/core/resources/size_manager.dart` contains shared icon, radius, and other size values.
- `lib/core/resources/images_manager.dart` maps the bundled image assets.
- `lib/core/resources/strings_manager.dart` contains application text and labels.

### Core Reusable Widgets

- `lib/core/widgets/auth_button.dart` renders the full-width authentication button.
- `lib/core/widgets/auth_text_field.dart` renders email/password text fields and local password visibility state.
- `lib/core/widgets/auth_or_divider.dart` renders the shared "or" divider.
- `lib/core/widgets/social_login_section.dart` renders the Facebook, Google, and Apple visual controls.

### Splash

- `lib/features/splash/screen/splash_screen.dart` starts a three-second navigation timer.
- `lib/features/splash/widgets/custom_widget_splash.dart` renders the splash image and app name.

### Onboarding

- `lib/features/onboarding/screen/` contains the three screen shells.
- `lib/features/onboarding/widgets/` contains their reusable page content.
- The final onboarding action clears the navigation stack and opens the login route.

### Login

- `lib/features/login/screen/login_screen.dart` assembles the login header and form inside a scroll view.
- `lib/features/login/widgets/login_header.dart` renders the login/sign-up switch header.
- `lib/features/login/widgets/login_form.dart` renders fields, remember-me state, forgot-password navigation, and social controls.

### Sign-Up

- `lib/features/sign_up/screen/signup_screen.dart` assembles the sign-up header and form.
- `lib/features/sign_up/widgets/signup_header.dart` renders the login/sign-up switch header.
- `lib/features/sign_up/widgets/signup_form.dart` renders sign-up fields and social controls.

### Password Recovery

- `lib/features/Forgetpassword/screen/` contains email, phone, OTP, and reset-password screens.
- `lib/features/Forgetpassword/widget/` contains the supporting content widgets.
- The screens navigate to one another with named routes or `Navigator.pop`/replacement operations.

### Home

- `lib/features/home/screen/home_screen.dart` owns bottom navigation state and swaps among Home, Map, Notifications, and Calendar pages.
- `lib/features/home/screen/home_content.dart` assembles the home page content.
- `lib/features/home/screen/map_screen.dart` displays the map image and a search field.
- `lib/features/home/screen/notifications_screen.dart` displays predefined notifications.
- `lib/features/home/screen/calendar_screen.dart` displays static booking data.

### Home Models and Widgets

- `lib/features/home/model/calendar_booking_model.dart` defines booking fields and paid/cancelled status.
- `lib/features/home/model/notification_card_model.dart` defines notification title, description, and time data.
- `lib/features/home/model/stadium_card_model.dart` defines stadium name, image, rating, and pitch label data.
- `lib/features/home/widgets/home_booking_card.dart` renders the home booking card.
- `lib/features/home/widgets/stadium_cards.dart` renders the two stadium cards.
- `lib/features/home/widgets/home_promo_card.dart` renders the promotional card.
- `lib/features/home/widgets/booking_card.dart` renders calendar booking cards.
- `lib/features/home/widgets/coustom_notificationcard.dart` renders notification cards.
- `lib/features/home/widgets/home_drawer.dart` renders the home drawer.

## Navigation and Routing

Routes are registered in `lib/core/resources/routes_manager.dart` and use string constants from `RouteName`.

The primary route flow is:

```text
Splash
  -> Onboarding 1
  -> Onboarding 2
  -> Onboarding 3
  -> Login

Login
  -> Sign-up
  -> Forgot Password (email)
  -> Forgot Password (phone)
  -> OTP
  -> Reset Password
  -> Home

Home
  -> Map
  -> Notifications
  -> Calendar
```

The onboarding routes use `pushNamed`. The final onboarding action uses `pushNamedAndRemoveUntil` so the onboarding route stack is removed. Authentication form buttons use `pushReplacementNamed` or `pushNamed` where configured.

The home bottom navigation does not use named routes for section changes; it stores a selected index in `_HomeScreenState` and selects a preassembled widget from a local page list.

## Resources and Assets

### Resource Managers

The project centralizes constants for:

- Colors
- Font sizes and weights
- Heights
- Widths
- Horizontal spacing
- Vertical spacing
- Padding
- General sizes
- Image paths
- Text and labels

Resource values are used directly by widgets rather than by a runtime theme or design system.

### Images

The `assets/images` directory contains:

| Asset | Current use |
| --- | --- |
| `image1.png` | Onboarding 1 illustration |
| `image2.png` | Onboarding 2 illustration |
| `image3.png` | Onboarding 3 illustration |
| `image4.png` | Map screen background |
| `image5.png` | Stadium and home booking card imagery |
| `image6.png` | Splash icon |

All image assets are declared through the `assets/images/` directory entry in `pubspec.yaml`.

### Fonts

No custom font family is declared in `pubspec.yaml`. The project uses the default Flutter fonts and Material icons.

## State Management

The application uses built-in Flutter state handling:

- `SplashScreen` uses `StatefulWidget` and a three-second post-frame callback.
- `LoginScreen`, `LoginForm`, `SignupScreen`, and OTP/reset widgets use local widget state where needed.
- `HomeScreen` stores `selectedindex` and rebuilds the displayed section with `setState`.
- The remember-me checkbox, password visibility controls, and OTP focus nodes are local to their widgets.

No `Provider`, `Bloc`, `Riverpod`, `GetX`, or other state-management package is declared.

## Testing

The `test` directory contains:

- `test/login_screen_test.dart`
- `test/signup_screen_test.dart`
- `test/widget_test.dart`

Tests cover small-screen login layout, onboarding short viewports, sign-up route replacement, sign-up field visibility behavior, and an application smoke test.

Run the tests with:

```bash
flutter test
```

No integration test directory is currently present.

## Platform Support

Generated runner folders exist for:

- Android
- iOS
- Linux
- macOS
- Web
- Windows

The Android project uses Kotlin, Java 17 source/target compatibility, the Flutter Gradle plugin, and an application ID of `com.example.quick_kick`.

The Android manifest enables text processing queries and uses `adjustResize` for the soft keyboard. Debug and release build configurations are generated by the standard Flutter project template.

## Installation

### Requirements

- Flutter SDK compatible with the configured Dart SDK constraint
- Dart SDK matching `^3.13.5`
- A supported IDE or editor
- Platform-specific tooling for the target device

Android development additionally requires the Android SDK and an available emulator or physical device.

## Setup

From the project root:

```bash
flutter pub get
flutter devices
```

## Running the App

Run on the first available target:

```bash
flutter run
```

Run on a specific target:

```bash
flutter run -d <device-id>
```

Run in a supported platform directory with the usual Flutter commands:

```bash
flutter run -d chrome
flutter run -d windows
flutter run -d macos
flutter run -d linux
```

Build examples:

```bash
flutter build web
flutter build apk
flutter build ios
flutter build windows
flutter build macos
flutter build linux
```

## Analysis

The project includes `analysis_options.yaml` with the standard `flutter_lints` rules.

Run static analysis with:

```bash
flutter analyze
```

No custom font registration, environment variables, secrets, API keys, or additional setup scripts are currently required.

## Implementation Status

The project currently provides a complete static/demo UI flow from splash through onboarding and authentication screens, plus a locally assembled post-login home interface.

The following areas are UI-only or incomplete:

- Authentication
- Password recovery
- OTP verification
- Stadium and pitch booking
- Notifications
- Map functionality
- Calendar interaction
- Drawer destinations
- Profile and settings
- Social sign-in
- Persistence

The README describes only functionality supported by the source code and existing assets.
