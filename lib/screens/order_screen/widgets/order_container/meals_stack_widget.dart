import 'package:flutter/cupertino.dart';
import '../../../../constants/app_images.dart';
import 'meal_image_widget.dart';

class MealsStackWidget extends StatelessWidget {
  const MealsStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 80.0,
      child: Stack(
        children: [
          Positioned(
            left: 0.0,
            child: MealImage(image: AppImages.orderedDish_2),
          ),
          Positioned(
            right: 0.0,
            child: MealImage(image: AppImages.orderedDish_1),
          ),
        ],
      ),
    );
  }
}