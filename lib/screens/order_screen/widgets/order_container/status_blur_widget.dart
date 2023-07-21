import 'package:flutter/material.dart';
import '../../../../common_widgets/blur_rect_container_widget.dart';
import '../../../../constants/app_colors.dart';

class StatusBlur extends StatelessWidget {

  final String status;

  const StatusBlur({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return BlurRectContainer(
      borderRadius: 70.0,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 17.0,
          vertical: 22.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70.0),
          color: AppColors.white.withOpacity(0.2),
        ),
        child: FittedBox(
          child: Text(
            status,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}