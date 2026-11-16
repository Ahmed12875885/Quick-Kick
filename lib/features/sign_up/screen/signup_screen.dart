import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
import 'package:quick_kick/features/sign_up/widgets/signup_form.dart';
import 'package:quick_kick/features/sign_up/widgets/signup_header.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsManager.secondaryColor, ColorsManager.primaryColor],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            PaddingManager.padding16,
            MediaQuery.of(context).padding.top +
                kToolbarHeight +
                PaddingManager.padding16,
            PaddingManager.padding16,
            PaddingManager.padding16,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: WidthManager.width340,
              ),
              child: const Column(
                children: [
                  SignupHeader(),
                  SizedBox(height: VerticalManager.vertical16),
                  SignupForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
