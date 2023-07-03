import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:get/get.dart';
import 'package:zakat_apps/app/helpers/preference_helper.dart';

class SettingsController extends GetxController {
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final namePersonController = TextEditingController();
  final positionController = TextEditingController();
  final weightController = TextEditingController();
  final priceController = MoneyMaskedTextController(leftSymbol: 'Rp. ');

  @override
  void onInit() {
    super.onInit();
    final condition = PreferenceHelper.currentFitrPrice() != null && PreferenceHelper.currentFitrWeight() != null;

    nameController.text = PreferenceHelper.currentNameInstitution() ?? '';
    addressController.text = PreferenceHelper.currentAddressInstitution() ?? '';
    namePersonController.text = PreferenceHelper.currentNameResponsible() ?? '';
    positionController.text = PreferenceHelper.currentPositionResponsible() ?? '';

    if (condition) {
      priceController.updateValue(double.parse(PreferenceHelper.currentFitrPrice().toString()));
      weightController.text = PreferenceHelper.currentFitrWeight().toString();
    } else {
      final defaultSettings = PreferenceHelper.getDefault();
      final price = defaultSettings[PRICE_FITR_MAIN] as int;
      final weight = defaultSettings[WEIGHT_FITR_MAIN] as double;

      priceController.updateValue(double.parse(price.toString()));
      weightController.text = weight.toString();
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void saveData() {
    final data = {
      NAME_INSTITUTION: nameController.text,
      ADDRESS_INSTITUTION: addressController.text,
      NAME_RESPONSIBLE: namePersonController.text,
      POSITION_RESPONSIBLE: positionController.text,
      WEIGHT_FITR_MAIN: double.parse(weightController.text),
      PRICE_FITR_MAIN: priceController.numberValue.toInt(),
    };

    PreferenceHelper.saveSettings(data);
  }
}
