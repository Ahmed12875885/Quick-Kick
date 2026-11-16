import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/widgets/auth_button.dart';
import 'package:quick_kick/core/widgets/auth_or_divider.dart';
import 'package:quick_kick/core/widgets/social_login_section.dart';
import 'package:quick_kick/core/widgets/auth_text_field.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: HeightManager.height300),
      padding: const EdgeInsets.all(PaddingManager.padding16),
      decoration: BoxDecoration(
        color: ColorsManager.greyHalfOpacityColor,
        borderRadius: BorderRadius.circular(SizeManager.size15),
      ),
      child: Column(
        children: [
          const AuthTextField(
            hintText: StringsManager.email,
            
          ),
          const SizedBox(height: VerticalManager.vertical8),
          const AuthTextField(
            hintText: StringsManager.password,
            isPassword: true,
          ),
          const SizedBox(height: VerticalManager.vertical8),
          const AuthTextField(
            hintText: StringsManager.confirmPassword,
            isPassword: true,
          ),
          const SizedBox(height: VerticalManager.vertical8),
          const AuthButton(label: StringsManager.signUp),
          const SizedBox(height: VerticalManager.vertical8),
          const AuthOrDivider(),
          const SizedBox(height: VerticalManager.vertical8),
          const SocialLoginSection(showGoogle: true),
        ],
      ),
    );
  }
}
