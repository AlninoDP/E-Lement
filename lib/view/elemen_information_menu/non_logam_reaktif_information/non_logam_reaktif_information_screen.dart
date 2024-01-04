import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/core/colors.dart';
import 'package:kimiaapp/core/elemen_information.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/elemen_information_menu/widgets/desc_content1.dart';
import 'package:kimiaapp/view/elemen_information_menu/widgets/desc_content2.dart';
import 'package:kimiaapp/view/elemen_information_menu/widgets/desc_title.dart';
import 'package:kimiaapp/view/elemen_information_menu/widgets/box_header.dart';

class NonLogamReaktifInformationScreen extends StatelessWidget {
  const NonLogamReaktifInformationScreen(
      {super.key, required this.listElemenData});
  final List<ElementInformation> listElemenData;

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();
    return SafeArea(
        top: true,
        bottom: true,
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
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      width: controller.screenWidth / 3,
                                      height: controller.screenHeight / 6,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          const Radius.circular(10).w,
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
                                    SizedBox(
                                      height: 10.sp,
                                    ),
                                    const BoxHeader(
                                        text: 'Element Information'),
                                    SizedBox(
                                      height: 10.sp,
                                    ),
                                    DescContent1(
                                        text: listElemenData[index]
                                            .information[index]),
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
