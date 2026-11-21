import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/image4.png", fit: BoxFit.cover),
            Positioned(
              top: VerticalManager.vertical50,
              left: PaddingManager.padding16,
              right: PaddingManager.padding16,
              child: TextField(
                style: TextStyle(
                  color: ColorsManager.blackColor,
                  fontSize: FontManager.fontSize16,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorsManager.secondaryColor,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: ColorsManager.greyColor,
                    fontSize: FontManager.fontSize16,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorsManager.greyColor,
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.close, color: ColorsManager.greyColor),
                    ],
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(SizeManager.size15),
                    borderSide: BorderSide(
                      color: ColorsManager.greyHalfOpacityColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(SizeManager.size15),
                    borderSide: BorderSide(color: ColorsManager.primaryColor),
                  ),
                  contentPadding: EdgeInsets.all(PaddingManager.padding16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
