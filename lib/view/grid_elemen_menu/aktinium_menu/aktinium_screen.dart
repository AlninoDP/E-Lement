import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/models/data/dummy_data/aktinium_data.dart';
import 'package:kimiaapp/models/data/elemen_item_grid.dart';
import 'package:kimiaapp/view/grid_elemen_menu/aktinium_menu/desc_aktinium/desc_aktinium_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/grid_elemen_menu/widgets/unsur_elemen_grid_item.dart';
import '../../../components/bubble_box.dart';
import 'package:get/get.dart';

class AktiniumScreen extends StatelessWidget {
  const AktiniumScreen({super.key});

  void _selectCategory(BuildContext context, ElemenItemGrid categoryItemGrid) {
    final filteredList = unsurAktiniumDesc
        .where((value) => value.category.contains(categoryItemGrid.id))
        .toList();

    Get.to(() => DescAktiniumScreen(
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
