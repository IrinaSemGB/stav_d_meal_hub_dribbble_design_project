import 'package:flutter/material.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/theme/elevated_button_theme.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData appTheme = ThemeData(

    textTheme: AppTextTheme.appTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.appElevatedButtonTheme,
  );
}