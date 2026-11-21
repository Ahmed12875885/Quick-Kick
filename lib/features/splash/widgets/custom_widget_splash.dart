import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/images_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
class CustomWidgetSplash extends StatelessWidget {
const CustomWidgetSplash({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: WidthManager.width100,
            height: HeightManager.height100,
            image: AssetImage(ImagesManager.image6),
          ),
          Text(
            StringsManager.appName,
            style: TextStyle(
              fontSize: FontManager.fontSize30,
              fontWeight: FontManager.fontWeightBold,
              color: ColorsManager.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
