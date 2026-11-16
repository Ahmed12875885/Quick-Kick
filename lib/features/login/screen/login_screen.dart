import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
import 'package:quick_kick/features/login/widgets/login_form.dart';
import 'package:quick_kick/features/login/widgets/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool isRememberme = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsManager.transparentColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + kToolbarHeight,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsManager.secondaryColor, ColorsManager.primaryColor],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PaddingManager.padding16),
            child: Column(
              children: [
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: WidthManager.width340,
                    ),
                    child: const LoginHeader(),
                  ),
                ),
                SizedBox(height: VerticalManager.vertical16),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: WidthManager.width340,
                    ),
                    child: LoginForm(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
