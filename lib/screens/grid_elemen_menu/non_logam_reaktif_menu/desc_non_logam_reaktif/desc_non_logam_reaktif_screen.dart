import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/models/data/desc_menu_data.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/desc_menu_widgets/desc_content1.dart';
import 'package:kimiaapp/widgets/desc_menu_widgets/desc_content2.dart';
import 'package:kimiaapp/widgets/desc_menu_widgets/desc_title.dart';

import '../../../../widgets/desc_menu_widgets/box_header.dart';

class DescNonLogamReaktifScreen extends StatelessWidget {
  const DescNonLogamReaktifScreen({super.key, required this.listElemenData});
  final List<DescMenuData> listElemenData;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        top: true,
        bottom: true,
        child: Scaffold(
          body: Background(
            child: Scrollbar(
              radius: const Radius.circular(30),
              thickness: 10,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            itemCount: listElemenData.length,
                            itemBuilder: (ctx, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    DescTitle(
                                      containerColor: ChemistryColorApp
                                          .reActiveNonMetalsContainer,
                                      title: listElemenData[index].title,
                                      textColor: ChemistryColorApp
                                          .reActiveNonMetalsText,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: screenWidth / 3,
                                      height: screenHeight / 6,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: ChemistryColorApp
                                            .reActiveNonMetalsContainer,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(listElemenData[index].title,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: ChemistryColorApp
                                                      .reActiveNonMetalsText))
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const BoxHeader(
                                        text: 'Element Information'),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    DescContent1(
                                        text: listElemenData[index]
                                            .ingredient[index]),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const BoxHeader(
                                      text: 'Description',
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    DescContent2(
                                        text:
                                            listElemenData[index].description),
                                  ],
                                ),
                              );
                            }))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
