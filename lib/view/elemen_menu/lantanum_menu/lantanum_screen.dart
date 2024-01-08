import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/data/elemen_data/lantanum_data.dart';
import 'package:kimiaapp/view/elemen_information_menu/lantanum_information/lantanum_information_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/elemen_menu/widgets/elemen_menu.dart';
import '../../../components/bubble_box.dart';
import 'package:get/get.dart';

class LantanumScreen extends StatelessWidget {
  const LantanumScreen({super.key});

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
                          'This is Lanthanides, lets try to by click and learn more about them...'),
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
                      for (final elemen in unsurLantanum)
                        ElemenMenu(
                          elemenItemConfig: elemen,
                          onTap: () {
                            controller.onGridElemenTap(
                                lantanumInformaton, elemen, (filteredList) {
                              Get.to(() => LantanumInformationScreen(
                                  listElemenData: filteredList));
                            });
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
