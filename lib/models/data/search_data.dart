import 'package:kimiaapp/models/data/dummy_data/aktinium_data.dart';
import 'package:kimiaapp/models/data/dummy_data/gas_mulia_data.dart';
import 'package:kimiaapp/models/data/dummy_data/lantanum_data.dart';
import 'package:kimiaapp/models/data/dummy_data/logam_alkali_data.dart';
import 'package:kimiaapp/models/data/dummy_data/logam_alkali_tanah_data.dart';
import 'package:kimiaapp/models/data/dummy_data/logam_pasca_transisi_data.dart';
import 'package:kimiaapp/models/data/dummy_data/logam_transisi_data.dart';
import 'package:kimiaapp/models/data/dummy_data/metaloid_data.dart';
import 'package:kimiaapp/models/data/dummy_data/non_logam_reaktif_data.dart';
import 'package:kimiaapp/models/data/dummy_data/unknown_properties_data.dart';
import 'package:kimiaapp/models/data/desc_menu_data.dart';

//* list berisi semua dummy data
List<DescMenuData> listDataUnsur = <DescMenuData>[
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
