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
  };
}
class RouteName{
  static const String KsplashScreen = "KsplashScreen";
  static const String KonboardingScreen = "KonboardingScreen";
  static const String KonboardingScreen2 = "KonboardingScreen2";
  static const String KonboardingScreen3 = "KonboardingScreen3";
  static const String KloginScreen = "KloginScreen";
  static const String KSignupScreen = "KsignupScreen";
}