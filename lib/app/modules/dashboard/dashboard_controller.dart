import 'package:get/get.dart';
import 'package:zakat_apps/app/data/database.dart';
import 'package:zakat_apps/app/models/zakat_fitr.dart';

class DashboardController extends GetxController {
  final dataFitr = <ZakatFitr>[].obs;
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    dataFitr.value = await Database.getAllFitrData();
    super.onReady();
  }
}
