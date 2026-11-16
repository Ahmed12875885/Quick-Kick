# Quick Kick

Quick Kick is a Flutter football-themed app prototype. Its current implementation presents an introductory onboarding flow and login/sign-up interfaces. The app demonstrates screen layout, reusable UI components, asset use, and named-route navigation; it does not yet provide working account services or football-management features.

## Main features

- Branded splash screen with a three-second transition to onboarding.
- Three illustrated onboarding pages with progress indicators and forward/back navigation.
- Skip and onboarding completion routes to the login page.
- Login and sign-up UI with shared text-field, button, divider, and social-button widgets.
- Local password visibility toggles and a local “Remember Me” checkbox.
- Scrollable authentication and onboarding layouts.
- Centralized constants for colors, text, assets, and layout dimensions.

The login, sign-up, password recovery, and social-login controls are presentation-only. Their buttons do not authenticate, create accounts, recover passwords, or launch provider sign-in.

## Implemented screens

| Screen | Current behavior |
| --- | --- |
| Splash (`features/splash/screen/splash_screen.dart`) | Shows the Quick Kick brand and logo, then replaces itself with onboarding after three seconds. |
| Onboarding 1 (`features/onboarding/screen/onboarding_screen1.dart`) | Introduces team creation; Skip opens login and Next opens onboarding 2. |
| Onboarding 2 (`features/onboarding/screen/onboarding_screen2.dart`) | Introduces pitch booking; the back arrow returns to onboarding 1 and Next opens onboarding 3. |
| Onboarding 3 (`features/onboarding/screen/onboarding_screen3.dart`) | Introduces playing with friends; the back arrow returns to onboarding 2 and Next clears the onboarding stack and opens login. |
| Login (`features/login/screen/login_screen.dart`) | Displays email and password fields, a local remember-me checkbox, a forgot-password control, and social-login buttons. Submission and recovery are not implemented. |
| Sign-up (`features/sign_up/screen/signup_screen.dart`) | Displays email, password, and confirm-password fields plus social-login buttons. Account creation and form validation are not implemented. |

The onboarding copy describes ideas such as team organization, pitch booking, and live updates. Those descriptions are not evidence of working product functionality; the corresponding services and data flows are not implemented.

## Navigation flow

The route table in `lib/core/resources/routes_manager.dart` defines the app routes. The flow currently implemented is:

```text
App launch -> Splash (3-second delay) -> Onboarding 1 -> Onboarding 2 -> Onboarding 3 -> Login
                                              |               ^               |
                                              | Skip          | Back          | Back
                                              +-> Login       +---------------+-> Onboarding 2
Login <-> Sign-up (header controls replace the current route)
```
There is no post-login or post-sign-up destination.

## Technologies and frameworks

- **Flutter** for the cross-platform application UI.
- **Dart** (the `pubspec.yaml` SDK constraint is `^3.13.5`).
- **Material** widgets and Flutter's built-in named-route navigation.
- Local PNG assets under `assets/images/`.

The repository includes Flutter platform folders for Android, iOS, web, Windows, macOS, and Linux. Their presence does not indicate that each target has been built or tested.

## Packages and dependencies

The app has a deliberately small package list:

| Package | Type | Use |
| --- | --- | --- |
| `flutter` | SDK dependency | App framework and Material UI. |
| `cupertino_icons` (`^1.0.8`) | Runtime dependency | Declared Cupertino icon library; the current UI widgets use Flutter Material icons. |
| `flutter_test` | Development dependency | Flutter widget-testing framework. |
| `flutter_lints` (`^6.0.0`) | Development dependency | Dart/Flutter lint rules. |

There are no declared networking, backend, authentication, persistence, or state-management packages.

## Architecture and folder structure

The code is organized by feature, with shared UI and resource constants in `core`. It is a lightweight Flutter widget architecture, not a layered backend or domain architecture.

```text
lib/
├── main.dart                         # Flutter entry point
├── my_app.dart                       # MaterialApp and initial route
├── core/
│   ├── resources/                    # Route names, strings, colors, assets, dimensions
│   └── widgets/                      # Reusable authentication UI widgets
└── features/
    ├── splash/
    │   ├── screen/
    │   └── widgets/
    ├── onboarding/
    │   ├── screen/                   # Three onboarding screens
    │   └── widgets/                  # Content widgets for each step
    ├── login/
    │   ├── screen/
    │   └── widgets/
    └── sign_up/
        ├── screen/
        └── widgets/

assets/images/                        # Six bundled PNG images
test/                                 # Widget tests
android/ ios/ web/ windows/ macos/ linux/  # Flutter platform projects
```

`core/resources` centralizes values used by the UI, including colors, text, image paths, and spacing/size dimensions. `core/widgets` contains shared authentication controls such as `AuthTextField`, `AuthButton`, `AuthOrDivider`, and `SocialLoginSection`. Each feature keeps its screen and supporting UI in that feature's folder.

## Installation and setup

1. Install Flutter and a supported platform toolchain (for example, Android Studio/Android SDK for an Android target).
2. Clone this repository and open the project root.
3. Check that the Flutter SDK is available:

   ```bash
   flutter --version
   flutter doctor
   ```

4. Fetch the dependencies declared by the project:

   ```bash
   flutter pub get
   ```

No API keys, backend services, or environment configuration are required by the current implementation.

## How to run the project

Connect or start a device/emulator, then run:

```bash
flutter devices
flutter run
```

To select a particular connected target, use `flutter run -d <device-id>`. Available targets depend on the platform toolchains installed locally.

The repository also contains widget tests, which can be run with:

```bash
flutter test
```

## Current development status

**Implemented:** The splash-to-onboarding navigation, all three onboarding UI screens, navigation to login/sign-up screens, responsive scrolling layouts, and local password visibility/remember-me controls.

**Partially implemented / UI only:** Login and sign-up forms and their controls are rendered, but there is no input validation, submission behavior, account flow, or authentication integration. Password visibility and the remember-me checkbox only affect the current widget state.

**Not implemented in this codebase:** Backend or API integration, database or local data persistence, real social sign-in, password recovery, account creation/login, team or player management, pitch search/booking, match scheduling, live scores, and a post-authentication app area. These are examples of capabilities suggested by the onboarding content, not confirmed roadmap commitments.
