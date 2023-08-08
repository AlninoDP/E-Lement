import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/controller/main_controller.dart';
import 'package:kimiaapp/view/main_menu/main_menu_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/components/bubble_box.dart';
import 'package:kimiaapp/components/bubble_button.dart';
import 'package:kimiaapp/view/sign_in/widgets/text_field_username.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Background(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              const BubbleBox(text: "Please Tell Us Your Name"),
              const Spacer(),
              Center(
                child: TextFieldUsername(
                    controller: mainController.txtFieldUsernamecontroller,
                    onTextChanged: mainController.guestName),
              ),
              Center(
                child: BubbleButton(
                    text: "Confirm",
                    onPressed: () => Get.offAll(
                        () => MainMenuScreen(
                            guestName: mainController.guestName.value),
                        transition: Transition.fadeIn)),
              )
            ],
          )),
        ));
  }
}
