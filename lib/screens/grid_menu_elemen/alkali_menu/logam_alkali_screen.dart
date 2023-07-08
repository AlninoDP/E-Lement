import 'package:flutter/material.dart';
import 'package:kimiaapp/models/data/catagory_model.dart';
import 'package:kimiaapp/models/data/category_item_grid.dart';
import 'package:kimiaapp/screens/grid_menu_elemen/alkali_menu/desc_menu_elemen/desc_unsur_elemen_screen.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/unsur_elemen_grid_item.dart';
import '../../../widgets/bubble_box.dart';
import 'package:get/get.dart';

class LogamAlkaliScreen extends StatelessWidget {
  const LogamAlkaliScreen({super.key});

  void _selectCategory(
      BuildContext context, CategoryItemGrid categoryItemGrid) {
    final filteredList = unsurAlkaliData
        .where((elemen) => elemen.category.contains(categoryItemGrid.id))
        .toList();

    Get.to(() => DescUnsurElemenScreen(
          listAlkaliData: filteredList,
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
                          'This is Alkali metals, lets try to by click and learn more about them...'),
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
                      for (final elemen in unsurAlkaliMetal)
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
