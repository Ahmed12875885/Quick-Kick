import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/images_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';

class StadiumCards extends StatelessWidget {
  const StadiumCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: VerticalManager.vertical16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorsManager.secondaryColor,
              borderRadius: BorderRadius.circular(SizeManager.size12),
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
            width: WidthManager.width162,
            height: HeightManager.height170,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.directional(
                      topStart: Radius.circular(SizeManager.size12),
                      topEnd: Radius.circular(SizeManager.size12),
                    ),
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(ImagesManager.image5),
                    ),
                  ),
                ),
                SizedBox(height: HeightManager.height8),
                Text(
                  StringsManager.stadiumName1,
                  style: const TextStyle(fontSize: FontManager.fontSize12),
                ),
                SizedBox(height: HeightManager.height8),
                Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.primaryColor,
                    borderRadius: BorderRadius.circular(SizeManager.size12),
                  ),
                  width: WidthManager.width50,
                  height: HeightManager.height30,
                  child: Padding(
                    padding: const EdgeInsets.all(PaddingManager.padding4),
                    child: const Text(StringsManager.stadiumPitch1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorsManager.secondaryColor,
              borderRadius: BorderRadius.circular(SizeManager.size12),
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
            width: WidthManager.width162,
            height: HeightManager.height170,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.directional(
                      topStart: Radius.circular(SizeManager.size12),
                      topEnd: Radius.circular(SizeManager.size12),
                    ),
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(ImagesManager.image5),
                    ),
                  ),
                ),
                SizedBox(height: HeightManager.height8),
                Text(
                  StringsManager.stadiumName1,
                  style: const TextStyle(fontSize: FontManager.fontSize12),
                ),
                SizedBox(height: HeightManager.height8),
                Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.primaryColor,
                    borderRadius: BorderRadius.circular(SizeManager.size12),
                  ),
                  width: WidthManager.width50,
                  height: HeightManager.height30,
                  child: Padding(
                    padding: const EdgeInsets.all(PaddingManager.padding4),
                    child: const Text(StringsManager.stadiumPitch2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
