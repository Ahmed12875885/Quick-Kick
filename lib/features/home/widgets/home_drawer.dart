import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsManager.primaryColor,
      width: WidthManager.width300,
      shape: RoundedRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: HorizontalManager.horizontal16,
          vertical: VerticalManager.vertical0,
        ),
        child: Column(
          children: [
            SizedBox(height: HeightManager.height100),
            Icon(
              Icons.person_rounded,
              size: SizeManager.size60,
              color: ColorsManager.secondaryColor,
            ),
            SizedBox(height: HeightManager.height8),
            Text(
              StringsManager.drawerName,
              style: TextStyle(
                fontSize: FontManager.fontSize24,
                color: ColorsManager.secondaryColor,
              ),
            ),
            SizedBox(height: HeightManager.height16),
            Divider(
              indent: HorizontalManager.horizontal1,
              endIndent: HorizontalManager.horizontal1,
              color: ColorsManager.secondaryColor,
            ),
            SizedBox(height: HeightManager.height16),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: ColorsManager.secondaryColor,
                    size: SizeManager.size24,
                  ),
                  SizedBox(width: HorizontalManager.horizontal8),
                  Text(
                    StringsManager.profile,
                    style: TextStyle(
                      color: ColorsManager.secondaryColor,
                      fontSize: FontManager.fontSize20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: HeightManager.height16),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.settings_outlined,
                    color: ColorsManager.secondaryColor,
                    size: SizeManager.size24,
                  ),
                  SizedBox(width: HorizontalManager.horizontal8),
                  Text(
                    StringsManager.settings,
                    style: TextStyle(
                      color: ColorsManager.secondaryColor,
                      fontSize: FontManager.fontSize20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: HeightManager.height16),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.contact_support_outlined,
                    color: ColorsManager.secondaryColor,
                    size: SizeManager.size24,
                  ),
                  SizedBox(width: HorizontalManager.horizontal8),
                  Text(
                    StringsManager.aboutAndSupport,
                    style: TextStyle(
                      color: ColorsManager.secondaryColor,
                      fontSize: FontManager.fontSize20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: HeightManager.height170),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, RouteName.kLoginScreen);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: ColorsManager.secondaryColor,
                    size: SizeManager.size24,
                  ),
                  SizedBox(width: HorizontalManager.horizontal8),
                  Text(
                    StringsManager.logout,
                    style: TextStyle(
                      color: ColorsManager.secondaryColor,
                      fontSize: FontManager.fontSize20,
                    ),
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
