import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header2Menu extends StatelessWidget {
  const Header2Menu({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth / 1.4,
      height: screenHeight / 10,
      margin: EdgeInsets.only(
        left: 10.r,
      ),
      child: Text(
        "Which material do you want to learn",
        style: TextStyle(fontSize: 28.sp, color: Colors.black),
      ),
    );
  }
}
