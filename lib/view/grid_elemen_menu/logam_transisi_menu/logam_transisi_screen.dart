import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/models/data/elemen_data/logam_transisi_data.dart';
import 'package:kimiaapp/models/elemen_item_grid.dart';
import 'package:kimiaapp/view/grid_elemen_menu/logam_transisi_menu/desc_logam_transisi/desc_logam_transisi_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/grid_elemen_menu/widgets/unsur_elemen_grid_item.dart';
import '../../../components/bubble_box.dart';
import 'package:get/get.dart';

class LogamTransisiScreen extends StatelessWidget {
  const LogamTransisiScreen({super.key});

  void _selectCategory(BuildContext context, ElemenItemGrid categoryItemGrid) {
    final filteredList = unsurLogamTransisiDesc
        .where((value) => value.category.contains(categoryItemGrid.id))
        .toList();

    Get.to(() => DescLogamTransisiScreen(
          listElemenData: filteredList,
        ));
  }

  @override
  Widget build(BuildContext context) {
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
                          'This is Transition metals, lets try to by click and learn more about them...'),
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
                      for (final elemen in unsurLogamTransisi)
                        UnsurElemenGridItem(
                          categoryItemGrid: elemen,
                          onTap: () {
                            _selectCategory(context, elemen);
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
