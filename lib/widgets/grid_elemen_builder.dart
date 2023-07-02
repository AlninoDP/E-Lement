import 'package:flutter/material.dart';
import 'package:kimiaapp/models/tabel_periodik.dart';

class GridElemenBuilder extends StatelessWidget {
  final String jenisElemen;
  final Color containerColor;
  final Color textColor;
  const GridElemenBuilder(
      {super.key,
      required this.jenisElemen,
      required this.containerColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30.0,
          crossAxisSpacing: 30.0,
        ),
        itemCount: TabelPeriodik.listElemen[jenisElemen]!.length,
        itemBuilder: (BuildContext context, int index) {
          final namaElement = TabelPeriodik.listElemen[jenisElemen]![index];
          final lambangElement =
              TabelPeriodik.lambangElemen[jenisElemen]![index];
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
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(lambangElement,
                          style: TextStyle(
                              color: textColor,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                      Text(
                        namaElement,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
