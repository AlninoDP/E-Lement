import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final screenHeight = Get.height;
  final screenWidth = Get.width;
  TextEditingController txtFieldUsernamecontroller = TextEditingController();
  final RxString guestName = 'Guest'.obs;
}
