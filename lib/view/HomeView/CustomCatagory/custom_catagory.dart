import 'package:e_learning_ui/view/CourseDetailsView/course_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../Utils/colors.dart';

class CustomCategory extends StatelessWidget {

  final String icon;

  final String title;
  final dynamic courses;

  const CustomCategory({super.key, required this.icon, required this.title, required this.courses});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=> CourseDetailsView());
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryTextColor.withValues(alpha: .1),
                blurRadius: 5,
                spreadRadius: .3,
              )
            ]
        ),
        // List data
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              icon,
              height: 130,
              width: 150,
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Text("$courses Courses")
          ],
        ),
      ),
    );;
  }
}
