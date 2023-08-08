import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/models/elemen_desc.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/grid_elemen_menu/widgets/desc_menu_widgets/desc_content1.dart';
import 'package:kimiaapp/view/grid_elemen_menu/widgets/desc_menu_widgets/desc_content2.dart';
import 'package:kimiaapp/view/grid_elemen_menu/widgets/desc_menu_widgets/desc_title.dart';

import '../../widgets/desc_menu_widgets/box_header.dart';

class DescUnknownPropertiesScreen extends StatelessWidget {
  const DescUnknownPropertiesScreen({super.key, required this.listElemenData});
  final List<ElemenDesc> listElemenData;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Background(
            child: Scrollbar(
              radius: const Radius.circular(30).w,
              thickness: 10.w,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            itemCount: listElemenData.length,
                            itemBuilder: (ctx, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0).w,
                                child: Column(
                                  children: [
                                    DescTitle(
                                      containerColor:
                                          ChemistryColorApp.containerMenu9,
                                      title: listElemenData[index].title,
                                      textColor:
                                          ChemistryColorApp.containerMenu9text,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      width: screenWidth / 3,
                                      height: screenHeight / 6,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          const Radius.circular(10).w,
                                        ),
                                        color: ChemistryColorApp.containerMenu9,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(listElemenData[index].title,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: ChemistryColorApp
                                                      .containerMenu9text))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    const BoxHeader(
                                        text: 'Element Information'),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    DescContent1(
                                        text: listElemenData[index]
                                            .ingredient[index]),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    const BoxHeader(
                                      text: 'Description',
                                    ),
                                    SizedBox(
                                      height: 8.h,
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
