import 'package:flutter/material.dart';
import 'package:kimiaapp/models/data/dummy_data/logam_pasca_transisi_data.dart';
import 'package:kimiaapp/models/data/elemen_item_grid.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_pasca_transisi_menu/desc_logam_pasca_transisi/desc_logam_pasca_transisi_screen.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/unsur_elemen_grid_item.dart';
import '../../../widgets/bubble_box.dart';
import 'package:get/get.dart';

class LogamPascaTransisiScreen extends StatelessWidget {
  const LogamPascaTransisiScreen({super.key});

  void _selectCategory(BuildContext context, ElemenItemGrid categoryItemGrid) {
    final filteredList = unsurLogamPascaTransisiDesc
        .where((value) => value.category.contains(categoryItemGrid.id))
        .toList();

    Get.to(() => DescLogamPascaTransisiScreen(
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const BubbleBox(
                      text:
                          'This is Post-transition metals, lets try to by click and learn more about them...'),
                  const SizedBox(
                    height: 20,
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
                      for (final elemen in unsurLogamPascaTransisi)
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
