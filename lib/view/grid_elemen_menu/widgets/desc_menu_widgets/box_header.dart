import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kimiaapp/models/data/colors.dart';

class BoxHeader extends StatelessWidget {
  const BoxHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.7,
      height: screenHeight * 0.055,
      decoration: BoxDecoration(
          color: ChemistryColorApp.containerTextColor,
          borderRadius: BorderRadius.all(const Radius.circular(20).w)),
      padding: const EdgeInsets.all(10).w,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
