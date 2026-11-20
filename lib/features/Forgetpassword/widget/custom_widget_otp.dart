import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';

class CustomWidgetOtp extends StatefulWidget {
  const CustomWidgetOtp({super.key});

  @override
  State<CustomWidgetOtp> createState() => _CustomWidgetOtpState();
}

class _CustomWidgetOtpState extends State<CustomWidgetOtp> {
  final List<TextEditingController> controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }

    for (final node in focusNodes) {
      node.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingManager.padding16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: HeightManager.height24),

            Text(
              StringsManager.enterotp,
              style: TextStyle(
                fontSize: FontManager.fontSize24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: HeightManager.height8),

            Text(
              StringsManager.oTpDescription,
              textAlign: TextAlign.center,
              style: TextStyle(color: ColorsManager.greyColor),
            ),

            SizedBox(height: HeightManager.height24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Container(
                  width: 42,
                  height: 48,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: controllers[index],
                    focusNode: focusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 1.5,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context)
                            .requestFocus(focusNodes[index + 1]);
                      } else if (value.isEmpty && index > 0) {
                        FocusScope.of(context)
                            .requestFocus(focusNodes[index - 1]);
                      }
                    },
                  ),
                );
              }),
            ),
            SizedBox(height: HeightManager.height16),
            SizedBox(
              width: double.infinity,
              height: HeightManager.height50,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: HorizontalManager.horizontal24,
                    vertical: VerticalManager.vertical12,
                  ),
                  side: BorderSide(color: ColorsManager.primaryColor),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.kResetpasswordScreen);
                },
                child: Text(
                  StringsManager.onboardingNextButton,
                  style: TextStyle(color: ColorsManager.primaryColor),
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringsManager.receivecode,
                  style: TextStyle(color: ColorsManager.greyColor),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: HorizontalManager.horizontal4,
                    ),
                    minimumSize: Size.zero,
                    
                  ),
                  onPressed: () {},
                  child: Text(
                    StringsManager.resendotp,
                    style: TextStyle(color: ColorsManager.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
