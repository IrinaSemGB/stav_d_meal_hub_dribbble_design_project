import 'package:flutter/material.dart';
import 'package:stav_d_meal_hub_dribbble_design_project/screens/order_screen/widgets/order_container/unlock_order_widget.dart';
import '../../../../common_widgets/blur_rect_container_widget.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_titles.dart';
import 'header_order_container/header_order_container_widget.dart';

class OrderContainer extends StatelessWidget {

  final Size size;
  const OrderContainer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return BlurRectContainer(
      borderRadius: size.width * 0.1,
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: size.width * 0.7,
        height: size.width * 0.78,
        color: AppColors.grey.withOpacity(0.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderOrderContainer(size: size),
            DateOrderText(width: size.width * 0.7, height: size.width * 0.8),
            UnlockOrder(width: size.width * 0.7, height: size.width * 0.8),
          ],
        ),
      ),
    );
  }
}

class DateOrderText extends StatelessWidget {

  final double height;
  final double width;
  const DateOrderText({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.0,
      ),
      width: width * 0.85,
      height: height * 0.2,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Text(
          '${AppTitles.when}\n${AppTitles.time}',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}

