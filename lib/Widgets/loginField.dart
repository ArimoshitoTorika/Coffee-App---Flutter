import 'package:flutter/material.dart';

import '../Style/color.dart';

class Loginfield extends StatefulWidget {
  final IconData fieldIcon;
  final String hintText;
  const Loginfield({super.key, required this.hintText, required this.fieldIcon});

  @override
  State<Loginfield> createState() => _LoginfieldState();
}

class _LoginfieldState extends State<Loginfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
          hint: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(widget.fieldIcon,color: MyColorLib.primary,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(widget.hintText),
              ),
            ],
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                width: 3,
                color: MyColorLib.secondary,
              )
          ),border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              width: 3,
              color: MyColorLib.secondary,
            )
        ),focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              width: 3,
              color: MyColorLib.primary,
            )
        ),
        ),
      ),
    );
  }
}
