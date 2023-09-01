import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:zakat_apps/app/models/zakat_fitr.dart';

class ReceiptController extends GetxController {
  final data = ZakatFitr().obs;
  @override
  void onInit() {
    super.onInit();
    data.value = ZakatFitr.fromJson(Get.arguments as Map<String, dynamic>);
  }

  Future<void> print() async {
    final manager = PrinterBluetoothManager();
    final permissionStatus = await Permission.bluetooth.isGranted;

    if (permissionStatus == false) {
      await Permission.bluetooth.request().then((value) {
        print();
      });
    } else {
      manager.scanResults.listen((printer) async {
        debugPrint(printer.asMap().toString());
      });
      manager.startScan(Duration(seconds: 30));
    }
  }
}
