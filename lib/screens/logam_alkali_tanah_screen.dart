import 'package:flutter/material.dart';
import 'package:kimiaapp/widgets/bubble_box.dart';
import 'package:kimiaapp/widgets/grid_elemen_builder.dart';

class LogamAlkaliTanahScreen extends StatelessWidget {
  const LogamAlkaliTanahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                const BubbleBox(
                    text:
                        "This is Alkaline earth metals,let's try to by click and learn more about them..."),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
