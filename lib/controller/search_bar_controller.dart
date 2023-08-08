import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/models/data/desc_menu_data.dart';
import 'package:kimiaapp/models/data/search_data.dart';
import 'package:kimiaapp/view/search_result_screen.dart';

class SearchBarController extends MainController {
  final TextEditingController textSearchController = TextEditingController();
  final RxList<DescMenuData> searchResult = <DescMenuData>[].obs;
  final RxList<DescMenuData> selectedResult = <DescMenuData>[].obs;
  final RxBool isSearchVisible = false.obs;

//* function cari
  void searchElements(String query) {
    query = query.toLowerCase();

    //*isi List "_searchResult" jika ditemukan query sama didalam list unsur
    searchResult.value = listDataUnsur
        .where((value) => value.title.toLowerCase().contains(query))
        .toList();

    if (query.isNotEmpty) {
      isSearchVisible.value = true;
    } else {
      isSearchVisible.value = false;
    }
    update();
  }

//* fungsi utk ontap di listBuilder
  void addToSelectedResult(DescMenuData obj) {
    selectedResult.add(obj);
    // print(_selectedResult.map((element) => element.title));
  }

//* fungsi untuk mengosongkan List
  void clearSelectedResult() {
    selectedResult.clear();
  }

//* fungsi navigasi, akan mengosongkan list setelah navigasi
  void navigasiScreen() {
    textSearchController.clear();
    isSearchVisible.value = false;
    Get.to(() => SearchResultScreen(listElemenData: selectedResult))!
        .then((value) => clearSelectedResult());
  }
}
