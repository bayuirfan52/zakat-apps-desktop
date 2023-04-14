import 'package:get/get.dart';
import 'package:zakat_apps/app/modules/dashboard/dashboard_controller.dart';
import 'package:zakat_apps/app/modules/info/info_controller.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<InfoController>(() => InfoController());
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
