import 'dart:io';

import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:zakat_apps/app/modules/dashboard/dashboard_view.dart';
import 'package:zakat_apps/app/modules/info/info_view.dart';
import 'package:zakat_apps/app/modules/settings/settings_view.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;
  final listView = [
    DashboardView(),
    SettingsView(),
    InfoView(),
  ];
  final version = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getVersion().then((result) => version.value = result);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<String> getVersion() async {
    final info = await PackageInfo.fromPlatform();
    return info.version;
  }
}
