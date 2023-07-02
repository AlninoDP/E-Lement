import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/bubble_box.dart';
import 'package:kimiaapp/widgets/grid_elemen_builder.dart';

import '../models/tabel_periodik.dart';

class LogamAlkaliScreen extends StatelessWidget {
  const LogamAlkaliScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        top: true,
        child: Scaffold(
          body: Background(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  BubbleBox(
                      text:
                          'This is Alkali metals, lets try to by click and learn more about them...'),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: GridElemenBuilder(
                    containerColor: ChemistryColorApp.logamAlkaliContainer,
                    jenisElemen: 'Logam Alkali',
                    textColor: ChemistryColorApp.logamAlkaliText,
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
