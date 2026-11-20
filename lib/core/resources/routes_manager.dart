import 'package:quick_kick/features/Forgetpassword/screen/forgetpassword_screen_email.dart';
import 'package:quick_kick/features/Forgetpassword/screen/forgetpassword_screen_phone.dart';
import 'package:quick_kick/features/Forgetpassword/screen/otp_screen.dart';
import 'package:quick_kick/features/Forgetpassword/screen/reset_new_password.dart';
import 'package:quick_kick/features/home/screen/home_screen.dart';
import 'package:quick_kick/features/login/screen/login_screen.dart';
import 'package:quick_kick/features/onboarding/screen/onboarding_screen1.dart';
import 'package:quick_kick/features/onboarding/screen/onboarding_screen2.dart';
import 'package:quick_kick/features/onboarding/screen/onboarding_screen3.dart';
import 'package:quick_kick/features/sign_up/screen/signup_screen.dart';
import 'package:quick_kick/features/splash/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RouteName.kSplashScreen: (context) => SplashScreen(),
    RouteName.kOnboardingScreen: (context) => OnboardingScreen(),
    RouteName.kOnboardingScreen2: (context) => OnboardingScreen2(),
    RouteName.kOnboardingScreen3: (context) => OnboardingScreen3(),
    RouteName.kLoginScreen: (context) => LoginScreen(),
    RouteName.kSignupScreen: (context) => SignupScreen(),
    RouteName.kForgetScreen1: (context) => ForgetpasswordScreenEmail(),
    RouteName.kForgetScreen2: (context) => ForgetpasswordScreenPhone(),
    RouteName.kOtpScreen: (context) => OtpScreen(),
    RouteName.kResetpasswordScreen: (context) => ResetNewPassword(),
    RouteName.kHomeScreen: (context) => HomeScreen(),
  };
}

class RouteName {
  static const String kSplashScreen = "KsplashScreen";
  static const String kOnboardingScreen = "KonboardingScreen";
  static const String kOnboardingScreen2 = "KonboardingScreen2";
  static const String kOnboardingScreen3 = "KonboardingScreen3";
  static const String kLoginScreen = "KloginScreen";
  static const String kSignupScreen = "KsignupScreen";
  static const String kForgetScreen1 = "KforgetScreen1";
  static const String kForgetScreen2 = "KforgetScreen2";
  static const String kOtpScreen = "KotpScreen2";
  static const String kResetpasswordScreen = "KresetpasswordScreen";
  static const String kHomeScreen = "KhomeScreen";
}
