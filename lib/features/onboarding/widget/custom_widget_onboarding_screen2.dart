import 'package:flutter/material.dart';

import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/images_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';


class CustomWidgetOnboardingScreen2 extends StatelessWidget {
  const CustomWidgetOnboardingScreen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingManager.padding16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: double.infinity,
            height: HeightManager.height250,
            image: AssetImage(ImagesManager.image2),
          ),
          SizedBox(height: HeightManager.height20),
          Text(
            StringsManager.onboarding2Title1,
            style: TextStyle(
              fontSize: FontManager.fontSize30,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: HeightManager.height16),
          Text(
            textAlign: TextAlign.center,
            StringsManager.onboarding2Description1,
            style: TextStyle(
              color: Colors.grey,
              fontSize: FontManager.fontSize16,
            ),
          ),
          SizedBox(height: HeightManager.height24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                size: SizeManager.size10,
                color: Colors.grey,
              ),
              SizedBox(width: WidthManager.width4),
              Icon(Icons.circle, size: SizeManager.size10, color: ColorsManager.primaryColor),
              SizedBox(width: WidthManager.width4),
              Icon(Icons.circle, size: SizeManager.size10, color: Colors.grey),
            ],
          ),
          SizedBox(height: HeightManager.height24),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: ColorsManager.primaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: HorizontalManager.horizontal24,
                  vertical: VerticalManager.vertical12,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteName.KonboardingScreen3);
              },
              child: Text(
                StringsManager.onboardingNextButton,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: FontManager.fontSize18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
