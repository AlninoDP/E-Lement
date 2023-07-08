import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/screens/grid_menu_elemen/aktinium_screen.dart';
import 'package:kimiaapp/screens/grid_menu_elemen/lantanum_screen.dart';
import 'package:kimiaapp/screens/grid_menu_elemen/unknown_properties_screen.dart';

import 'menu_button.dart';

class OtherElemen extends StatelessWidget {
  const OtherElemen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Others',
        textAlign: TextAlign.center,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 80,
            child: MenuButton(
              ontap: () => Get.to(() => const AktiniumScreen()),
              text: 'Aktinium',
              color: ChemistryColorApp.containerMenu10,
              imagePath: 'elemenicon10.png',
            ),
          ),
          SizedBox(
            height: 80,
            child: MenuButton(
              ontap: () => Get.to(() => const LantanumScreen()),
              text: 'Lantanum',
              color: ChemistryColorApp.containerMenu8,
              imagePath: 'elemenicon8.png',
            ),
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
        TextButton(
          child: const Text('Close'),
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      ],
    );
  }
}
