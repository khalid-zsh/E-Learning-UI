import 'package:e_learning_ui/view/NaveBarView/nav_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lottie/lottie.dart';
import '../../Helper/widgets/custom_button.dart';
import '../../Utils/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
              Lottie.asset(
                'assets/onboarding_screen/education.json',
              ),
            Container(
              height: size.height * 0.35,
              width: size.width * 0.9,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        "Discover your next skill\nLearn anything you want!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryColor.withValues(alpha: .8),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Discover the things you want to\nlearn and learn them ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryTextColor.withValues(alpha: .5),
                        fontSize: 18,
                      ),
                    ),
                    CustomButton(
                      onTap: (){
                        Get.to (() => NavBarView());
                      },
                      title: 'Get Started',
                      color: AppColors.primaryColor,
                      width: size.width * 0.4
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
