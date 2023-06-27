import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/colors.dart';

class TextFieldUsername extends StatelessWidget {
  final TextEditingController controller;
  final RxString onTextChanged;
  const TextFieldUsername(
      {super.key, required this.controller, required this.onTextChanged});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 15,
      width: screenWidth / 1.5,
      margin: const EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: ChemistryColorApp.searchBarColor,
          borderRadius: BorderRadius.circular(50)),
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        onChanged: (value) => onTextChanged.value = value,
        style: const TextStyle(fontSize: 21),
        decoration: const InputDecoration(
            labelText: "Your Name",
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.person,
              size: 35,
              color: Colors.green,
            )),
      ),
    );
  }
}
