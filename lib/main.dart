import 'package:flutter/material.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/order_screen.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/theme/app_theme.dart';

void main() {
  runApp(MealhubApp());
}

class MealhubApp extends StatelessWidget {
  const MealhubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appTheme,
      home: OrderScreen(),
    );
  }
}

