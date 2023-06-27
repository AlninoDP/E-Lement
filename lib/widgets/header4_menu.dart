import 'package:flutter/material.dart';

class Header4Menu extends StatelessWidget {
  const Header4Menu({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth / 1,
        height: screenHeight / 16,
        padding: const EdgeInsets.all(10),
        child: const Text(
          "Ilmuwan Quote",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
