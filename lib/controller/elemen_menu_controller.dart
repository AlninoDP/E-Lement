import 'package:get/get.dart';
import 'package:kimiaapp/core/elemen_information.dart';
import 'package:kimiaapp/core/elemen_item_config.dart';

class ElemenMenuController extends GetxController {
  List<ElementInformation> getFilteredList(ElemenItemConfig elemenItemConfig,
      List<ElementInformation> listElemenInformation) {
    final List<ElementInformation> filteredList;
    filteredList = listElemenInformation
        .where((elementInformation) =>
            elementInformation.elementId.contains(elemenItemConfig.elementId))
        .toList();
    return filteredList;
  }
}
