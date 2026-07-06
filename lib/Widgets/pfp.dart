import 'package:flutter/material.dart';

class PFP extends StatelessWidget {
  final double profileSize;

  const PFP({super.key, required this.profileSize});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(profileSize),
      child: Image.asset('assets/images/pfp.png',fit: BoxFit.fitHeight,width: profileSize, height: profileSize),
    );
  }
}
