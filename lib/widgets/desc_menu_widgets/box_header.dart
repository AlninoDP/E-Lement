import 'package:flutter/material.dart';

import 'package:kimiaapp/models/colors.dart';

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
      decoration: const BoxDecoration(
          color: ChemistryColorApp.containerTextColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
