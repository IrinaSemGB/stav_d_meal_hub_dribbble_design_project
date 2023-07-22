import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/constants/app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static final TextTheme appTextTheme = TextTheme(

    // Mealhub 2BD
    titleMedium: GoogleFonts.questrial(
      color: AppColors.white,
      fontSize: 23.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.2,
    ),

    // Order №30355
    titleLarge: GoogleFonts.questrial(
      color: AppColors.white,
      fontSize: 55.0,
      fontWeight: FontWeight.bold,
    ),

    // Today 12:30 - 14:30
    displayLarge: GoogleFonts.roboto(
      color: AppColors.white,
      fontSize: 40.0,
      fontWeight: FontWeight.w500,
      wordSpacing: -2.5,
    ),
  );
}