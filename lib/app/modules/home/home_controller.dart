import 'package:get/get.dart';
import 'package:zakat_apps/app/modules/dashboard/dashboard_view.dart';
import 'package:zakat_apps/app/modules/info/info_view.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;
  final listView = [
    DashboardView(),
    InfoView(),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void selectPage(int index) => selectedIndex.value = index;
}
