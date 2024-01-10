import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/core/colors.dart';
import 'package:kimiaapp/core/elemen_information.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/view/search_result/widgets/search_content1.dart';
import 'package:kimiaapp/view/search_result/widgets/search_content2.dart';
import 'package:kimiaapp/view/search_result/widgets/search_content_header.dart';
import 'package:kimiaapp/view/search_result/widgets/search_content_title.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key, required this.listElemenData});
  final List<ElementInformation> listElemenData;

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Background(
          child: Scrollbar(
            radius: const Radius.circular(30).w,
            thickness: 10.w,
            child: ListView.separated(
              itemCount: listElemenData.length,
              separatorBuilder: (context, index) => SizedBox(height: 20.h),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(10.w),
                  child: buildElementCard(controller, listElemenData[index]),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildElementCard(
      MainController controller, ElementInformation element) {
    return Column(
      children: [
        buildElementTitle(element),
        SizedBox(height: 10.h),
        buildElementContainer(controller, element),
        SizedBox(height: 10.h),
        SearchContent1(text: element.information.first),
        SizedBox(height: 20.h),
        const SearchContentHeader(text: "Description"),
        SizedBox(height: 8.h),
        SearchContent2(text: element.description),
      ],
    );
  }

  Widget buildElementTitle(ElementInformation element) {
    return SearchContentTitle(
      containerColor: ChemistryColorApp.containerTextColor,
      title: element.title,
      textColor: Colors.black,
    );
  }

  Widget buildElementContainer(
      MainController controller, ElementInformation element) {
    return Container(
      width: controller.screenWidth / 3,
      height: controller.screenHeight / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        gradient: const LinearGradient(
          colors: [
            ChemistryColorApp.containerTextColor,
            ChemistryColorApp.containerMenu2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            element.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
