import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/data/database.dart';
import 'package:zakat_apps/app/helpers/flushbar_helper.dart';
import 'package:zakat_apps/app/helpers/preference_helper.dart';
import 'package:zakat_apps/app/models/zakat_fitr.dart';
import 'package:zakat_apps/app/routes/app_pages.dart';
import 'package:zakat_apps/app/utils/currency_formatter.dart';

class ZakatFitrahController extends GetxController {
  final price = 0.obs;
  int basePrice = 0;
  final personCount = 1.obs;
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final basePriceController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    basePrice = PreferenceHelper.currentFitrPrice() ?? 0;
    price.value = PreferenceHelper.currentFitrPrice() ?? 0;
    basePriceController.value = TextEditingValue(text: rupiah(basePrice));
  }

  void add() {
    personCount.value += 1;
    price.value += basePrice;
  }

  void minus() {
    if (personCount.value > 1) {
      personCount.value -= 1;
      price.value -= basePrice;
    }
  }

  void checkingData(Function callback) {
    if (nameController.text.isEmptyOrNull) {
      FlushbarHelper.showFlushbar(
        Get.context!,
        FlushbarType.ERROR,
        title: 'Perhatian',
        message: 'Nama wajib diisi',
      );
      return;
    }
    if (addressController.text.isEmptyOrNull) {
      FlushbarHelper.showFlushbar(
        Get.context!,
        FlushbarType.ERROR,
        title: 'Perhatian',
        message: 'Alamat wajib diisi',
      );
      return;
    }

    callback.call();
  }

  Future<void> submit() async {
    final data = ZakatFitr(
      name: nameController.text,
      address: addressController.text,
      price: price.value,
      count: personCount.value,
    );

    Get.back<dynamic>();
    await Database.addFitrData(data).then((value) {
      Get.offNamed<dynamic>(Routes.RECEIPT, arguments: data.toJson());
      // ignore: inference_failure_on_untyped_parameter
    }).catchError((error) {
      FlushbarHelper.showFlushbar(Get.context!, FlushbarType.ERROR, message: error.toString());
    });
  }
}
