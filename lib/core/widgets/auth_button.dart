import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({required this.label, this.onPressed, super.key});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: HeightManager.height48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: ColorsManager.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeManager.size15),
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Text(
          label,
          style: const TextStyle(
            color: ColorsManager.secondaryColor,
            fontSize: FontManager.fontSize18,
          ),
        ),
      ),
    );
  }
}
