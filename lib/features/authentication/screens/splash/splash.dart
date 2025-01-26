import 'package:diet/features/authentication/screens/onboarding%20Screen/onboarding_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulating splash screen delay
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => OnboardingScreen());
    });

    return Scaffold(
      body: Center(
        child: Image.asset('assets/logo.png'), // Replace with your logo path
      ),
    );
  }
}