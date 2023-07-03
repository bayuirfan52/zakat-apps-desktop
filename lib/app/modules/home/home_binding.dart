import 'package:get/get.dart';
import 'package:zakat_apps/app/modules/dashboard/dashboard_controller.dart';
import 'package:zakat_apps/app/modules/info/info_controller.dart';
import 'package:zakat_apps/app/modules/penerima/penerima_controller.dart';
import 'package:zakat_apps/app/modules/penyaluran/penyaluran_controller.dart';
import 'package:zakat_apps/app/modules/settings/settings_controller.dart';
import 'package:zakat_apps/app/modules/zakat/zakat_controller.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<InfoController>(() => InfoController());
    Get.lazyPut<ZakatController>(() => ZakatController());
    Get.lazyPut<PenerimaController>(() => PenerimaController());
    Get.lazyPut<PenyaluranController>(() => PenyaluranController());
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}
