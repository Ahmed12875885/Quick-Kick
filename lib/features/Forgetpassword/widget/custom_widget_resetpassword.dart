import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/widgets/auth_button.dart';
import 'package:quick_kick/core/widgets/auth_text_field.dart';
class CustomWidgetResetpassword extends StatelessWidget {
  const CustomWidgetResetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(PaddingManager.padding16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: HeightManager.height24,),
              Text(
                StringsManager.resetnewpassword,
                style: TextStyle(
                  fontSize: FontManager.fontSize24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: HeightManager.height16),
              Text(
                textAlign: TextAlign.center,
                StringsManager.resetnewDescription,
                style: TextStyle(color: ColorsManager.greyColor),
              ),
              SizedBox(height: HeightManager.height16),
              AuthTextField(
                hintText: StringsManager.newpassword,
                isPassword: true,
              ),
              SizedBox(height: HeightManager.height16),
              AuthTextField(
                hintText: StringsManager.confirmPassword,
                isPassword: true,
              ),
              SizedBox(height: HeightManager.height16),
              AuthButton(
                label: StringsManager.resetpasswordbutton,
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RouteName.KloginScreen,
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}