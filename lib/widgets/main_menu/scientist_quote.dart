import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/colors.dart';

class ScientistQuote extends StatefulWidget {
  const ScientistQuote({super.key});

  @override
  State<ScientistQuote> createState() => _ScientistQuoteState();
}

class _ScientistQuoteState extends State<ScientistQuote> {
  List<String> listChemistryFact = [
    "Aku tidak tahu apa yang membuatku terlihat sangat pintar, tapi aku yakin itu karena aku terlalu lama membahas topik ini. -Albert Einstein.",
    "Hidup itu seperti bersepeda. Kalau kamu ingin menjaga keseimbanganmu, kamu harus terus bergerak maju. -Albert Einstein",
    "Saya tidak memiliki bakat istimewa. Saya hanya sangat, sangat tertarik. -Albert Einstein",
    "Jangan takut untuk membuat kesalahan. Tetapi pastikan Anda membuat kesalahan baru. -Artur Fischer"
  ];
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth / 1.1,
        height: screenHeight / 8,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(0, 2), // shadow direction: bottom right
              )
            ],
            color: ChemistryColorApp.containerTextColor,
            borderRadius: BorderRadius.circular(30)),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 150,
            aspectRatio: 2.0,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
          items: listChemistryFact.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    padding: const EdgeInsets.all(16),
                    width: screenWidth / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ChemistryColorApp.containerTextColor),
                    child: Text(
                      i,
                      style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ));
              },
            );
          }).toList(),
        ));
  }
}
