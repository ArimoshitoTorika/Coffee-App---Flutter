import 'package:flutter/material.dart';

import '../Style/color.dart';

class Applogo extends StatelessWidget {
  final double logoWidth;
  final double borderWidth;
  const Applogo({super.key, required this.logoWidth, required this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: MyColorLib.secondary,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(logoWidth),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(logoWidth),
        child: Image.asset(
          'assets/images/bean_brew.png',
          width: logoWidth,
        ),
      ),
    )
    ;
  }
}
