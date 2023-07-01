import 'package:flutter/material.dart';
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
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: TabelPeriodik.listElemen['Logam Alkali']!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final namaElement =
                        TabelPeriodik.listElemen['Logam Alkali']![index];
                    final lambangElement =
                        TabelPeriodik.lambangElemen['Logam Alkali']![index];
                    return Container(
                      color: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(lambangElement,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 26)),
                            Text(
                              namaElement,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 26),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ));
  }
}
