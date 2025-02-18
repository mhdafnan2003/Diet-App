import 'package:diet/features/authentication/screens/splash/splash.dart';
import 'package:diet/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: TColors.primary),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}







  

