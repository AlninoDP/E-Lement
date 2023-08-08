import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/models/elemen_desc.dart';
import 'package:kimiaapp/models/elemen_item_grid.dart';

class MainController extends GetxController {
  final screenHeight = Get.height;
  final screenWidth = Get.width;
  TextEditingController txtFieldUsernamecontroller = TextEditingController();
  final RxString guestName = 'Guest'.obs;

  void onGridElemenTap(BuildContext context, List<ElemenDesc> listObj,
      ElemenItemGrid elemenItemGrid, void Function(List<ElemenDesc>) navigate) {
    final List<ElemenDesc> filteredList = listObj
        .where((value) => value.category.contains(elemenItemGrid.id))
        .toList();
    navigate(filteredList);
  }
}
