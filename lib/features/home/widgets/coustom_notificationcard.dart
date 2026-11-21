import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';

class CoustomNotificationcard extends StatelessWidget {
  const CoustomNotificationcard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
  });

  final String title;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.secondaryColor,
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
      width: double.infinity,
      height: HeightManager.height96,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: HorizontalManager.horizontal16,
          vertical: VerticalManager.vertical8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontManager.fontWeightW600),
            ),
            Text(
              description,
              style: TextStyle(color: ColorsManager.blackColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(color: ColorsManager.blackColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
