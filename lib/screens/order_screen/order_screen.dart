import 'dart:math';
import 'package:flutter/material.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/constants/app_images.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/widgets/header_screen_widget.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/widgets/order_container/order_container_widget.dart';
import '../../common_widgets/bottom_tab_bar_widget.dart';
import '../../constants/app_colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.accent,
      body: Stack(
        children: [
          // background image
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: screenSize.height * 0.6,
              child: Image(
                image: AssetImage(AppImages.mealhub),
              ),
            ),
          ),
          SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                HeaderScreen(screenSize: screenSize),
                Positioned(
                  top: screenSize.height * 0.3,
                  left: - screenSize.width * 0.03,
                  child: Transform.rotate(
                    angle: pi / -20,
                    child: OrderContainer(size: screenSize),
                  ),
                ),
                Positioned.fill(
                  bottom: 2.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomTabBar(height: screenSize.height * 0.12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
















