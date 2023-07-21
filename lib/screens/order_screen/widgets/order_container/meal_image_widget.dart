import 'package:flutter/cupertino.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/common_widgets/blur_circle_container_widget.dart';
import '../../../../constants/app_colors.dart';

class MealImage extends StatelessWidget {

  final String image;

  const MealImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return BlurCircleContainer(
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.2),
        ),
        child: Image(
          image: AssetImage(image),
          width: 55.0,
          height: 55.0,
        ),
      ),
    );
  }
}