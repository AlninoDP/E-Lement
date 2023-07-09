import 'package:flutter/material.dart';
import 'package:kimiaapp/models/data/alkali_data/alkali_data.dart';
import 'package:kimiaapp/widgets/background.dart';

class DescUnsurElemenScreen extends StatelessWidget {
  const DescUnsurElemenScreen({super.key, required this.listAlkaliData});
  final List<AlkaliData> listAlkaliData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Background(
            child: Center(
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: listAlkaliData.length,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                Container(
                                  child: Text(listAlkaliData[index].title),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Text(''),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text("Description"),
                                ),
                                Container(
                                  child:
                                      Text(listAlkaliData[index].description),
                                )
                              ],
                            );
                          }))
                ],
              ),
            ),
          ),
        ));
  }
}
