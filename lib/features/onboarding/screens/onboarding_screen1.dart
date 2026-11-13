import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/features/onboarding/widget/custom_widget_onboarding_screen1.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              StringsManager.onboardingskip,
              style: TextStyle(color: Colors.grey, fontSize: FontManager.fontSize18),
            ),
          ),
        ],
      ),
      body: const CustomWidgetOnboardingScreen1(),
    );
  }
}
