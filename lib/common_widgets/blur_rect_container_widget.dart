import 'dart:ui';
import 'package:flutter/cupertino.dart';

class BlurRectContainer extends StatelessWidget {

  final Widget child;
  final double borderRadius;
  const BlurRectContainer({super.key, required this.child, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: child,
      ),
    );
  }
}
