import 'package:flutter/material.dart';
import 'package:money_master/core/constants/theme/colors.dart';

class AppTheme {
  static ThemeData? darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white),
    fontFamily: 'Inter',
  );
}
