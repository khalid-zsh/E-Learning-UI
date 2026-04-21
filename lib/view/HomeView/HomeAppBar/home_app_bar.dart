import 'package:flutter/material.dart';
import '../../../Utils/colors.dart';

Widget homeAppBar(Size size) {
  return Container(
      padding: EdgeInsets.only(
        top: 50,
        left: 20,
        right: 20,
      ),
      height: size.height * .25,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:
              [
                AppColors.secondaryColor,
                AppColors.primaryColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: .9),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: .2),
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Icon(
                        Icons.notifications,
                        color: AppColors.primaryTextColor,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                            )
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
          SizedBox(height: size.height * .03),
          TextField(
            decoration: InputDecoration(
                hintText: "Search your topic",
                hintStyle: TextStyle(
                  color: AppColors.primaryTextColor.withValues(alpha: .5),
                  fontSize: 18,
                ),
                prefixIcon: IconButton(onPressed: (){},icon: Icon( Icons.search_sharp),),
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.mic)),
                fillColor: Colors.white.withValues(alpha: .8),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                )
            ),
          ),
        ],
      )
  );
}