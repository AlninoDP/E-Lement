import 'package:kimiaapp/models/data/colors.dart';
import 'package:kimiaapp/models/data/elemen_item_grid.dart';
import 'package:kimiaapp/models/data/desc_menu_data.dart';

const unsurLogamAlkali = [
  ElemenItemGrid(
      id: 'a1',
      symbol: 'Li',
      title: 'Lithium',
      containerColor: ChemistryColorApp.logamAlkaliContainer,
      textColor: ChemistryColorApp.logamAlkaliText),
  ElemenItemGrid(
      id: 'a2',
      symbol: 'Na',
      title: 'Sodium',
      containerColor: ChemistryColorApp.logamAlkaliContainer,
      textColor: ChemistryColorApp.logamAlkaliText),
  ElemenItemGrid(
      id: 'a3',
      symbol: 'K',
      title: 'Potassium',
      containerColor: ChemistryColorApp.logamAlkaliContainer,
      textColor: ChemistryColorApp.logamAlkaliText),
  ElemenItemGrid(
      id: 'a4',
      symbol: 'Rb',
      title: 'Rubidium',
      containerColor: ChemistryColorApp.logamAlkaliContainer,
      textColor: ChemistryColorApp.logamAlkaliText),
  ElemenItemGrid(
      id: 'a5',
      symbol: 'Cs',
      title: 'Caesium',
      containerColor: ChemistryColorApp.logamAlkaliContainer,
      textColor: ChemistryColorApp.logamAlkaliText),
  ElemenItemGrid(
      id: 'a6',
      symbol: 'Fr',
      title: 'Francium',
      containerColor: ChemistryColorApp.logamAlkaliContainer,
      textColor: ChemistryColorApp.logamAlkaliText),
];

