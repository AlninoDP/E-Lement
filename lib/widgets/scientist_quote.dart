import 'package:flutter/material.dart';

import '../models/colors.dart';

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
      height: screenHeight / 4.5,
      margin: const EdgeInsets.only(bottom: 40),
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
      child: PageView.builder(
          controller: pageController,
          itemCount: listChemistryFact.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                listChemistryFact[index],
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            );
          }),
    );
  }
}
