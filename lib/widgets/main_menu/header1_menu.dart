import 'package:flutter/material.dart';

class Header1Menu extends StatelessWidget {
  final String enteredName;
  const Header1Menu({super.key, required this.enteredName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth / 1,
      height: screenHeight / 16,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      child: Text(
        "Hai $enteredName, Nice To See You",
        style: const TextStyle(fontSize: 25, color: Colors.black),
      ),
    );
  }
}
