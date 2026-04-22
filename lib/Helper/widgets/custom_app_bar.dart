import 'package:flutter/material.dart';

PreferredSizeWidget CustomAppBar ({
  required BuildContext context,
  required String title,
}){
  return AppBar(
    leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new)
    ),
    title: Text(
      title,
    style: TextStyle(
      fontWeight: FontWeight.w500,
    ),
    ),
    centerTitle: true,
  );
}