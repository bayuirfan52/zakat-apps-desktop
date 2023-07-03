import 'package:hive/hive.dart';
import 'package:zakat_apps/app/models/zakat_fitr.dart';
import 'dart:convert';

mixin Database {
  static final zakatFitrBox = 'zakat_fitr';

  static Future<void> databaseInit() async {
    Hive.registerAdapter(ZakatFitrAdapter());
    await Hive.openBox(zakatFitrBox);
  }

  static Future<void> addFitrData(ZakatFitr data) async {
    final box = await Hive.openBox(zakatFitrBox);
    await box.add(data.toJson());
    box.close();
  }

  static Future<List<ZakatFitr>> getAllFitrData() async {
    final box = await Hive.openBox(zakatFitrBox);
    final list = <ZakatFitr>[];

    for (int i = box.length - 1; i >= 0; i--) {
      var item = box.getAt(i);
      print(item.toString());
      var data = ZakatFitr(
        name: item['name'],
        address: item['address'],
        count: item['count'],
        price: item['price'],
      );
      list.add(data);
    }

    box.close();

    return list;
  }
}
