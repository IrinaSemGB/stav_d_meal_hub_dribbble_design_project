import 'dart:ui';
import 'package:flutter/cupertino.dart';
import '../../../constants/app_colors.dart';

class MealImage extends StatelessWidget {

  final String image;

  const MealImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
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
      ),
    );
  }
}