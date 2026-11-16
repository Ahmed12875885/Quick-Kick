import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
import 'package:quick_kick/features/login/widget/social_login_section.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isRememberme = false;
  bool isRemove = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: HeightManager.height300),
      decoration: BoxDecoration(
        color: ColorsManager.greyHalfOpacityColor,
        borderRadius: BorderRadius.circular(SizeManager.size15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.padding16),
        child: Column(
          children: [
            TextField(
              scrollPadding: EdgeInsets.only(
                top: VerticalManager.vertical80,
                bottom: VerticalManager.vertical20,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                  borderSide: BorderSide(color: ColorsManager.transparentColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                  borderSide: BorderSide(
                    color: ColorsManager.primaryColor,
                    width: WidthManager.width2,
                  ),
                ),
                filled: true,
                hint: Text(
                  StringsManager.email,
                  style: TextStyle(color: ColorsManager.greyColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                ),
              ),
            ),
            SizedBox(height: VerticalManager.vertical8),
            TextField(
              obscureText: !isRemove,
              scrollPadding: EdgeInsets.only(
                top: VerticalManager.vertical80,
                bottom: VerticalManager.vertical20,
              ),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    isRemove ? Icons.visibility : Icons.visibility_off,
                    color: ColorsManager.BlackColor,
                  ),
                  onPressed: () {
                    setState(() {
                      isRemove = !isRemove;
                    });
                  },
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                  borderSide: BorderSide(color: ColorsManager.transparentColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                  borderSide: BorderSide(
                    color: ColorsManager.primaryColor,
                    width: WidthManager.width2,
                  ),
                ),
                filled: true,
                hint: Text(
                  StringsManager.password,
                  style: TextStyle(color: ColorsManager.greyColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                ),
              ),
            ),
            SizedBox(height: VerticalManager.vertical8),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  side: BorderSide(color: ColorsManager.secondaryColor),
                  value: isRememberme,
                  activeColor: ColorsManager.secondaryColor,
                  checkColor: ColorsManager.primaryColor,
                  shape: CircleBorder(),
                  onChanged: (value) {
                    setState(() {
                      isRememberme = value!;
                    });
                  },
                ),
                Text(
                  StringsManager.rememberMe,
                  style: TextStyle(color: ColorsManager.secondaryColor),
                ),
                SizedBox(width: WidthManager.width15),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    StringsManager.forgetPassword,
                    style: TextStyle(color: ColorsManager.secondaryColor),
                  ),
                ),
                
              ],
            ),
            SizedBox(height: VerticalManager.vertical8),
            TextButton(
  style: TextButton.styleFrom(
    backgroundColor: ColorsManager.primaryColor,
    fixedSize: Size(
      WidthManager.width340,
      HeightManager.height48,
    ),
  ),
  onPressed: () {},
  child: Text(
    StringsManager.onboardingNextButton,
    style: TextStyle(
      color: ColorsManager.secondaryColor,
      fontSize: FontManager.fontSize18,
    ),
  ),
),
  SizedBox(height: VerticalManager.vertical8),
            Divider(color: ColorsManager.secondaryColor),
            const SocialLoginSection(),
          ],
        ),
      ),
    );
  }
}
