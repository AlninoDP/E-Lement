import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/controller/elemen_menu_controller.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/controller/search_bar_controller.dart';
import 'package:kimiaapp/view/splash_screen.dart';

void main() {
  Get.put(MainController());
  Get.put(SearchBarController());
  Get.put(ElemenMenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(393, 830),
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(fontFamily: 'RobotoRegular'),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      },
    );
  }
}
