import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({this.showGoogle = true, super.key});

  final bool showGoogle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          tooltip: StringsManager.facebook,
          onPressed: () {},
          icon: const Icon(Icons.facebook),
        ),
        if (showGoogle)
          IconButton(
            tooltip: StringsManager.google,
            onPressed: () {},
            icon: const Text(
              StringsManager.googleIcon,
              style: TextStyle(
                fontWeight: FontManager.fontWeightBold,
                fontSize: FontManager.fontSize20,
              ),
            ),
          ),
        IconButton(
          tooltip: StringsManager.apple,
          onPressed: () {},
          icon: const Icon(Icons.apple),
        ),
      ],
    );
  }
}
