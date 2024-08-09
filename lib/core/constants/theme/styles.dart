import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_master/core/constants/theme/colors.dart';

class AppStyles {
  static TextStyle regular16Grey = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    color: AppColors.grey,
  );

  static TextStyle semiBold16White = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.semiBold,
    color: AppColors.white,
  );
  static TextStyle semiBold18White = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.semiBold,
    color: AppColors.white,
  );
  static TextStyle bold24White = TextStyle(
    height: .8,
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    color: AppColors.white,
  );
}

class FontWeightManager {
  static FontWeight thin = FontWeight.w100;
  static FontWeight extraLight = FontWeight.w200;
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
}
