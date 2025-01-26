import 'package:diet/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

   OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.currentPage.value = index; // Update current page
            },
            children: [
              _buildPage(
                title: "Welcome to My Diet App",
                description: "Track your diet effectively.",
              ),
              _buildPage(
                title: "Set Goals",
                description: "Set your personal health goals easily.",
              ),
              _buildPage(
                title: "Achieve Results",
                description: "Track progress and achieve your fitness targets.",
              ),
            ],
          ),
          // Back Button
          Positioned(
            top: 40,
            left: 10,
            child: Obx(() => controller.currentPage.value > 0
                ? IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: controller.previousPage,
                  )
                : SizedBox.shrink()),
          ),
          // Skip Button
          Positioned(
            bottom: 20,
            left: 20,
            child: TextButton(
              onPressed: controller.skipToLastPage,
              child: Text("Skip"),
            ),
          ),
          // Next/Finish Button
          Positioned(
            bottom: 20,
            right: 20,
            child: Obx(() => TextButton(
                  onPressed: controller.nextPage,
                  child: Text(controller.currentPage.value == 2 ? "Finish" : "Next"),
                )),
          ),
        ],
      ),
    );
  }
  Widget _buildPage({required String title, required String description}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}