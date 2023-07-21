import 'dart:math';
import 'package:flutter/material.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/constants/app_images.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/constants/app_titles.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/widgets/order_container/order_container_widget.dart';
import '../../common_widgets/app_top_bar_widget.dart';
import '../../common_widgets/bottom_tab_bar_widget.dart';
import '../../constants/app_colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.accent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.mealhub),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // App Bar
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: AppTopBar(),
                  ),
                  // Order Number
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: screenSize.width,
                    child: Text(
                      AppTitles.order,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: screenSize.height * 0.3,
                left: - screenSize.width * 0.03,
                child: Transform.rotate(
                  angle: pi / -20,
                  child: OrderContainer(width: screenSize.width),
                ),
              ),
              Positioned.fill(
                bottom: 4.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomTabBar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}














