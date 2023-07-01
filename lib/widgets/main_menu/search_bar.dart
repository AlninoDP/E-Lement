import 'package:flutter/material.dart';

import '../../models/colors.dart';

class SearchBarElemen extends StatelessWidget {
  const SearchBarElemen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 19,
      width: screenWidth / 1.1,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 3,
              blurRadius: 6,
              offset: const Offset(0, 2), // shadow direction: bottom right
            )
          ],
          border: Border.all(color: Colors.black),
          color: ChemistryColorApp.searchBarColor,
          borderRadius: BorderRadius.circular(50)),
      child: const TextField(
        style: TextStyle(fontSize: 25),
        decoration: InputDecoration(
            label: Center(
              child: Text("Search Something. . .",
                  style: TextStyle(
                    fontSize: 23,
                    height: 1,
                  )),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 29,
              color: Colors.green,
            )),
      ),
    );
  }
}
