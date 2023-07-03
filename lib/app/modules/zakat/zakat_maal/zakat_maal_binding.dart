import 'package:get/get.dart';

import 'zakat_maal_controller.dart';

class ZakatMaalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ZakatMaalController>(
      () => ZakatMaalController(),
    );
  }
}
