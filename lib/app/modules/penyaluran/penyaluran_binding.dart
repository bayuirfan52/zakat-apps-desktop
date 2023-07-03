import 'package:get/get.dart';

import 'penyaluran_controller.dart';

class PenyaluranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PenyaluranController>(
      () => PenyaluranController(),
    );
  }
}
