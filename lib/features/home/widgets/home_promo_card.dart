import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';

class HomePromoCard extends StatelessWidget {
  const HomePromoCard({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: HeightManager.height167),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeManager.size10),
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
        gradient: LinearGradient(
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
          colors: [
            ColorsManager.accentColor,
            ColorsManager.primaryColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: VerticalManager.vertical8,
          horizontal: HorizontalManager.horizontal16,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  StringsManager.promoOff,
                  style: TextStyle(
                    color: ColorsManager.secondaryColor,
                    fontSize: FontManager.fontSize18,
                    fontWeight: FontManager.fontWeightBold,
                  ),
                ),
                Text(
                  StringsManager.promoDiscount,
                  style: TextStyle(
                    color: ColorsManager.secondaryColor,
                    fontSize: FontManager.fontSize20,
                    fontWeight: FontManager.fontWeightBold,
                  ),
                ),
              ],
            ),
            Text(
              StringsManager.promoTitle,
              style: TextStyle(
                color: ColorsManager.secondaryColor,
                fontSize: FontManager.fontSize18,
                fontWeight: FontManager.fontWeightBold,
              ),
            ),
            Text(
              StringsManager.promoDescription,
              style: TextStyle(
                color: ColorsManager.secondaryColor,
                fontSize: FontManager.fontSize14,
              ),
            ),
            SizedBox(height: HeightManager.height8),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: ColorsManager.secondaryColor,
                fixedSize: Size(
                  WidthManager.width200,
                  HeightManager.height32,
                ),
              ),
              onPressed: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringsManager.bookNow,
                    style: TextStyle(
                      color: ColorsManager.primaryColor,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorsManager.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
