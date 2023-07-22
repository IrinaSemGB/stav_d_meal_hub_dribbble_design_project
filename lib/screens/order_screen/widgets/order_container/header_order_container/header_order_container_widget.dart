import 'package:flutter/cupertino.dart';
import '../../../../../constants/app_titles.dart';
import 'meals_stack_widget.dart';
import 'status_blur_widget.dart';

class HeaderOrderContainer extends StatelessWidget {
  const HeaderOrderContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MealsStackWidget(width: size.width * 0.7, height: size.width * 0.8),
        StatusBlur(status: AppTitles.status, width: size.width * 0.7, height: size.width * 0.8),
      ],
    );
  }
}