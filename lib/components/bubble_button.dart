import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/colors.dart';

class BubbleButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const BubbleButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 13,
      width: screenWidth / 1.5,
      margin: const EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(
                left: 39.r, right: 39.r, top: 13.r, bottom: 13.r),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30).w),
            backgroundColor: ChemistryColorApp.containerTextColor),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              color: ChemistryColorApp.primaryTextColor),
        ),
      ),
    );
  }
}
