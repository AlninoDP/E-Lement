import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/core/elemen_information.dart';
import 'package:kimiaapp/core/elemen_item_config.dart';

class MainController extends GetxController {
  final screenHeight = Get.height;
  final screenWidth = Get.width;
  TextEditingController txtFieldUsernamecontroller = TextEditingController();
  final RxString guestName = 'Guest'.obs;

  void onGridElemenTap(
      List<ElementInformation> listObj,
      ElemenItemConfig elemenItemConfig,
      void Function(List<ElementInformation>) navigate) {
    final List<ElementInformation> filteredList = listObj
        .where((value) => value.elementId.contains(elemenItemConfig.elementId))
        .toList();
    navigate(filteredList);
  }

  List<ElementInformation> tesTap(ElemenItemConfig elemenItemConfig,
      List<ElementInformation> listElemenInformation) {
    final List<ElementInformation> filteredList;
    filteredList = listElemenInformation
        .where((elementInformation) =>
            elementInformation.elementId.contains(elemenItemConfig.elementId))
        .toList();
    return filteredList;
  }
}
