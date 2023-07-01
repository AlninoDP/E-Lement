import 'package:flutter/material.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/main_menu/chemistry_fact.dart';
import 'package:kimiaapp/widgets/main_menu/header1_menu.dart';
import 'package:kimiaapp/widgets/main_menu/header2_menu.dart';
import 'package:kimiaapp/widgets/main_menu/header3_menu.dart';
import 'package:kimiaapp/widgets/main_menu/header4_menu.dart';
import 'package:kimiaapp/widgets/main_menu/menu_button.dart';
import 'package:kimiaapp/widgets/main_menu/scientist_quote.dart';

import '../models/colors.dart';
import '../widgets/main_menu/search_bar.dart';

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
                    children: const <Widget>[
                      MenuButton(
                          text: "Logam Alkali",
                          color: ChemistryColorApp.containerMenu1,
                          imagePath: "elemenicon1.png"),
                      MenuButton(
                          text: "Logam Alkali Tanah",
                          color: ChemistryColorApp.containerMenu2,
                          imagePath: "elemenicon2.png"),
                      MenuButton(
                          text: "Logam Pasca Transisi",
                          color: ChemistryColorApp.containerMenu3,
                          imagePath: "elemenicon3.png"),
                      MenuButton(
                          text: "Logam Transisi",
                          color: ChemistryColorApp.containerMenu4,
                          imagePath: "elemenicon4.png"),
                      MenuButton(
                          text: "Gas Mulia",
                          color: ChemistryColorApp.containerMenu5,
                          imagePath: "elemenicon5.png"),
                      MenuButton(
                          text: "Metaloid",
                          color: ChemistryColorApp.containerMenu6,
                          imagePath: "elemenicon6.png"),
                      MenuButton(
                          text: "Non Logam Reaktif",
                          color: ChemistryColorApp.containerMenu7,
                          imagePath: "elemenicon7.png"),
                      MenuButton(
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
