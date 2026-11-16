import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';
import 'package:quick_kick/features/splash/widgets/custom_widget_splash.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigateToOnboarding();
    });
  }
  Future<void> _navigateToOnboarding() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    Navigator.of(context).pushReplacementNamed<void, void>(
      RouteName.KonboardingScreen,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorsManager.primaryColor,
      body: Center(
        child: 
        CustomWidgetSplash(),
      ),
    );
  }
}