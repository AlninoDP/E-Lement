import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/controller/elemen_menu_controller.dart';
import 'package:kimiaapp/data/elemen_data/metaloid_data.dart';
import 'package:kimiaapp/view/elemen_information_menu/metaloid_information/metaloid_information_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/elemen_menu/widgets/elemen_menu.dart';
import '../../../components/bubble_box.dart';
import 'package:get/get.dart';

class MetaloidScreen extends StatelessWidget {
  const MetaloidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ElemenMenuController controller = Get.find();
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
                          'This is Metalloids, lets try to by click and learn more about them...'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                      child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30.0,
                      crossAxisSpacing: 30.0,
                    ),
                    itemCount: unsurMetaloid.length,
                    itemBuilder: (context, index) {
                      final elemen = unsurMetaloid[index];
                      return ElemenMenu(
                        elemenItemConfig: elemen,
                        onTap: () {
                          final filteredList = controller.getFilteredList(
                              elemen, metaloidInformation);
                          Get.to(MetaloidInformationScreen(
                              listElemenData: filteredList));
                        },
                      );
                    },
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
