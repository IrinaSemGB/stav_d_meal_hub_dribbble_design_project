import 'package:flutter/material.dart';
import '../../../../../common_widgets/blur_rect_container_widget.dart';
import '../../../../../constants/app_colors.dart';

class StatusBlur extends StatelessWidget {

  final double width;
  final double height;
  final String status;

  const StatusBlur({super.key, required this.status, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return BlurRectContainer(
      borderRadius: height,
      child: Container(
        width: width * 0.5,
        height: height * 0.21,
        padding: EdgeInsets.symmetric(
          // horizontal:  width * 0.5 ,
          vertical: height * 0.2 / 3,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70.0),
          color: AppColors.white.withOpacity(0.2),
        ),
        child: FittedBox(
          child: Text(
            status,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}