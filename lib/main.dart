import 'package:e_learning_ui/Utils/colors.dart';
import 'package:e_learning_ui/view/OnboardingScreen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/course_controller.dart';

void main(){
  Get.put(CourseController());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backGroundColor
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
