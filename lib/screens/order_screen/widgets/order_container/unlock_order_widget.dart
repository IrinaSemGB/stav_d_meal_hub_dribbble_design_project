import 'package:flutter/material.dart';
import '../../../../common_widgets/blur_rect_container_widget.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_icons.dart';

class UnlockOrder extends StatelessWidget {
  const UnlockOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlurRectContainer(
          borderRadius: 70.0,
          child: Container(
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
                      EdgeInsets.all(32.0),
                    ),
                  ),
                  child: Image(
                    image: AssetImage(AppIcons.lock),
                    width: 20.0,
                    height: 20.0,
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
                      EdgeInsets.all(32.0),
                    ),
                  ),
                  child: Image(
                    image: AssetImage(AppIcons.unlock),
                    width: 20.0,
                    height: 20.0,
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