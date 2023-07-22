import 'package:flutter/material.dart';
import '../../../common_widgets/app_top_bar_widget.dart';
import '../../../constants/app_titles.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // App Bar
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: AppTopBar(height: screenSize.height * 0.1),
        ),
        SizedBox(height: screenSize.height * 0.02),
        // Order Number
        Container(
          height: screenSize.height * 0.12,
          width: screenSize.width * 0.6,
          child: FittedBox(
            child: Text(
              AppTitles.order,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 2,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}