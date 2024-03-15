// To parse this JSON data, do
//
//     final zakatFitr = zakatFitrFromJson(jsonString);

import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'zakat_fitr.g.dart';

ZakatFitr zakatFitrFromJson(String str) => ZakatFitr.fromJson(json.decode(str));

String zakatFitrToJson(ZakatFitr data) => json.encode(data.toJson());

@HiveType(typeId: 1)
@JsonSerializable()
class ZakatFitr {
  @HiveField(1)
  @JsonKey(name: "name")
  String? name;
  @HiveField(2)
  @JsonKey(name: "notes")
  String? notes;
  @HiveField(3)
  @JsonKey(name: "address")
  String? address;
  @HiveField(4)
  @JsonKey(name: "uuid")
  String? uuid;
  @HiveField(5)
  @JsonKey(name: "count")
  int? count;
  @HiveField(7)
  @JsonKey(name: "price")
  int? price;
  @HiveField(9)
  @JsonKey(name: "created_at")
  DateTime? createdAt;

  ZakatFitr({
    this.uuid,
    this.name,
    this.notes,
    this.address,
    this.count,
    this.price,
    this.createdAt,
  });

  ZakatFitr copyWith({
    String? uuid,
    String? name,
    String? notes,
    String? address,
    int? count,
    int? price,
    DateTime? createdAt,
  }) =>
      ZakatFitr(
        uuid: uuid ?? this.uuid,
        name: name ?? this.name,
        notes: notes ?? this.notes,
        address: address ?? this.address,
        count: count ?? this.count,
        price: price ?? this.price,
        createdAt: createdAt ?? this.createdAt,
      );

  factory ZakatFitr.fromJson(Map<String, dynamic> json) => _$ZakatFitrFromJson(json);

  Map<String, dynamic> toJson() => _$ZakatFitrToJson(this);
}
