import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/features/onboarding/widgets/custom_widget_onboarding_screen1.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RouteName.kLoginScreen);
            },
            child: const Text(
              StringsManager.onboardingskip,
              style: TextStyle(color: ColorsManager.greyColor, fontSize: FontManager.fontSize18),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(child: CustomWidgetOnboardingScreen1()),
    );
  }
}
