import 'package:flutter/material.dart';

import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';

class CustomWidgetOtp extends StatelessWidget {
  const CustomWidgetOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingManager.padding16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: HeightManager.height24),
            Text(StringsManager.enterotp,style: TextStyle(fontSize: FontManager.fontSize24,fontWeight: FontWeight.bold),),
            SizedBox(height: HeightManager.height8,),
            Text(
              textAlign: TextAlign.center,
              StringsManager.oTpDescription,style: TextStyle(color: ColorsManager.greyColor)),
            SizedBox(height: HeightManager.height8,),
          ],
        ),
      ),
      );
  }
}
