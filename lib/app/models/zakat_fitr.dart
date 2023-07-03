import 'dart:io';
import 'package:hive/hive.dart';

part 'zakat_fitr.g.dart';

@HiveType(typeId: 0)
class ZakatFitr extends HiveObject {
  @HiveField(0)
  String? _name;
  @HiveField(1)
  String? _address;
  @HiveField(2)
  int? _count;
  @HiveField(3)
  int? _price;

  ZakatFitr({String? name, String? address, int? count, int? price}) {
    if (name != null) {
      this._name = name;
    }
    if (address != null) {
      this._address = address;
    }
    if (count != null) {
      this._count = count;
    }
    if (price != null) {
      this._price = price;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  String? get address => _address;
  set address(String? address) => _address = address;
  int? get count => _count;
  set count(int? count) => _count = count;
  int? get price => _price;
  set price(int? price) => _price = price;

  ZakatFitr.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _address = json['address'];
    _count = json['count'];
    _price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['address'] = this._address;
    data['count'] = this._count;
    data['price'] = this._price;
    return data;
  }
}
