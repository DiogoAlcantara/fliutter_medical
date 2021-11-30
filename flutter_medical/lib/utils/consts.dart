import 'dart:ui';
import 'package:flutter/material.dart';
import 'common.dart';

class AppConsts {
  static double heightSize;
  static double widthSize;

  static double heightPercentage;
  static double widthPercentage;

  static const double xdHeightSize = 667.0;
  static const double xdWidhtSize = 375.0;

  static void setHeightSize(double size) {
    heightSize = size;
    heightPercentage = heightSize / xdHeightSize;
  }

  static void setWidhtSize(double size) {
    widthSize = size;
    widthPercentage = widthSize / xdWidhtSize;
  }

  static double radiusBotton = 50;

  // Back Ground Colors

  static Color backgroundColor = const Color(0xff484848);
  static Color appbarBackgroundColor = const Color(0xff484848);

  // Cores básicas

  static Color mPrimaryTextColor = const Color(0xFF25257E);
  static Color mTitleTextColor = const Color(0xFF25257E);
  static Color mBackgroundColor = const Color(0xFFFDFCFF);
  static Color mSecondBackgroundColor = const Color(0xFFBCCBF3);
  static Color mButtonColor = const Color(0xFF5063FF);
  static Color mYellowColor = const Color(0xFFFB7B11);

  // ON/OFF
  static Color onColor = const Color(0xff7b6cf6);
  static Color offColor = const Color(0xff484848);
  static Color onBottom = const Color(0xffffffdd);
  static Color offBottom = const Color(0xffffdddd);
  static Color onText = const Color(0xffffffff);
  static Color offText = const Color(0xffffffdd);

  static double fontSize08 = setWidth(8.0);
  static double fontSize09 = setWidth(9.0);
  static double fontSize10 = setWidth(10.0);

  static TextStyle styleTitle = TextStyle(
    color: AppConsts.mPrimaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: AppConsts.fontSize10,
  );

  static double topHeight = 10.0;
}
