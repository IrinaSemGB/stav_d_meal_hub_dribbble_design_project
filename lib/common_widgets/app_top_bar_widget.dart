import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_titles.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // circle button
        children: [
          ElevatedButton(
            onPressed: () {
              // TODO realisation
            },
            style: Theme.of(context).elevatedButtonTheme.style,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.white,
              size: 23.0,
            ),
          ),
          FittedBox(
            child: Text(
              AppTitles.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO realisation
            },
            style: Theme.of(context).elevatedButtonTheme.style,
            child: Icon(
              Icons.edit_outlined,
              color: AppColors.white,
              size: 23.0,
            ),
          ),
        ],
      ),
    );
  }
}