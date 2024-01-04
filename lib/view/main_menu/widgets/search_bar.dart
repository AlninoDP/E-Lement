import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class SearchBarElemen extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  const SearchBarElemen(
      {super.key, required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 19,
      width: screenWidth / 1.1,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 3,
              blurRadius: 6,
              offset: const Offset(0, 2), // shadow direction: bottom right
            )
          ],
          border: Border.all(color: Colors.black),
          color: ChemistryColorApp.searchBarColor,
          borderRadius: BorderRadius.circular(50).w),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        style: TextStyle(fontSize: 25.sp),
        decoration: InputDecoration(
            label: Center(
              child: Text("Search Something. . .",
                  style: TextStyle(
                    fontSize: 23.sp,
                    height: 1.h,
                  )),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 29.h,
              color: Colors.green,
            )),
      ),
    );
  }
}
