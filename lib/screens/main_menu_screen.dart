import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/gas_mulia_menu/gas_mulia_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_alkali_tanah_menu/logam_alkali_tanah_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_pasca_transisi_menu/logam_pasca_transisi_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_transisi_menu/logam_transisi_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/non_logam_reaktif_menu/non_logam_reaktif_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_alkali_menu/logam_alkali_screen.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/main_menu/chemistry_fact.dart';
import 'package:kimiaapp/widgets/main_menu/header1_menu.dart';
import 'package:kimiaapp/widgets/main_menu/header2_menu.dart';
import 'package:kimiaapp/widgets/main_menu/header3_menu.dart';
import 'package:kimiaapp/widgets/main_menu/header4_menu.dart';
import 'package:kimiaapp/widgets/main_menu/menu_button.dart';
import 'package:kimiaapp/widgets/main_menu/other_elemen.dart';
import 'package:kimiaapp/widgets/main_menu/scientist_quote.dart';

import '../models/colors.dart';
import '../widgets/main_menu/search_bar.dart';
import 'grid_elemen_menu/metaloid_menu/metaloid_screen.dart';

class MainMenuScreen extends StatefulWidget {
  final String enteredName;
  const MainMenuScreen({super.key, required this.enteredName});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Background(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header1Menu(enteredName: widget.enteredName),
                const Header2Menu(),
                const Center(
                  child: SearchBarElemen(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.count(
                    shrinkWrap: true,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
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
                          ontap: () =>
                              Get.to(() => const LogamAlkaliTanahScreen()),
                          text: "Logam Alkali Tanah",
                          color: ChemistryColorApp.containerMenu2,
                          imagePath: "elemenicon2.png"),
                      MenuButton(
                          ontap: () =>
                              Get.to(() => const LogamPascaTransisiScreen()),
                          text: "Logam Pasca Transisi",
                          color: ChemistryColorApp.containerMenu3,
                          imagePath: "elemenicon3.png"),
                      MenuButton(
                          ontap: () =>
                              Get.to(() => const LogamTransisiScreen()),
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
                          ontap: () =>
                              Get.to(() => const NonLogamReaktifScreen()),
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
                ),
                const Header3Menu(),
                const Center(
                  child: ChemistryFact(),
                ),
                const Header4Menu(),
                const Center(
                  child: ScientistQuote(),
                )
              ],
            ),
          )),
        ));
  }
}
