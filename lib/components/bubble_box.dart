import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/colors.dart';

class BubbleBox extends StatelessWidget {
  final String text;
  const BubbleBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 1.5,
      decoration: BoxDecoration(
          color: ChemistryColorApp.containerTextColor,
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(45).w,
            bottomLeft: const Radius.circular(30).w,
          )),
      padding: const EdgeInsets.all(20).w,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: ChemistryColorApp.primaryTextColor),
      ),
    );
  }
}
