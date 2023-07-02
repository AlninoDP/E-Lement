import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';
import 'package:kimiaapp/widgets/background.dart';

import '../models/tabel_periodik.dart';

class LogamAlkaliScreen extends StatelessWidget {
  const LogamAlkaliScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Background(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30.0,
                    crossAxisSpacing: 40.0,
                  ),
                  itemCount: TabelPeriodik.listElemen['Logam Alkali']!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final namaElement =
                        TabelPeriodik.listElemen['Logam Alkali']![index];
                    final lambangElement =
                        TabelPeriodik.lambangElemen['Logam Alkali']![index];
                    return Material(
                      shadowColor: Colors.black,
                      elevation: 50,
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        onTap: () {},
                        child: Ink(
                          decoration: const BoxDecoration(
                            color: ChemistryColorApp.logamAlkaliContainer,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(lambangElement,
                                    style: const TextStyle(
                                        color:
                                            ChemistryColorApp.logamAlkaliText,
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  namaElement,
                                  style: const TextStyle(
                                      color: ChemistryColorApp.logamAlkaliText,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ));
  }
}
