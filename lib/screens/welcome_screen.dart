import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/screens/introduction_screen.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/bubble_box.dart';
import 'package:kimiaapp/widgets/bubble_button.dart';

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
            const SizedBox(
              height: 20,
            ),
            const BubbleBox(text: "Periodic Table App"),
            const Spacer(),
            Center(
                child: BubbleButton(
              text: "Let's Get Started ",
              onPressed: () => Get.to(() => const IntroductionScreen(),
                  transition: Transition.zoom),
            )),
          ],
        )),
      ),
    );
  }
}
