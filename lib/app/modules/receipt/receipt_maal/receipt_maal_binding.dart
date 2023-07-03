import 'package:get/get.dart';

import 'receipt_maal_controller.dart';

class ReceiptMaalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReceiptMaalController>(
      () => ReceiptMaalController(),
    );
  }
}
