import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/widgets/background.dart';
import 'package:kimiaapp/widgets/bubble_box.dart';
import 'package:kimiaapp/widgets/grid_elemen_builder.dart';

class AktiniumScreen extends StatelessWidget {
  const AktiniumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onTapNull() {
      //do something
    }
    //list of function
    List<Function()> onTapList = [
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
      onTapNull,
    ];
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Background(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const BubbleBox(
                  text:
                      'This is Actinides, lets try to by click and learn more about them...'),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridElemenBuilder(
                      jenisElemen: 'Aktinium',
                      containerColor: ChemistryColorApp.actinidesContainer,
                      textColor: ChemistryColorApp.actinidesText,
                      onTapList: onTapList))
            ],
          ),
        )),
      ),
    );
  }
}
