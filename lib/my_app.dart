import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.KsplashScreen,
      routes: RoutesManager.routes
    );
  }
}