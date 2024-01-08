import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/components/bubble_box.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/data/elemen_data/aktinium_data.dart';
import 'package:kimiaapp/view/elemen_information_menu/aktinium_information/aktinium_information_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/elemen_menu/widgets/elemen_menu.dart';
import 'package:get/get.dart';

class AktiniumScreen extends StatelessWidget {
  const AktiniumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Background(
            child: Padding(
              padding: const EdgeInsets.all(10.0).w,
              child: Column(
                children: [
                  const BubbleBox(
                      text:
                          'This is Actinides, lets try to by click and learn more about them...'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                      child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30.0,
                      crossAxisSpacing: 30.0,
                    ),
                    children: [
                      for (final elemen in unsurAktinium)
                        ElemenMenu(
                          elemenItemConfig: elemen,
                          onTap: () {
                            final filteredList =
                                controller.tesTap(elemen, aktiniumInformation);
                            Get.to(AktiniumInformationScreen(
                                listElemenData: filteredList));
                            // controller.onGridElemenTap(
                            //     unsurAktiniumDesc, elemen, (filteredList) {
                            //   Get.to(() => AktiniumInformationScreen(
                            //       listElemenData: filteredList));
                            // });
                          },
                        )
                    ],
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
