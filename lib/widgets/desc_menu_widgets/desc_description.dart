import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';

class DescDescription extends StatelessWidget {
  const DescDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.7,
      height: screenHeight * 0.055,
      decoration: const BoxDecoration(
          color: ChemistryColorApp.containerTextColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: const EdgeInsets.all(10),
      child: const Text(
        "Description",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
