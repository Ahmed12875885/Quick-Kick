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

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: HeightManager.height145),
      padding: const EdgeInsets.all(PaddingManager.padding16),
      decoration: BoxDecoration(
        color: ColorsManager.primaryColor,
        borderRadius: BorderRadius.circular(SizeManager.size10),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.cardShadowColor,
            blurRadius: SizeManager.size10,
            offset: const Offset(
              HorizontalManager.horizontal0,
              VerticalManager.vertical2,
            ),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              StringsManager.helloThere,
              style: const TextStyle(color: ColorsManager.secondaryColor),
            ),
            const SizedBox(height: VerticalManager.vertical2),
            Text(
              StringsManager.createYourAccount,
              style: const TextStyle(
                color: ColorsManager.secondaryColor,
                fontSize: FontManager.fontSize20,
                fontWeight: FontManager.fontWeightBold,
              ),
            ),
            const SizedBox(height: VerticalManager.vertical10),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(PaddingManager.padding16),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteName.kLoginScreen,
                      );
                    },
                    child: const Text(
                      StringsManager.login,
                      style: TextStyle(color: ColorsManager.secondaryColor),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManager.secondaryColor,
                      minimumSize: const Size(
                        WidthManager.width0,
                        HeightManager.height48,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(SizeManager.size15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteName.kLoginScreen,
                      );
                    },
                    child: const Text(
                      StringsManager.signUp,
                      style: TextStyle(color: ColorsManager.primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
