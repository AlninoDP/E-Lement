import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/core/colors.dart';

class SearchContent1 extends StatelessWidget {
  final String text;
  const SearchContent1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ChemistryColorApp.containerTextColor,
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(45).w,
            bottomLeft: const Radius.circular(30).w,
          )),
      padding: const EdgeInsets.all(20).w,
      child: Text(
        text,
        style: TextStyle(fontSize: 20.sp, height: 1.3.h),
      ),
    );
  }
}
