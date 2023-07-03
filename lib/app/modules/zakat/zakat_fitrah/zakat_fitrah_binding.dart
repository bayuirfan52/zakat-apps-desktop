import 'package:get/get.dart';

import 'zakat_fitrah_controller.dart';

class ZakatFitrahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ZakatFitrahController>(() => ZakatFitrahController());
  }
}
