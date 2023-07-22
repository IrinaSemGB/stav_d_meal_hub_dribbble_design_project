import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/app_images.dart';
import 'meal_image_widget.dart';

class MealsStackWidget extends StatelessWidget {

  final double width;
  final double height;
  const MealsStackWidget({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.35,
      height: height * 0.21,
      child: Stack(
        children: [
          Positioned(
            left: 0.0,
            child: MealImage(height: height * 0.2, image: AppImages.orderedDish_2),
          ),
          Positioned(
            right: 0.0,
            child: MealImage(height: height * 0.2, image: AppImages.orderedDish_1),
          ),
        ],
      ),
    );
  }
}