const unsurLogamAlkaliDesc = [
  DescMenuData(
    id: 'z1',
    category: 'a1',
    title: 'Lithium (Li)',
    ingredient: [
      '''
Simbol: Li
Nomor Atom: 3
Massa Atomik: 6.941 u 
Konfigurasi Elektron: [He] 2s1 
Kelasifikasi: Logam Alkali 
Golongan: 2 (Logam Alkali) 
Periode: 2
Negara Agregat: Padat 
Warna: Perak Kebiruan 
Titik Lebur: 180.54 °C (356.97 °F) 
Titik Didih: 1347 °C (2457 °F) 
Kelektronegatifan: 0.98
Jumlah Isotop: 2
Isotop Paling Stabil: Li-7
'''
    ],
    description:
        'Litium adalah logam alkali ringan yang lunak, berwarna perak kebiruan. Unsur ini memiliki konduktivitaslistrik dan panas yang baik, serta reaktivitas kimia yang tinggi.Litium digunakan dalam berbagai aplikasi, termasuk dalam baterai ion litium yang digunakan dalam perangkat elektronik,dalam paduan logam untuk pengecoran dan pembuatan logam,serta dalam obat-obatan psikiatri untuk pengobatan gangguan mental.',
  ),
  DescMenuData(
    id: 'z2',
    category: 'a2',
    title: 'Sodium (Na)',
    ingredient: [
      '''
Simbol: Na 
Nomor Atom: 11 
Massa Atomik: 22.990 u 
Konfigurasi Elektron: [Ne] 3s1 
Kelasifikasi: Logam Alkali 
Golongan: 1 (Logam Alkali) 
Periode: 3 
Negara Agregat: Padatan 
Warna: Perak 
Titik Lebur: 97.8 °C (208.0 °F) 
Titik Didih: 883 °C (1621 °F) 
Kelektronegatifan: 0.93 
Jumlah Isotop: 1 
Isotop Paling Stabil: Na-23
'''
    ],
    description:
        'Natrium adalah logam alkali yang lunak, berwarna perak, dan sangat reaktif. Unsur ini ditemukan dalam berbagai senyawa seperti garam dapur (natrium klorida) dan digunakan dalam berbagai aplikasi, termasuk dalam industri kimia, industri logam, dan dalam proses pemurnian logam. Natrium juga memiliki peran penting dalam menjaga keseimbangan air dan elektrolit dalam tubuh manusia.',
  ),
  DescMenuData(
    id: 'z3',
    category: 'a3',
    title: 'Potassium (K)',
    ingredient: [
      '''
Simbol: K
Nomor Atom: 19
Massa Atomik: 39.098 u 
Konfigurasi Elektron: [Ar] 4s1 
Kelasifikasi: Logam Alkali 
Golongan: 1 (Logam Alkali) 
Periode: 4
Negara Agregat: Padat 
Warna: Perak Putih 
Titik Lebur: 63.38 °C (146.08 °F) 
Titik Didih: 759 °C (1398 °F) 
Kelektronegatifan: 0.82
Jumlah Isotop: 3
Isotop Paling Stabil: K-39
'''
    ],
    description: '''
Kalium adalah unsur logam alkali yang sangat reaktif.
 Unsur ini memiliki sifat kimia yang mirip dengan
  unsur lain dalam kelompok logam alkali. Kalium 
  biasanya ditemukan dalam bentuk senyawa seperti 
  garam kalium yang diperlukan oleh organisme hidup 
  untuk fungsi biologis tertentu. Kalium juga 
  digunakan dalam berbagai aplikasi industri 
  dan pertanian.
''',
  ),
  DescMenuData(
    id: 'z4',
    category: 'a4',
    title: 'Rubidium (Rb)',
    ingredient: [
      '''
Simbol: Rb 
Nomor Atom: 37 
Massa Atomik: 85.468 u 
Konfigurasi Elektron: [Kr] 5s1 
Kelasifikasi: Logam Alkali 
Golongan: 1 (Logam Alkali Group) 
Periode: 5 
Negara Agregat: Padatan 
Warna: Perak keabu-abuan 
Titik Lebur: 39.31 °C (102.76 °F) 
Titik Didih: 688 °C (1270 °F) 
Kelektronegatifan: 0.82 
Jumlah Isotop: 2
Isotop Paling Stabil: Rb-85
'''
    ],
    description: '''
Rubidium adalah logam alkali berwarna 
perak keabu-abuan yang lunak dan sangat reaktif.
 Unsur ini memiliki berbagai aplikasi 
 dalam penelitian ilmiah, pengolahan logam,
  dan produksi baterai. Rubidium juga
   digunakan dalam spektroskopi atom dan 
   sebagai sumber cahaya dalam jam atom.
''',
  ),
  DescMenuData(
    id: 'z5',
    category: 'a5',
    title: 'Caesium (Cs)',
    ingredient: [
      '''
Simbol: Cs 
Nomor Atom: 55 
Massa Atomik: 132.91 u 
Konfigurasi Elektron: [Xe] 6s1 
Kelasifikasi: Logam Alkali 
Golongan: 1 (Alkali Metals) 
Periode: 6 
Negara Agregat: Padatan 
Warna: Perak-keemasan 
Titik Lebur: 28.44 °C (83.19 °F) 
Titik Didih: 671 °C (1240 °F) 
Kelektronegatifan: 0.79 
Jumlah Isotop: 36 
Isotop Paling Stabil: Cs-133
'''
    ],
    description: '''
Caesium adalah unsur logam alkali yang 
memiliki warna perak-keemasan. Unsur ini
 berada dalam golongan alkali 
 dan memiliki sifat-sifat reaktif yang kuat. 
 Caesium digunakan dalam berbagai aplikasi,
  termasuk dalam penelitian ilmiah, industri, 
  dan dalam sistem jam atomik. Caesium juga 
  memiliki isotop radioaktif yang
   digunakan dalam penelitian dan 
   aplikasi medis.
''',
  ),
  DescMenuData(
    id: 'z6',
    category: 'a6',
    title: 'Francium (Fr)',
    ingredient: [
      '''
Simbol: Fr 
Nomor Atom: 87 
Massa Atomik: 223 u 
Konfigurasi Elektron: [Rn] 7s1 
Kelasifikasi: Logam Alkali 
Golongan: 1 (Logam Alkali) 
Periode: 7 
Negara Agregat: Padat 
Warna: Tidak Diketahui 
Titik Lebur: 27 °C (81 °F) 
Titik Didih: 677 °C (1251 °F) 
Kelektronegatifan: 0.7 
Jumlah Isotop: 31 
Isotop Paling Stabil: Fr-223
'''
    ],
    description: '''
Francium adalah unsur logam alkali yang 
memiliki simbol kimia Fr dan nomor atom 87. 
Unsur ini memiliki massa atomik 223 u dan terletak 
dalam golongan logam alkali. Francium memiliki 
konfigurasi elektron [Rn] 7s1 dan berada pada 
periode 7 dalam tabel periodik. Unsur ini berada 
dalam keadaan padat pada suhu kamar, namun warna 
dan sifat fisik lainnya tidak diketahui secara pasti. 
Francium memiliki titik lebur sekitar 27 °C dan titik 
didih sekitar 677 °C. Kelektronegatifan francium adalah sekitar 0.7.
 Terdapat 31 isotop yang diketahui untuk unsur ini, 
 dengan isotop paling stabil adalah Fr-223. Francium adalah 
 unsur radioaktif yang sangat jarang ditemukan di alam dan 
 memiliki masa paruh yang sangat singkat. Karena sifat radioaktifnya, 
 francium digunakan dalam penelitian ilmiah dan tidak 
 memiliki aplikasi praktis yang signifikan.
''',
  ),
];
