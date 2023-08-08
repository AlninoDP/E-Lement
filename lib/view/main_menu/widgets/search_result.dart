import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/controller/search_bar_controller.dart';

class SearchResult extends StatelessWidget {
  final SearchBarController controller;
  const SearchResult({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
          visible: controller.isSearchVisible.value,
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
                  offset: const Offset(0, 2), // shadow direction: bottom right
                ),
              ],
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.searchResult.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    controller
                        .addToSelectedResult(controller.searchResult[index]);
                    controller.navigasiScreen();
                  },
                  title: Text(controller.searchResult[index].title),
                );
              },
            ),
          ),
        ));
  }
}
