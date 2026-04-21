import 'package:flutter/material.dart';
import '../../Utils/colors.dart';

class CustomButton extends StatelessWidget {

  final String ? title;
  final Color ? color;
  final double ? width;
  final void Function() ? onTap;

  const CustomButton(
      {
        super.key,
        required this.title,
        required this.color,
        required this.width,
        this.onTap
      }
      );


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? size.width * 0.9,
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withValues(alpha: .3),
                blurRadius: 20,
                spreadRadius: 5,
                offset: Offset(3, 5),
              )
            ]
        ),
        child: Center(
          child: Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
