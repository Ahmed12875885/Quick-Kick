import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';

import 'package:quick_kick/core/resources/routes_manager.dart';

import 'package:quick_kick/features/Forgetpassword/widget/custom_widget_forgetpassword.dart';
class ForgetpasswordScreenEmail extends StatelessWidget {
  const ForgetpasswordScreenEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsManager.transparentColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () async {
            await Navigator.pushReplacementNamed(
              context,
              RouteName.KloginScreen,
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: CustomWidgetForgetpassword(),
    );
  }
}
