import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';

Widget reusableText(
  String text, {
  Color color = AppColors.primaryText,
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.bold,
  bool isCenter = false,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize.sp,
    ),
    textAlign: isCenter ? TextAlign.center : TextAlign.start,
  );
}

AppBar buildAppBar(String url) {
  return AppBar(
    centerTitle: true,
    title: reusableText(
      url,
    ),
  );
}
