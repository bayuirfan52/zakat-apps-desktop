import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zakat_apps/app/data/database.dart';
import 'package:zakat_apps/app/routes/app_pages.dart';
import 'package:zakat_apps/app/theme/app_theme.dart';
import 'package:zakat_apps/app/theme/color.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: colorPrimary));
      WidgetsFlutterBinding.ensureInitialized();
      await GetStorage.init();
      Get.lazyPut<GetStorage>(() => GetStorage());
      await Hive.initFlutter();
      await Database.databaseInit();

      runApp(ZakatApps());
    },
    (error, stack) {},
  );
}

class ZakatApps extends StatelessWidget {
  const ZakatApps({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Zakat Apps',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.native,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.theme,
      builder: (context, child) {
        return child!;
      },
    );
  }
}
