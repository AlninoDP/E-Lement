import 'package:flutter/material.dart';

class DescTitle extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color containerColor;
  const DescTitle(
      {super.key,
      required this.title,
      required this.textColor,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.7,
      height: screenHeight * 0.055,
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
      ),
    );
  }
}
