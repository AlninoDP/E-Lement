import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/controller/elemen_menu_controller.dart';
import 'package:kimiaapp/data/elemen_data/non_logam_reaktif_data.dart';
import 'package:kimiaapp/view/elemen_information_menu/non_logam_reaktif_information/non_logam_reaktif_information_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/elemen_menu/widgets/elemen_menu.dart';
import '../../../components/bubble_box.dart';
import 'package:get/get.dart';

class NonLogamReaktifScreen extends StatelessWidget {
  const NonLogamReaktifScreen({super.key});

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
                          'This is Reactive Non Metals, lets try to by click and learn more about them...'),
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
                    itemCount: unsurNonLogamReaktif.length,
                    itemBuilder: (context, index) {
                      final elemen = unsurNonLogamReaktif[index];
                      return ElemenMenu(
                        elemenItemConfig: elemen,
                        onTap: () {
                          final filteredList = controller.getFilteredList(
                              elemen, nonLogamReaktifInformation);
                          Get.to(NonLogamReaktifInformationScreen(
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
