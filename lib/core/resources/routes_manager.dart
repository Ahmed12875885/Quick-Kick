import 'package:quick_kick/features/Forgetpassword/screen/forgetpassword_screen_email.dart';
import 'package:quick_kick/features/Forgetpassword/screen/forgetpassword_screen_phone.dart';
import 'package:quick_kick/features/Forgetpassword/screen/otp_screen.dart';
import 'package:quick_kick/features/Forgetpassword/screen/reset_new_password.dart';
import 'package:quick_kick/features/login/screen/login_screen.dart';
import 'package:quick_kick/features/onboarding/screen/onboarding_screen1.dart';
import 'package:quick_kick/features/onboarding/screen/onboarding_screen2.dart';
import 'package:quick_kick/features/onboarding/screen/onboarding_screen3.dart';
import 'package:quick_kick/features/sign_up/screen/signup_screen.dart';
import 'package:quick_kick/features/splash/screen/splash_screen.dart';
import 'package:flutter/material.dart';
class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RouteName.KsplashScreen :(context) => SplashScreen(),
    RouteName.KonboardingScreen :(context) => OnboardingScreen(),
    RouteName.KonboardingScreen2 :(context) => OnboardingScreen2(),
    RouteName.KonboardingScreen3 :(context) => OnboardingScreen3(),
    RouteName.KloginScreen :(context) => LoginScreen(),
    RouteName.KSignupScreen: (context) => SignupScreen(),
    RouteName.KForgetScreen1 : (context) => ForgetpasswordScreenEmail(),
    RouteName.KForgetScreen2 : (context) => ForgetpasswordScreenPhone(),
    RouteName.KotpScreen : (context) => OtpScreen(),
    RouteName.KresetpasswordScreen : (context) => ResetNewPassword(),
  };
}
class RouteName{
  static const String KsplashScreen = "KsplashScreen";
  static const String KonboardingScreen = "KonboardingScreen";
  static const String KonboardingScreen2 = "KonboardingScreen2";
  static const String KonboardingScreen3 = "KonboardingScreen3";
  static const String KloginScreen = "KloginScreen";
  static const String KSignupScreen = "KsignupScreen";
  static const String KForgetScreen1 = "KforgetScreen1";
  static const String KForgetScreen2 = "KforgetScreen2";
  static const String KotpScreen = "KotpScreen2";
  static const String KresetpasswordScreen = "KresetpasswordScreen";
}