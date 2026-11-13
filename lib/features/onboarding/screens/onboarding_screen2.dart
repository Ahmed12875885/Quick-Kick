import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/features/onboarding/widget/custom_widget_onboarding_screen2.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,size: FontManager.fontSize24,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const CustomWidgetOnboardingScreen2(),
    );
  }
}
