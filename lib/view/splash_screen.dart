import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kimiaapp/view/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int splashTime = 2;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: splashTime), () async {
      Get.offAll(
        () => const WelcomeScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage("assets/images/splashscreen.jpeg"),
                  colorFilter: ColorFilter.mode(
                      Colors.white10.withOpacity(0.5), BlendMode.srcOver),
                  fit: BoxFit.cover)),
        ));
  }
}
