import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/screens/main_menu_screen.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/bubble_box.dart';
import 'package:kimiaapp/widgets/bubble_button.dart';
import 'package:kimiaapp/widgets/text_field_username.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final RxString enteredName = 'Guest'.obs;
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
                    controller: controller, onTextChanged: enteredName),
              ),
              Center(
                child: BubbleButton(
                    text: "Confirm",
                    onPressed: () => Get.offAll(
                        () => MainMenuScreen(enteredName: enteredName.value),
                        transition: Transition.fadeIn)),
              )
            ],
          )),
        ));
  }
}
