import 'package:flutter/material.dart';
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
            padding:
                const EdgeInsets.only(left: 39, right: 39, top: 13, bottom: 13),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: ChemistryColorApp.containerTextColor),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: ChemistryColorApp.primaryTextColor),
        ),
      ),
    );
  }
}
