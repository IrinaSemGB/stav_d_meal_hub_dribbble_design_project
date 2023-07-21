import 'dart:ui';
import 'package:flutter/cupertino.dart';

class BlurCircleContainer extends StatelessWidget {

  final Widget child;

  const BlurCircleContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: child,
      ),
    );
  }
}