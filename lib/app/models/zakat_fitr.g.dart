// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zakat_fitr.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ZakatFitrAdapter extends TypeAdapter<ZakatFitr> {
  @override
  final int typeId = 0;

  @override
  ZakatFitr read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ZakatFitr()
      .._name = fields[0] as String?
      .._address = fields[1] as String?
      .._count = fields[2] as int?
      .._price = fields[3] as int?;
  }

  @override
  void write(BinaryWriter writer, ZakatFitr obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj._name)
      ..writeByte(1)
      ..write(obj._address)
      ..writeByte(2)
      ..write(obj._count)
      ..writeByte(3)
      ..write(obj._price);
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
