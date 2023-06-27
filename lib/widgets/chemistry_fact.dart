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
      height: screenHeight / 4.5,
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
