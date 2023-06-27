import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("assets/images/bg.jpg"),
              colorFilter: ColorFilter.mode(
                  Colors.white10.withOpacity(0.5), BlendMode.srcOver),
              fit: BoxFit.cover)),
      child: child,
    );
  }
}
