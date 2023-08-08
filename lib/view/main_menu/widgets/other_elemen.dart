import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/view/grid_elemen_menu/aktinium_menu/aktinium_screen.dart';
import 'package:kimiaapp/view/grid_elemen_menu/lantanum_menu/lantanum_screen.dart';
import 'package:kimiaapp/view/grid_elemen_menu/unknown_properties_menu/unknown_properties_screen.dart';

import 'menu_button.dart';

class OtherElemen extends StatelessWidget {
  const OtherElemen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((12))),
      title: const Text(
        'Other Elements',
        textAlign: TextAlign.center,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 10.w,
          ),
          SizedBox(
            height: controller.screenHeight / 10,
            child: MenuButton(
              ontap: () => Get.to(() => const AktiniumScreen()),
              text: 'Aktinium',
              color: ChemistryColorApp.containerMenu10,
              imagePath: 'elemenicon10.png',
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          SizedBox(
            height: controller.screenHeight / 10,
            child: MenuButton(
              ontap: () => Get.to(() => const LantanumScreen()),
              text: 'Lantanum',
              color: ChemistryColorApp.containerMenu8,
              imagePath: 'elemenicon8.png',
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          SizedBox(
            height: 83.h,
            width: 80.w,
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
