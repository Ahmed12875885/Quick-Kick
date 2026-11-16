import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';

class AuthOrDivider extends StatelessWidget {
  const AuthOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: ColorsManager.secondaryColor)),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalManager.horizontal12,
          ),
          child: Text(
            StringsManager.or,
            style: TextStyle(color: ColorsManager.secondaryColor),
          ),
        ),
        Expanded(child: Divider(color: ColorsManager.secondaryColor)),
      ],
    );
  }
}
