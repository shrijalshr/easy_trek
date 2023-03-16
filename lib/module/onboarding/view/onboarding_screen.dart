import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Image.asset(AssetPaths.logo).pb(16),
                  Text(
                    "Easy Trek",
                    style: context.textStyles.headlineLarge,
                  ),
                  Text(
                    "Explore around you",
                    style: context.textStyles.labelMedium,
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  AppButton(
                    onPressed: () {
                      Get.toNamed(Routes.login);
                    },
                    labelText: "Sign in",
                  ).pb(16),
                  AppButton.secondary(
                    onPressed: () {
                      Get.toNamed(Routes.signup);
                    },
                    labelText: "Create an account",
                  )
                ],
              ),
            )
          ]).ph(16),
    );
  }
}
