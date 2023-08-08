import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/models/data/elemen_data/unknown_properties_data.dart';
import 'package:kimiaapp/view/grid_elemen_menu/unknown_properties_menu/desc_unknown_properties/desc_unknown_properties_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/grid_elemen_menu/widgets/unsur_elemen_grid_item.dart';
import '../../../components/bubble_box.dart';
import 'package:get/get.dart';

class UnknownPropertiesScreen extends StatelessWidget {
  const UnknownPropertiesScreen({super.key});

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
                          'This is Unknown Properties Element, lets try to by click and learn more about them...'),
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
                      for (final elemen in unsurUnknownProperties)
                        UnsurElemenGridItem(
                          categoryItemGrid: elemen,
                          onTap: () {
                            controller.onGridElemenTap(
                                context, unsurUnknownPropertiesDesc, elemen,
                                (filteredList) {
                              Get.to(() => DescUnknownPropertiesScreen(
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
