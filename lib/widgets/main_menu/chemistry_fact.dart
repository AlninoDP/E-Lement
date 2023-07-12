import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';

class ChemistryFact extends StatefulWidget {
  const ChemistryFact({super.key});

  @override
  State<ChemistryFact> createState() => _ChemistryFactState();
}

class _ChemistryFactState extends State<ChemistryFact> {
  List<String> listChemistryFact = [
    "Nama kimia dari air adalah dihidrogen monoksida. Nama ini sering digunakan dalam buku teks kimia dan makalah penelitian.",
    "Satu-satunya huruf yang tidak muncul pada tabel periodik adalah J. Alasannya adalah karena tidak ada unsur yang diketahui dimulai dengan huruf J.",
    "Tabel periodik dinamai oleh Dmitri Mendeleev, yang menciptakannya pada tahun 1869. Mendeleev adalah seorang ahli kimia Rusia yang menyusun unsur-unsur ke dalam tabel berdasarkan massa atom dan sifat-sifatnya.",
    "Elemen yang paling tidak reaktif adalah neon. Neon adalah gas mulia, yang berarti memiliki kulit elektron valensi penuh. Ini membuat neon sangat stabil, dan tidak bereaksi dengan elemen lain",
    "Tubuh manusia mengandung sekitar 60% air. Air sangat penting untuk kehidupan, dan membantu mengatur suhu tubuh, mengangkut nutrisi, dan membuang produk sampah di tubuh."
  ];
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth / 1.1,
        height: screenHeight / 6,
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
                        borderRadius: BorderRadius.circular(40),
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
