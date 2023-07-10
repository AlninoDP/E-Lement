import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';

class DescContent2 extends StatelessWidget {
  final String text;
  const DescContent2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: ChemistryColorApp.containerTextColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(45),
            bottomLeft: Radius.circular(30),
          )),
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
