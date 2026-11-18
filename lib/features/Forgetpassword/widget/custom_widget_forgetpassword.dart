import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';

import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';

class CustomWidgetForgetpassword extends StatelessWidget {
  const CustomWidgetForgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingManager.padding16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: HeightManager.height24),
            Text(
              StringsManager.forgetPassword,
              style: TextStyle(
                fontSize: FontManager.fontSize24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: HeightManager.height8),
            Text(
              textAlign: TextAlign.center,
              StringsManager.forgetPasswordDescription,
              style: TextStyle(color: ColorsManager.greyColor),
            ),
            SizedBox(height: HeightManager.height8),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hint: Text(
                  StringsManager.enteryouremail,
                  style: TextStyle(color: ColorsManager.greyColor),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                  borderSide: BorderSide(
                    width: WidthManager.width2,
                    color: Colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: HeightManager.height8),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  StringsManager.or,
                  style: TextStyle(
                    color: ColorsManager.greyColor,
                    fontSize: FontManager.fontSize16,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: HorizontalManager.horizontal4,
                    ),
                    minimumSize: Size.zero,
                  ),
                  onPressed: () async {
                    await Navigator.pushReplacementNamed(
                      context,
                      RouteName.KForgetScreen2,
                    );
                  },
                  child: Text(
                    StringsManager.phone,
                    style: TextStyle(color: ColorsManager.primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: HeightManager.height8),
            SizedBox(
              width: double.infinity,
              height: HeightManager.height50,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: HorizontalManager.horizontal24,
                    vertical: VerticalManager.vertical12,
                  ),
                  side: BorderSide(color: ColorsManager.primaryColor),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.KotpScreen);
                },
                child: Text(
                  StringsManager.onboardingNextButton,
                  style: TextStyle(color: ColorsManager.primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
