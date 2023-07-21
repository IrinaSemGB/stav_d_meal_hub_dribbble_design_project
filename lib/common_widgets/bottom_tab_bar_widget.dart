import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_icons.dart';
import 'blur_rect_container_widget.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlurRectContainer(
      borderRadius: 70.0,
      child: Container(
        width: 290.0,
        padding: EdgeInsets.all(4.0),
        color: AppColors.white.withOpacity(0.25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                // TODO realisation
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(25.0),
                ),
              ),
              child: Image(
                image: AssetImage(AppIcons.home),
                width: 40.0,
                height: 40.0,
              ),
            ),
            SizedBox(width: 4.0),
            ElevatedButton(
              onPressed: () {
                // TODO realisation
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: MaterialStateProperty.all<Color>(AppColors.accent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(32.0),
                ),
              ),
              child: Image(
                image: AssetImage(AppIcons.box),
                width: 25.0,
                height: 25.0,
              ),
            ),
            SizedBox(width: 4.0),
            ElevatedButton(
              onPressed: () {
                // TODO realisation
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(32.0),
                ),
              ),
              child: Image(
                image: AssetImage(AppIcons.account),
                width: 26.0,
                height: 26.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}