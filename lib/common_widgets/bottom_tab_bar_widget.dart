import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_icons.dart';
import 'blur_rect_container_widget.dart';

class BottomTabBar extends StatelessWidget {

  final double height;
  const BottomTabBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return BlurRectContainer(
      borderRadius: height,
      child: Container(
        height: height,
        width: height * 3,
        padding: EdgeInsets.all(4.0),
        color: AppColors.white.withOpacity(0.25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                // TODO realisation
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(height * 0.3),
                ),
              ),
              child: Image(
                image: AssetImage(AppIcons.home),
                width: height * 0.3,
              ),
            ),
            SizedBox(width: 1.0),
            ElevatedButton(
              onPressed: () {
                // TODO realisation
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: MaterialStateProperty.all<Color>(AppColors.accent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(height * 0.3),
                ),
              ),
              child: Image(
                image: AssetImage(AppIcons.box),
                width: height * 0.3,
              ),
            ),
            SizedBox(width: 1.0),
            ElevatedButton(
              onPressed: () {
                // TODO realisation
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(height * 0.3),
                ),
              ),
              child: Image(
                image: AssetImage(AppIcons.account),
                width: height * 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}