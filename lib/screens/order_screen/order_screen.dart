import 'dart:math';
import 'package:flutter/material.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/common_widgets/blur_container_widget.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/constants/app_icons.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/constants/app_images.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/constants/app_titles.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/widgets/meals_stack_widget.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/widgets/status_blur_widget.dart';
import '../../common_widgets/app_top_bar.dart';
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
                  child: BlurContainer(
                    borderRadius: screenSize.width * 0.1,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      width: screenSize.width * 0.7,
                      height: screenSize.width * 0.7,
                      color: AppColors.grey.withOpacity(0.3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MealsStackWidget(),
                              StatusBlur(status: AppTitles.status),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.0,
                              vertical: 10.0,
                            ),
                            child: FittedBox(
                              child: Text(
                                '${AppTitles.when}\n${AppTitles.time}',
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlurContainer(
                                borderRadius: 70.0,
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  color: AppColors.white.withOpacity(0.1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          // TODO realisation
                                        },
                                        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                                          backgroundColor: MaterialStateProperty.all<Color>(AppColors.white),
                                          padding: MaterialStateProperty.all(
                                            EdgeInsets.all(32.0),
                                          ),
                                        ),
                                        child: Image(
                                          image: AssetImage(AppIcons.lock),
                                          width: 20.0,
                                          height: 20.0,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                                        width: 30.0,
                                        child: Image(
                                          image: AssetImage(AppIcons.arrows),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          // TODO realisation
                                        },
                                        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                                          backgroundColor: MaterialStateProperty.all<Color>(AppColors.white.withOpacity(0.1)),
                                          padding: MaterialStateProperty.all(
                                            EdgeInsets.all(32.0),
                                          ),
                                        ),
                                        child: Image(
                                          image: AssetImage(AppIcons.unlock),
                                          width: 20.0,
                                          height: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: BlurContainer(
                    borderRadius: 70.0,
                    child: Container(
                      width: screenSize.width * 0.7,
                      padding: EdgeInsets.all(4.0),
                      color: AppColors.white.withOpacity(0.25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // TODO realisation
                            },
                            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.all(25.0),
                              ),
                            ),
                            child: Image(
                              image: AssetImage(AppIcons.home),
                              width: 40.0,
                              height: 40.0,
                            ),
                          ),
                          SizedBox(width: 4.0),
                          ElevatedButton(
                            onPressed: () {
                              // TODO realisation
                            },
                            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                              backgroundColor: MaterialStateProperty.all<Color>(AppColors.accent),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.all(32.0),
                              ),
                            ),
                            child: Image(
                              image: AssetImage(AppIcons.box),
                              width: 25.0,
                              height: 25.0,
                            ),
                          ),
                          SizedBox(width: 4.0),
                          ElevatedButton(
                            onPressed: () {
                              // TODO realisation
                            },
                            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.all(32.0),
                              ),
                            ),
                            child: Image(
                              image: AssetImage(AppIcons.account),
                              width: 26.0,
                              height: 26.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}








