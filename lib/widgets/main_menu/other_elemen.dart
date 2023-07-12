import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/aktinium_menu/aktinium_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/lantanum_menu/lantanum_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/unknown_properties_menu/unknown_properties_screen.dart';

import 'menu_button.dart';

class OtherElemen extends StatelessWidget {
  const OtherElemen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((12))),
      title: const Text(
        'Other Elements',
        textAlign: TextAlign.center,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: screenHeight / 10,
            child: MenuButton(
              ontap: () => Get.to(() => const AktiniumScreen()),
              text: 'Aktinium',
              color: ChemistryColorApp.containerMenu10,
              imagePath: 'elemenicon10.png',
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: screenHeight / 10,
            child: MenuButton(
              ontap: () => Get.to(() => const LantanumScreen()),
              text: 'Lantanum',
              color: ChemistryColorApp.containerMenu8,
              imagePath: 'elemenicon8.png',
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 83,
            width: 80,
            child: MenuButton(
              ontap: () => Get.to(() => const UnknownPropertiesScreen()),
              text: 'Tidak Diketahui',
              color: ChemistryColorApp.containerMenu9,
              imagePath: 'elemenicon9.png',
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: TextButton(
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Get.back(); // Close the dialog
            },
          ),
        ),
      ],
    );
  }
}
