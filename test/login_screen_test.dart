import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quick_kick/features/login/screen/login_screen.dart';
import 'package:quick_kick/features/login/widget/social_login_section.dart';
import 'package:quick_kick/features/onboarding/screens/onboarding_screen1.dart';
import 'package:quick_kick/features/onboarding/screens/onboarding_screen2.dart';
import 'package:quick_kick/features/onboarding/screens/onboarding_screen3.dart';

void main() {
  testWidgets(
    'login fields stay reachable with keyboard open on a small screen',
    (tester) async {
      tester.view.physicalSize = const Size(280, 640);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetViewInsets);

      isRememberme = false;
      await tester.pumpWidget(const MaterialApp(home: LoginScreen()));
      await tester.pumpAndSettle();

      final emailField = find.byType(TextField).first;
      final passwordField = find.byType(TextField).last;

      expect(tester.takeException(), isNull);
      expect(find.byType(TextField), findsNWidgets(2));
      expect(find.byType(SocialLoginSection), findsOneWidget);
      expect(find.byType(IconButton), findsNWidgets(3));
      final socialRow = find.descendant(
        of: find.byType(SocialLoginSection),
        matching: find.byType(Row),
      );
      expect(socialRow, findsOneWidget);
      expect(
        find.descendant(
          of: socialRow,
          matching: find.byType(IconButton),
        ),
        findsNWidgets(2),
      );

      await tester.ensureVisible(emailField);
      await tester.tap(emailField);
      await tester.pump();
      expect(emailField.hitTestable(), findsOneWidget);

      tester.view.viewInsets = const FakeViewPadding(bottom: 280);
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

      await tester.ensureVisible(passwordField);
      await tester.pumpAndSettle();
      await tester.tap(passwordField);
      await tester.pumpAndSettle();
      expect(passwordField.hitTestable(), findsOneWidget);

      await tester.drag(
        find.byType(SingleChildScrollView),
        const Offset(0, 80),
      );
      await tester.pumpAndSettle();
      expect(emailField.hitTestable(), findsOneWidget);
    },
  );

  testWidgets('onboarding screens fit short viewports without overflow', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 420);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final screens = [
      const OnboardingScreen(),
      const OnboardingScreen2(),
      const OnboardingScreen3(),
    ];

    for (final screen in screens) {
      await tester.pumpWidget(MaterialApp(home: screen));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    }
  });
}
