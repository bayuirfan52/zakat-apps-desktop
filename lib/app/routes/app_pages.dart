import 'package:get/get.dart';

import '../modules/dashboard/dashboard_binding.dart';
import '../modules/dashboard/dashboard_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/info/info_binding.dart';
import '../modules/info/info_view.dart';
import '../modules/penerima/penerima_binding.dart';
import '../modules/penerima/penerima_view.dart';
import '../modules/penyaluran/penyaluran_binding.dart';
import '../modules/penyaluran/penyaluran_view.dart';
import '../modules/receipt/receipt_fitrah/receipt_binding.dart';
import '../modules/receipt/receipt_fitrah/receipt_view.dart';
import '../modules/receipt/receipt_maal/receipt_maal_binding.dart';
import '../modules/receipt/receipt_maal/receipt_maal_view.dart';
import '../modules/settings/settings_binding.dart';
import '../modules/settings/settings_view.dart';
import '../modules/zakat/zakat_binding.dart';
import '../modules/zakat/zakat_fitrah/zakat_fitrah_binding.dart';
import '../modules/zakat/zakat_fitrah/zakat_fitrah_view.dart';
import '../modules/zakat/zakat_maal/zakat_maal_binding.dart';
import '../modules/zakat/zakat_maal/zakat_maal_view.dart';
import '../modules/zakat/zakat_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage<dynamic>(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage<dynamic>(
      name: _Paths.INFO,
      page: () => const InfoView(),
      binding: InfoBinding(),
    ),
    GetPage<dynamic>(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage<dynamic>(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage<dynamic>(
      name: _Paths.ZAKAT,
      page: () => const ZakatView(),
      binding: ZakatBinding(),
      children: [
        GetPage<dynamic>(
          name: _Paths.ZAKAT_MAAL,
          page: () => const ZakatMaalView(),
          binding: ZakatMaalBinding(),
          transition: Transition.leftToRight,
        ),
        GetPage<dynamic>(
          name: _Paths.ZAKAT_FITRAH,
          page: () => const ZakatFitrahView(),
          binding: ZakatFitrahBinding(),
          transition: Transition.leftToRight,
        ),
        GetPage<dynamic>(
          name: _Paths.RECEIPT_FITR,
          page: () => const ReceiptView(),
          binding: ReceiptBinding(),
        ),
      ],
    ),
    GetPage<dynamic>(
      name: _Paths.PENYALURAN,
      page: () => const PenyaluranView(),
      binding: PenyaluranBinding(),
    ),
    GetPage<dynamic>(
      name: _Paths.PENERIMA,
      page: () => const PenerimaView(),
      binding: PenerimaBinding(),
    ),
    GetPage<dynamic>(
      name: _Paths.RECEIPT_MAAL,
      page: () => const ReceiptMaalView(),
      binding: ReceiptMaalBinding(),
    ),
  ];
}
