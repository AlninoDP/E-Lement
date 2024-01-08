import 'package:kimiaapp/data/elemen_data/aktinium_data.dart';
import 'package:kimiaapp/data/elemen_data/gas_mulia_data.dart';
import 'package:kimiaapp/data/elemen_data/lantanum_data.dart';
import 'package:kimiaapp/data/elemen_data/logam_alkali_data.dart';
import 'package:kimiaapp/data/elemen_data/logam_alkali_tanah_data.dart';
import 'package:kimiaapp/data/elemen_data/logam_pasca_transisi_data.dart';
import 'package:kimiaapp/data/elemen_data/logam_transisi_data.dart';
import 'package:kimiaapp/data/elemen_data/metaloid_data.dart';
import 'package:kimiaapp/data/elemen_data/non_logam_reaktif_data.dart';
import 'package:kimiaapp/data/elemen_data/unknown_properties_data.dart';
import 'package:kimiaapp/core/elemen_information.dart';

//* list berisi semua data
List<ElementInformation> listDataUnsur = <ElementInformation>[
  ...aktiniumInformation,
  ...gasMuliaInformation,
  ...lantanumInformaton,
  ...logamAlkaliInformation,
  ...logamAlkaliTanahInformation,
  ...logamPascaTransisiInformation,
  ...logamTransisiInformation,
  ...metaloidInformation,
  ...nonLogamReaktifInformation,
  ...unkonwnPropertiesInformation
];
