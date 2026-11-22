import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/widgets/auth_button.dart';
import 'package:quick_kick/core/widgets/auth_or_divider.dart';
import 'package:quick_kick/core/widgets/auth_text_field.dart';
import 'package:quick_kick/core/widgets/social_login_section.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isRememberme = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: HeightManager.height300),
      padding: const EdgeInsets.all(PaddingManager.padding16),
      decoration: BoxDecoration(
        color: ColorsManager.greyHalfOpacityColor,
        borderRadius: BorderRadius.circular(SizeManager.size15),
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
      child: Column(
        children: [
          const AuthTextField(
            hintText: StringsManager.email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: VerticalManager.vertical8),
          const AuthTextField(
            hintText: StringsManager.password,
            isPassword: true,
          ),
          const SizedBox(height: VerticalManager.vertical8),
          Row(
            children: [
              Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: const VisualDensity(
                  horizontal: SizeManager.sizeNegative3,
                  vertical: SizeManager.sizeNegative3,
                ),
                side: const BorderSide(color: ColorsManager.secondaryColor),
                value: isRememberme,
                activeColor: ColorsManager.secondaryColor,
                checkColor: ColorsManager.primaryColor,
                shape: const CircleBorder(),
                onChanged: (value) {
                  setState(() {
                    isRememberme = value!;
                  });
                },
              ),

              const Expanded(
                child: Text(
                  StringsManager.rememberMe,
                  style: TextStyle(color: ColorsManager.secondaryColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.kForgetScreen1);
                },
                child: const Text(
                  StringsManager.forgetPassword,
                  style: TextStyle(color: ColorsManager.secondaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: VerticalManager.vertical8),
          AuthButton(
            label: StringsManager.login,
            onPressed: () {
              Navigator.pushReplacementNamed(context, RouteName.kHomeScreen);
            },
          ),
          const SizedBox(height: VerticalManager.vertical8),
          const AuthOrDivider(),
          const SizedBox(height: VerticalManager.vertical8),
          const SocialLoginSection(),
        ],
      ),
    );
  }
}
