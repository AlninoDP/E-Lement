import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/view/introduction_screen.dart';
import 'package:kimiaapp/components/background.dart';
import 'package:kimiaapp/components/bubble_box.dart';
import 'package:kimiaapp/components/bubble_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            const BubbleBox(text: "Periodic Table App"),
            const Spacer(),
            Center(
                child: BubbleButton(
              text: "Let's Get Started ",
              onPressed: () => Get.to(() => const IntroductionScreen(),
                  transition: Transition.rightToLeftWithFade),
            )),
          ],
        )),
      ),
    );
  }
}
