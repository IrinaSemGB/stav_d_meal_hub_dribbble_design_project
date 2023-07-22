import 'package:flutter/material.dart';
import '../../../../common_widgets/blur_rect_container_widget.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_icons.dart';

class UnlockOrder extends StatelessWidget {

  final double width;
  final double height;

  const UnlockOrder({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlurRectContainer(
          borderRadius: height,
          child: Container(
            height: height * 0.25,
            width: width * 0.8,
            padding: EdgeInsets.all(4.0),
            color: AppColors.white.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO realisation
                  },
                  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    backgroundColor: MaterialStateProperty.all<Color>(AppColors.white),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(height * 0.09),
                    ),
                  ),
                  child: Image(
                    image: AssetImage(AppIcons.lock),
                    height: height * 0.05,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 30.0,
                  child: Image(
                    image: AssetImage(AppIcons.arrows),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO realisation
                  },
                  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    backgroundColor: MaterialStateProperty.all<Color>(AppColors.white.withOpacity(0.1)),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(height * 0.09),
                    ),
                  ),
                  child: Image(
                    image: AssetImage(AppIcons.unlock),
                    height: height * 0.05,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(),
      ],
    );
  }
}