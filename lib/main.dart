import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/order_screen.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MealhubApp());
}

class MealhubApp extends StatelessWidget {
  const MealhubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: OrderScreen(),
    );
  }
}

