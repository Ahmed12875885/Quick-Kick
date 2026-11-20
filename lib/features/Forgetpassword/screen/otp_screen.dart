import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/features/Forgetpassword/widget/custom_widget_otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.transparentColor,
        surfaceTintColor: ColorsManager.transparentColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: CustomWidgetOtp(),
     
    );
  }
}
