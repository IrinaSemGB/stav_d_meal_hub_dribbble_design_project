import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final appElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      shape: CircleBorder(),
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.white.withOpacity(0.2),
      shadowColor: AppColors.white.withOpacity(0.2),
    ),
  );
}