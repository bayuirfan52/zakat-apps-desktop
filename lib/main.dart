import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:path_provider/path_provider.dart';
import 'package:zakat_apps/app/data/database.dart';
import 'package:zakat_apps/app/routes/app_pages.dart';
import 'package:zakat_apps/app/theme/app_theme.dart';
import 'package:zakat_apps/app/theme/color.dart';
import 'package:zakat_apps/app/utils/logger.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: colorPrimary));
      WidgetsFlutterBinding.ensureInitialized();
      final dir = await getApplicationSupportDirectory();
      await Hive.initFlutter(dir.path);
      await Database.databaseInit();
      await GetStorage.init();
      await initializeDateFormatting('id_ID');
      Get.lazyPut<GetStorage>(() => GetStorage());
      logD(dir.path);

      runApp(ZakatApps());
    },
    (error, stack) {
      logE(stack);
    },
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
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        return child!;
      },
    );
  }
}
