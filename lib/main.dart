import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/module/onboarding/view/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Trek',
      theme: AppTheme.lightTheme,
      home: const OnBoardingScreen(),
      onGenerateRoute: (settings) => RouteGenerator.onRouteGenerate(settings),
    );
  }
}
