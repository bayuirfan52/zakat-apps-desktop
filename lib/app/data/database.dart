import 'package:hive/hive.dart';
import 'package:zakat_apps/app/models/zakat_fitr.dart';

mixin Database {
  static final zakatFitrBox = 'zakat_fitr';

  static Future<void> databaseInit() async {
    if (!Hive.isAdapterRegistered(1)) Hive.registerAdapter(ZakatFitrAdapter());
    await Hive.openBox<ZakatFitr>(zakatFitrBox);
  }

  static Future<void> addFitrData(ZakatFitr data) async {
    try {
      final box = await Hive.box<ZakatFitr>(zakatFitrBox);
      await box.put(data.uuid, data);
    } catch(e, trace) {
      print(trace);
    }
  }

  static Future<List<ZakatFitr>> getAllFitrData() async {
    final data = await Hive.box<ZakatFitr>(zakatFitrBox).values.toList();

    return data;
  }
}
