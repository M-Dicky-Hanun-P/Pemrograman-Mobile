import 'package:flutter/material.dart';

class AppColors {
  static const darkBrown = Color(0XFF993935);
  static const lightGrey = Color.fromARGB(188, 255, 218, 218);
  static const whiteText = Color(0XFFFFFFFF);
  static const blueText = Color(0XFF0074D9);
  static const bgU = Color(0XFFF05529);
  static const bgLogin = Color.fromARGB(255, 0, 0, 0);
}

class TextStyles {
  static TextStyle title = const TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 11.0,
    color: AppColors.whiteText,
  );

  static TextStyle titleLg = const TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 11.0,
    color: AppColors.bgLogin,
  );

    static TextStyle body = const TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.normal,
    fontSize: 10.0,
    color: AppColors.lightGrey,
  );

    static TextStyle bodyBlue = const TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.normal,
    fontSize: 10.0,
    color: AppColors.blueText,
  );

    static TextStyle bodyUser = const TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.normal,
    fontSize: 10.0,
    color: AppColors.bgU,
  );
}