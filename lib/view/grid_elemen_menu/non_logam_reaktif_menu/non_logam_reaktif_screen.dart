import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/models/data/elemen_data/non_logam_reaktif_data.dart';
import 'package:kimiaapp/view/grid_elemen_menu/non_logam_reaktif_menu/desc_non_logam_reaktif/desc_non_logam_reaktif_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/grid_elemen_menu/widgets/unsur_elemen_grid_item.dart';
import '../../../components/bubble_box.dart';
import 'package:get/get.dart';

class NonLogamReaktifScreen extends StatelessWidget {
  const NonLogamReaktifScreen({super.key});

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
                          'This is Reactive Non Metals, lets try to by click and learn more about them...'),
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
                      for (final elemen in unsurNonLogamReaktif)
                        UnsurElemenGridItem(
                          categoryItemGrid: elemen,
                          onTap: () {
                            controller.onGridElemenTap(
                                context, unsurNonLogamReaktifDesc, elemen,
                                (filteredList) {
                              Get.to(() => DescNonLogamReaktifScreen(
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
