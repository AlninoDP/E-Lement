import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';

class DescContent1 extends StatelessWidget {
  final String text;
  const DescContent1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: ChemistryColorApp.containerTextColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(45),
            bottomLeft: Radius.circular(30),
          )),
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, height: 1.3),
      ),
    );
  }
}
