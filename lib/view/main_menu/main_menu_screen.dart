import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/controller/search_bar_controller.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/components/bubble_box.dart';
import 'package:kimiaapp/view/main_menu/widgets/chemistry_fact.dart';
import 'package:kimiaapp/view/main_menu/widgets/grid_menu/grid_menu.dart';
import 'package:kimiaapp/view/main_menu/widgets/header3_menu.dart';
import 'package:kimiaapp/view/main_menu/widgets/header4_menu.dart';
import 'package:kimiaapp/view/main_menu/widgets/scientist_quote.dart';
import 'package:kimiaapp/view/main_menu/widgets/search_bar.dart';
import 'package:kimiaapp/view/main_menu/widgets/search_result.dart';

class MainMenuScreen extends StatelessWidget {
  final String guestName;
  MainMenuScreen({super.key, required this.guestName});

  final MainController mainController = Get.put(MainController());

  final SearchBarController searchBarController =
      Get.put(SearchBarController());

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
                  BubbleBox(text: 'Hai,$guestName Nice to see you again...'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: SearchBarElemen(
                      controller: searchBarController.textSearchController,
                      onChanged: searchBarController.searchElements,
                    ),
                  ),
                  SearchResult(
                      controller: searchBarController), //* SearchResult
                  const GridMenu(),
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
