import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_titles.dart';

class AppTopBar extends StatelessWidget {

  final double height;
  const AppTopBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // circle button
        children: [
          ElevatedButton(
            onPressed: () {
              // TODO realisation
            },
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(padding: MaterialStateProperty.all(EdgeInsets.all(height * 0.3))),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.white,
              size: height * 0.2,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: height * 0.55),
              child: FittedBox(
                child: Text(
                  AppTitles.title,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO realisation
            },
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(padding: MaterialStateProperty.all(EdgeInsets.all(height * 0.3))),
            child: Icon(
              Icons.edit_outlined,
              color: AppColors.white,
              size: height * 0.2,
            ),
          ),
        ],
      ),
    );
  }
}