import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/models/data/desc_menu_data.dart';
import 'package:kimiaapp/models/data/search_data.dart';
import 'package:kimiaapp/screens/test/desc_test_screen.dart';

class TestSearchScreen extends StatefulWidget {
  const TestSearchScreen({super.key});

  @override
  State<TestSearchScreen> createState() => _TestSearchScreenState();
}

class _TestSearchScreenState extends State<TestSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final RxList<DescMenuData> _searchResult = <DescMenuData>[].obs;
  final RxList<DescMenuData> _selectedResult = <DescMenuData>[].obs;

//function cari
  void _searchElements(String query) {
    query = query.toLowerCase();

    //*isi List "_searchResult" jika ditemukan query sama didalam list unsur
    _searchResult.value = listDataUnsur
        .where((value) => value.title.toLowerCase().contains(query))
        .toList();
  }

//* fungsi utk ontap di listBuilder
  void _addToSelectedResult(DescMenuData obj) {
    _selectedResult.add(obj);
    // print(listDataUnsur.map((element) => element.title));
    // print(_selectedResult.map((element) => element.title));
  }

//* fungsi untuk mengosongkan List
  void _clearSelectedResult() {
    _selectedResult.clear();
  }

//* fungsi navigasi, akan mengosongkan list setelah navigasi
  void navigasiScreen() {
    Get.to(() => DescTestScreen(listElemenData: _selectedResult))!
        .then((value) => _clearSelectedResult());
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: screenHeight / 19,
                width: screenWidth / 1.1,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 3,
                        blurRadius: 6,
                        offset: const Offset(
                            0, 2), // shadow direction: bottom right
                      )
                    ],
                    border: Border.all(color: Colors.black),
                    color: ChemistryColorApp.searchBarColor,
                    borderRadius: BorderRadius.circular(50)),
                child: TextField(
                  controller: _searchController,
                  onChanged: _searchElements,
                  style: const TextStyle(fontSize: 25),
                  decoration: const InputDecoration(
                      label: Center(
                        child: Text("Search Something. . .",
                            style: TextStyle(
                              fontSize: 23,
                              height: 1,
                            )),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 29,
                        color: Colors.green,
                      )),
                ),
              ),
              Expanded(
                child: Obx(() {
                  return ListView.builder(
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
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
