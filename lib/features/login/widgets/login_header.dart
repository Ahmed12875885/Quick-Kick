import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: HeightManager.height145),
      decoration: BoxDecoration(
        color: ColorsManager.primaryColor,
        borderRadius: BorderRadius.circular(SizeManager.size10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.padding16),
        child: Column(
          children: [
            Text(
              StringsManager.helloThere,
              style: TextStyle(color: ColorsManager.secondaryColor),
            ),
            SizedBox(height: VerticalManager.vertical2),
            Text(
              StringsManager.welcomeBack,
              style: TextStyle(
                color: ColorsManager.secondaryColor,
                fontSize: FontManager.fontSize20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: VerticalManager.vertical10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManager.secondaryColor,
                      minimumSize: const Size(0, HeightManager.height48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(SizeManager.size15),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      StringsManager.login,
                      style: TextStyle(color: ColorsManager.primaryColor),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(PaddingManager.padding16),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteName.kSignupScreen,
                      );
                    },
                    child: const Text(
                      StringsManager.signUp,
                      style: TextStyle(color: ColorsManager.secondaryColor),
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
