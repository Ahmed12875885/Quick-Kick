import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';

import 'package:quick_kick/core/resources/routes_manager.dart';

import 'package:quick_kick/features/Forgetpassword/widget/custom_widget_forgetpassword2.dart';
class ForgetpasswordScreenPhone extends StatelessWidget {
  const ForgetpasswordScreenPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: ColorsManager.transparentColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () async {
            await Navigator.pushReplacementNamed(
              context,
              RouteName.KForgetScreen1,
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: CustomWidgetForgetpassword2(),
    );
  }
}
