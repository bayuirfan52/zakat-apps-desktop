import 'package:get/get.dart';
import 'package:zakat_apps/app/models/zakat_fitr.dart';

class ReceiptController extends GetxController {
  final data = ZakatFitr().obs;
  @override
  void onInit() {
    super.onInit();
    data.value = Get.arguments as ZakatFitr;
  }

  Future<void> print() async {

  }
}
