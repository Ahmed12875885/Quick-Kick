import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_kick/features/Forgetpassword/widget/custom_widget_resetpassword.dart';


class ResetNewPassword extends StatefulWidget {
  const ResetNewPassword({super.key});

  @override
  State<ResetNewPassword> createState() => _ResetNewPasswordState();
}

class _ResetNewPasswordState extends State<ResetNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: CustomWidgetResetpassword(),
    );
  }
}
