import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/models/data/desc_menu_data.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/desc_menu_widgets/desc_content1.dart';
import 'package:kimiaapp/widgets/desc_menu_widgets/desc_content2.dart';
import 'package:kimiaapp/widgets/desc_menu_widgets/desc_description.dart';
import 'package:kimiaapp/widgets/desc_menu_widgets/desc_title.dart';

class DescLogamAlkaliTanah extends StatelessWidget {
  const DescLogamAlkaliTanah({super.key, required this.listElemenData});
  final List<DescMenuData> listElemenData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
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
                                      title: listElemenData[index].title,
                                      textColor: ChemistryColorApp
                                          .logamAlkaliRedContainerText,
                                      containerColor: ChemistryColorApp
                                          .logamAlkaliRedContainer,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      color: Colors.blue,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            listElemenData[index].title,
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    DescContent1(
                                        text: listElemenData[index]
                                            .ingredient[index]),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const DescDescription(),
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