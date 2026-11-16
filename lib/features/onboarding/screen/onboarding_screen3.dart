import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/features/onboarding/widgets/custom_widget_onboarding_screen3.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,size: FontManager.fontSize24,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const SingleChildScrollView(child: CustomWidgetOnboardingScreen3()),
    );
  }
}
