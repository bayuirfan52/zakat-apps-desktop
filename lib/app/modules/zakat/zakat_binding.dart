import 'package:get/get.dart';

import 'zakat_controller.dart';

class ZakatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ZakatController>(
      () => ZakatController(),
    );
  }
}
