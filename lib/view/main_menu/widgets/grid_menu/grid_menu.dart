import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/core/colors.dart';
import 'package:kimiaapp/view/elemen_menu/gas_mulia_menu/gas_mulia_screen.dart';
import 'package:kimiaapp/view/elemen_menu/logam_alkali_menu/logam_alkali_screen.dart';
import 'package:kimiaapp/view/elemen_menu/logam_alkali_tanah_menu/logam_alkali_tanah_screen.dart';
import 'package:kimiaapp/view/elemen_menu/logam_pasca_transisi_menu/logam_pasca_transisi_screen.dart';
import 'package:kimiaapp/view/elemen_menu/logam_transisi_menu/logam_transisi_screen.dart';
import 'package:kimiaapp/view/elemen_menu/metaloid_menu/metaloid_screen.dart';
import 'package:kimiaapp/view/elemen_menu/non_logam_reaktif_menu/non_logam_reaktif_screen.dart';
import 'package:kimiaapp/view/main_menu/widgets/grid_menu/menu_button.dart';
import 'package:kimiaapp/view/main_menu/widgets/other_elemen.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0).w,
      child: GridView.count(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 4.r, vertical: 8.r),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        primary: false,
        children: <Widget>[
          MenuButton(
              ontap: () => Get.to(() => const LogamAlkaliScreen()),
              text: "Logam Alkali",
              color: ChemistryColorApp.containerMenu1,
              imagePath: "elemenicon1.png"),
          MenuButton(
              ontap: () => Get.to(() => const LogamAlkaliTanahScreen()),
              text: "Logam Alkali Tanah",
              color: ChemistryColorApp.containerMenu2,
              imagePath: "elemenicon2.png"),
          MenuButton(
              ontap: () => Get.to(() => const LogamPascaTransisiScreen()),
              text: "Logam Pasca Transisi",
              color: ChemistryColorApp.containerMenu3,
              imagePath: "elemenicon3.png"),
          MenuButton(
              ontap: () => Get.to(() => const LogamTransisiScreen()),
              text: "Logam Transisi",
              color: ChemistryColorApp.containerMenu4,
              imagePath: "elemenicon4.png"),
          MenuButton(
              ontap: () => Get.to(() => const GasMuliaScreen()),
              text: "Gas Mulia",
              color: ChemistryColorApp.containerMenu5,
              imagePath: "elemenicon5.png"),
          MenuButton(
              ontap: () => Get.to(() => const MetaloidScreen()),
              text: "Metaloid",
              color: ChemistryColorApp.containerMenu6,
              imagePath: "elemenicon6.png"),
          MenuButton(
              ontap: () => Get.to(() => const NonLogamReaktifScreen()),
              text: "Non Logam Reaktif",
              color: ChemistryColorApp.containerMenu7,
              imagePath: "elemenicon7.png"),
          MenuButton(
              ontap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const OtherElemen();
                  },
                );
              },
              text: 'Others',
              color: ChemistryColorApp.containerMenuOthers,
              imagePath: "othericon.png"),
        ],
      ),
    );
  }
}
