import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/bubble_box.dart';
import 'package:kimiaapp/widgets/grid_elemen_builder.dart';

class LogamAlkaliScreen extends StatelessWidget {
  const LogamAlkaliScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the onTap methods for each index
    void onTapPage1() {
      print('Tapped on item of index 0 (Page 1)');
    }

    void onTapPage2() {
      print('Tapped on item of index 1 (Page 2)');
    }

    void onTapNull() {
      // No action
    }

    void onTapPage5() {
      print('Tapped on item of index 4 (Page 5)');
      // Navigate to page 5 logic here
    }

    void onTapPage6() {
      print('Tapped on item of index 5 (Page 6)');
      // Navigate to page 5 logic here
    }

    // Create a list of onTap methods
    List<Function()> onTapList = [
      onTapPage1, // Index 0
      onTapPage2, // Index 1
      onTapNull, // Index 2 (No action)
      onTapNull, // Index 3 (No action)
      onTapPage5, // Index 4
      onTapPage6, //index 5
    ];
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Background(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const BubbleBox(
                      text:
                          'This is Alkali metals, lets try to by click and learn more about them...'),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: GridElemenBuilder(
                    onTapList: onTapList,
                    containerColor: ChemistryColorApp.logamAlkaliContainer,
                    jenisElemen: 'Logam Alkali',
                    textColor: ChemistryColorApp.logamAlkaliText,
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
