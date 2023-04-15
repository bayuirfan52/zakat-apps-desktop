import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const NAME_INSTITUTION = 'name_institution';
const ADDRESS_INSTITUTION = 'address_institution';
const NAME_RESPONSIBLE = 'name_responsible';
const POSITION_RESPONSIBLE = 'position_responsible';
const WEIGHT_FITR_MAIN = 'weight_fitr_main';
const PRICE_FITR_MAIN = 'price_fitr_main';

mixin PreferenceHelper {
  static final _prefs = Get.find<GetStorage>();
  static Map<String, dynamic> getDefault() {
    final defaultSettings = {
      NAME_INSTITUTION: '',
      ADDRESS_INSTITUTION: '',
      NAME_RESPONSIBLE: '',
      POSITION_RESPONSIBLE: '',
      WEIGHT_FITR_MAIN: 2.5,
      PRICE_FITR_MAIN: 35000,
    };
    return defaultSettings;
  }

  static Future<void> saveSettings(Map<String, dynamic> data) async {
    await _prefs.write(NAME_INSTITUTION, data[NAME_INSTITUTION]);
    await _prefs.write(ADDRESS_INSTITUTION, data[ADDRESS_INSTITUTION]);
    await _prefs.write(NAME_RESPONSIBLE, data[NAME_RESPONSIBLE]);
    await _prefs.write(POSITION_RESPONSIBLE, data[POSITION_RESPONSIBLE]);
    await _prefs.write(WEIGHT_FITR_MAIN, data[WEIGHT_FITR_MAIN]);
    await _prefs.write(PRICE_FITR_MAIN, data[PRICE_FITR_MAIN]);
  }

  static int? currentFitrPrice() => _prefs.read<int>(PRICE_FITR_MAIN);
  static double? currentFitrWeight() => _prefs.read<double>(WEIGHT_FITR_MAIN);
  static String? currentNameResponsible() => _prefs.read<String>(NAME_RESPONSIBLE);
  static String? currentPositionResponsible() => _prefs.read<String>(POSITION_RESPONSIBLE);
  static String? currentNameInstitution() => _prefs.read<String>(NAME_INSTITUTION);
  static String? currentAddressInstitution() => _prefs.read<String>(ADDRESS_INSTITUTION);
}
