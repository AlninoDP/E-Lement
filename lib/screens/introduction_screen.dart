import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/screens/sign_in_screen.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/bubble_box.dart';
import 'package:kimiaapp/widgets/bubble_button.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

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
              const BubbleBox(
                  text: "Hello There, Welcome to our chemistry application"),
              const Spacer(),
              Center(
                child: BubbleButton(
                  text: "Next",
                  onPressed: () => Get.to(
                    () => const SignInScreen(),
                    transition: Transition.rightToLeftWithFade,
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
