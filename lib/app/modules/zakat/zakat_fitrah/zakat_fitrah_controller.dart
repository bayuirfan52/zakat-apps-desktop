import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
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
  final notesController = TextEditingController();
  final basePriceController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    basePrice = PreferenceHelper.currentFitrPrice() ?? PreferenceHelper.getDefault()[PRICE_FITR_MAIN] as int;
    price.value = PreferenceHelper.currentFitrPrice() ?? PreferenceHelper.getDefault()[PRICE_FITR_MAIN] as int;
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
    if (formKey.currentState!.validate()) {
      final data = ZakatFitr(
        uuid: const Uuid().v1(),
        name: nameController.text,
        address: addressController.text,
        notes: notesController.text,
        price: price.value,
        count: personCount.value,
        createdAt: DateTime.now(),
      );

      Get.back<dynamic>();
      await Database.addFitrData(data).then((value) {
        Get.offNamed<dynamic>(Routes.RECEIPT, arguments: data);
      }).catchError((Object error) {
        FlushbarHelper.showFlushbar(Get.context!, FlushbarType.ERROR, message: error.toString());
      });
    }
  }
}
