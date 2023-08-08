import 'package:kimiaapp/models/data/elemen_data/aktinium_data.dart';
import 'package:kimiaapp/models/data/elemen_data/gas_mulia_data.dart';
import 'package:kimiaapp/models/data/elemen_data/lantanum_data.dart';
import 'package:kimiaapp/models/data/elemen_data/logam_alkali_data.dart';
import 'package:kimiaapp/models/data/elemen_data/logam_alkali_tanah_data.dart';
import 'package:kimiaapp/models/data/elemen_data/logam_pasca_transisi_data.dart';
import 'package:kimiaapp/models/data/elemen_data/logam_transisi_data.dart';
import 'package:kimiaapp/models/data/elemen_data/metaloid_data.dart';
import 'package:kimiaapp/models/data/elemen_data/non_logam_reaktif_data.dart';
import 'package:kimiaapp/models/data/elemen_data/unknown_properties_data.dart';
import 'package:kimiaapp/models/elemen_desc.dart';

//* list berisi semua dummy data
List<ElemenDesc> listDataUnsur = <ElemenDesc>[
  ...unsurAktiniumDesc,
  ...unsurGasMuliaDesc,
  ...unsurLantanumDesc,
  ...unsurLogamAlkaliDesc,
  ...unsurLogamAlkaliTanahDesc,
  ...unsurLogamPascaTransisiDesc,
  ...unsurLogamTransisiDesc,
  ...unsurMetaloidDesc,
  ...unsurNonLogamReaktifDesc,
  ...unsurUnknownPropertiesDesc
];
