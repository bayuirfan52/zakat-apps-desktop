import 'package:get/get.dart';

import 'penerima_controller.dart';

class PenerimaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PenerimaController>(
      () => PenerimaController(),
    );
  }
}
