import 'package:flutter/material.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/widgets/order_container/status_blur_widget.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/widgets/order_container/unlock_order_widget.dart';
import '../../../../common_widgets/blur_rect_container_widget.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_titles.dart';
import 'meals_stack_widget.dart';

class OrderContainer extends StatelessWidget {
  final double width;

  const OrderContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return BlurRectContainer(
      borderRadius: width * 0.1,
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: width * 0.7,
        height: width * 0.8,
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
                fit: BoxFit.cover,
                child: Text(
                  '${AppTitles.when}\n${AppTitles.time}',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
            UnlockOrder(),
          ],
        ),
      ),
    );
  }
}