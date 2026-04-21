import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget navIcon({
  required String outline,
  required String filled,
  required int index,
  required int currentIndex,
  required Color activeColor,
  required Color inactiveColor,
}) {
  final isSelected = currentIndex == index;

  return SvgPicture.asset(
    isSelected ? filled : outline,
    colorFilter: ColorFilter.mode(
      isSelected ? activeColor : inactiveColor,
      BlendMode.srcIn,
    ),
  );
}