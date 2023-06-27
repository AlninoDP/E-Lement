import 'package:flutter/material.dart';

import '../models/colors.dart';

class BubbleBox extends StatelessWidget {
  final String text;
  const BubbleBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 1.5,
      decoration: const BoxDecoration(
          color: ChemistryColorApp.containerTextColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(45),
            bottomLeft: Radius.circular(30),
          )),
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: ChemistryColorApp.primaryTextColor),
      ),
    );
  }
}
