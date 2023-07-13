import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/models/data/desc_menu_data.dart';
import 'package:kimiaapp/models/data/search_data.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/gas_mulia_menu/gas_mulia_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_alkali_tanah_menu/logam_alkali_tanah_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_pasca_transisi_menu/logam_pasca_transisi_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_transisi_menu/logam_transisi_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/non_logam_reaktif_menu/non_logam_reaktif_screen.dart';
import 'package:kimiaapp/screens/grid_elemen_menu/logam_alkali_menu/logam_alkali_screen.dart';
import 'package:kimiaapp/screens/search_result_screen.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/bubble_box.dart';
import 'package:kimiaapp/widgets/main_menu/chemistry_fact.dart';
import 'package:kimiaapp/widgets/main_menu/header3_menu.dart';
import 'package:kimiaapp/widgets/main_menu/header4_menu.dart';
import 'package:kimiaapp/widgets/main_menu/menu_button.dart';
import 'package:kimiaapp/widgets/main_menu/other_elemen.dart';
import 'package:kimiaapp/widgets/main_menu/scientist_quote.dart';

import '../models/data/colors.dart';
import '../widgets/main_menu/search_bar.dart';
import 'grid_elemen_menu/metaloid_menu/metaloid_screen.dart';

class MainMenuScreen extends StatefulWidget {
  final String enteredName;
  const MainMenuScreen({super.key, required this.enteredName});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  final TextEditingController _searchController = TextEditingController();
  final RxList<DescMenuData> _searchResult = <DescMenuData>[].obs;
  final RxList<DescMenuData> _selectedResult = <DescMenuData>[].obs;
  final RxBool _isSearchVisible = false.obs;

//* function cari
  void _searchElements(String query) {
    query = query.toLowerCase();

    //*isi List "_searchResult" jika ditemukan query sama didalam list unsur
    _searchResult.value = listDataUnsur
        .where((value) => value.title.toLowerCase().contains(query))
        .toList();

    if (query.isNotEmpty) {
      _isSearchVisible.value = true;
    } else {
      _isSearchVisible.value = false;
    }
  }

//* fungsi utk ontap di listBuilder
  void _addToSelectedResult(DescMenuData obj) {
    _selectedResult.add(obj);
    // print(_selectedResult.map((element) => element.title));
  }

//* fungsi untuk mengosongkan List
  void _clearSelectedResult() {
    _selectedResult.clear();
  }

//* fungsi navigasi, akan mengosongkan list setelah navigasi
  void navigasiScreen() {
    _searchController.clear();
    _isSearchVisible.value = false;
    Get.to(() => SearchResultScreen(listElemenData: _selectedResult))!
        .then((value) => _clearSelectedResult());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Background(
              child: Scrollbar(
            thickness: 8.r,
            radius: const Radius.circular(30).w,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  BubbleBox(
                      text:
                          'Hai,${widget.enteredName} Nice to see you again...'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: SearchBarElemen(
                      controller: _searchController,
                      onChanged: _searchElements,
                    ),
                  ),
                  // searchwidget
                  Obx(
                    () => Visibility(
                      visible: _isSearchVisible.value,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.all(10).w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10).w,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 6,
                              offset: const Offset(
                                  0, 2), // shadow direction: bottom right
                            ),
                          ],
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _searchResult.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                _addToSelectedResult(_searchResult[index]);
                                navigasiScreen();
                              },
                              title: Text(_searchResult[index].title),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10).w,
                    child: GridView.count(
                      shrinkWrap: true,
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.r, vertical: 8.r),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      primary: false,
                      children: <Widget>[
                        MenuButton(
                            ontap: () =>
                                Get.to(() => const LogamAlkaliScreen()),
                            text: "Logam Alkali",
                            color: ChemistryColorApp.containerMenu1,
                            imagePath: "elemenicon1.png"),
                        MenuButton(
                            ontap: () =>
                                Get.to(() => const LogamAlkaliTanahScreen()),
                            text: "Logam Alkali Tanah",
                            color: ChemistryColorApp.containerMenu2,
                            imagePath: "elemenicon2.png"),
                        MenuButton(
                            ontap: () =>
                                Get.to(() => const LogamPascaTransisiScreen()),
                            text: "Logam Pasca Transisi",
                            color: ChemistryColorApp.containerMenu3,
                            imagePath: "elemenicon3.png"),
                        MenuButton(
                            ontap: () =>
                                Get.to(() => const LogamTransisiScreen()),
                            text: "Logam Transisi",
                            color: ChemistryColorApp.containerMenu4,
                            imagePath: "elemenicon4.png"),
                        MenuButton(
                            ontap: () => Get.to(() => const GasMuliaScreen()),
                            text: "Gas Mulia",
                            color: ChemistryColorApp.containerMenu5,
                            imagePath: "elemenicon5.png"),
                        MenuButton(
                            ontap: () => Get.to(() => const MetaloidScreen()),
                            text: "Metaloid",
                            color: ChemistryColorApp.containerMenu6,
                            imagePath: "elemenicon6.png"),
                        MenuButton(
                            ontap: () =>
                                Get.to(() => const NonLogamReaktifScreen()),
                            text: "Non Logam Reaktif",
                            color: ChemistryColorApp.containerMenu7,
                            imagePath: "elemenicon7.png"),
                        MenuButton(
                            ontap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const OtherElemen();
                                },
                              );
                            },
                            text: 'Others',
                            color: ChemistryColorApp.containerMenuOthers,
                            imagePath: "othericon.png"),
                      ],
                    ),
                  ),
                  const Header3Menu(),
                  const Center(
                    child: ChemistryFact(),
                  ),
                  const Header4Menu(),
                  const Center(
                    child: ScientistQuote(),
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
