// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zakat_fitr.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ZakatFitrAdapter extends TypeAdapter<ZakatFitr> {
  @override
  final int typeId = 1;

  @override
  ZakatFitr read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ZakatFitr(
      uuid: fields[4] as String?,
      name: fields[1] as String?,
      notes: fields[2] as String?,
      address: fields[3] as String?,
      count: fields[5] as int?,
      price: fields[7] as int?,
      createdAt: fields[9] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ZakatFitr obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.notes)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.uuid)
      ..writeByte(5)
      ..write(obj.count)
      ..writeByte(7)
      ..write(obj.price)
      ..writeByte(9)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ZakatFitrAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZakatFitr _$ZakatFitrFromJson(Map<String, dynamic> json) => ZakatFitr(
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      notes: json['notes'] as String?,
      address: json['address'] as String?,
      count: json['count'] as int?,
      price: json['price'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$ZakatFitrToJson(ZakatFitr instance) => <String, dynamic>{
      'name': instance.name,
      'notes': instance.notes,
      'address': instance.address,
      'uuid': instance.uuid,
      'count': instance.count,
      'price': instance.price,
      'created_at': instance.createdAt?.toIso8601String(),
    };
