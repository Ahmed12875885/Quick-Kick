import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quick_kick/core/widgets/social_login_section.dart';
import 'package:quick_kick/features/sign_up/screen/signup_screen.dart';

void main() {
  testWidgets(
    'sign-up fields and social buttons remain reachable on a small screen',
    (tester) async {
      tester.view.physicalSize = const Size(280, 640);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetViewInsets);

      await tester.pumpWidget(const MaterialApp(home: SignupScreen()));
      await tester.pumpAndSettle();

      final fields = find.byType(TextField);
      expect(fields, findsNWidgets(3));
      expect(find.text('Confirm Password'), findsOneWidget);
      expect(find.text('OR'), findsOneWidget);
      expect(
        find.descendant(
          of: find.byType(SocialLoginSection),
          matching: find.byType(IconButton),
        ),
        findsNWidgets(3),
      );
      expect(tester.takeException(), isNull);

      final passwordField = fields.at(1);
      final confirmPasswordField = fields.at(2);
      expect(tester.widget<TextField>(passwordField).obscureText, isTrue);
      expect(
        tester.widget<TextField>(confirmPasswordField).obscureText,
        isTrue,
      );

      await tester.tap(
        find.descendant(of: passwordField, matching: find.byType(IconButton)),
      );
      await tester.pump();

      expect(tester.widget<TextField>(passwordField).obscureText, isFalse);
      expect(
        tester.widget<TextField>(confirmPasswordField).obscureText,
        isTrue,
      );

      await tester.tap(
        find.descendant(
          of: confirmPasswordField,
          matching: find.byType(IconButton),
        ),
      );
      await tester.pump();
      expect(
        tester.widget<TextField>(confirmPasswordField).obscureText,
        isFalse,
      );

      final emailField = fields.first;
      await tester.ensureVisible(emailField);
      await tester.tap(emailField);
      await tester.pump();
      tester.view.viewInsets = const FakeViewPadding(bottom: 280);
      await tester.pumpAndSettle();

      await tester.ensureVisible(confirmPasswordField);
      await tester.pumpAndSettle();
      expect(confirmPasswordField.hitTestable(), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}
