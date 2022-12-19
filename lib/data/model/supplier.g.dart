// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SupplierAdapter extends TypeAdapter<_$_Supplier> {
  @override
  final int typeId = 13;

  @override
  _$_Supplier read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Supplier(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as bool?,
      fields[5] as String?,
      fields[6] as Owner?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as String?,
      fields[10] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Supplier obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.desc)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.owner)
      ..writeByte(7)
      ..write(obj.address)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SupplierItemAdapter extends TypeAdapter<_$_SupplierItem> {
  @override
  final int typeId = 14;

  @override
  _$_SupplierItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SupplierItem(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as bool?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as String?,
      fields[10] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SupplierItem obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.desc)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.ownerid)
      ..writeByte(7)
      ..write(obj.address)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Supplier _$$_SupplierFromJson(Map<String, dynamic> json) => _$_Supplier(
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['description'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] == null
          ? null
          : Owner.fromJson(json['ownerid'] as Map<String, dynamic>),
      json['address'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_SupplierToJson(_$_Supplier instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'description': instance.desc,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.owner,
      'address': instance.address,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_SupplierItem _$$_SupplierItemFromJson(Map<String, dynamic> json) =>
    _$_SupplierItem(
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['description'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['address'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_SupplierItemToJson(_$_SupplierItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'description': instance.desc,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.ownerid,
      'address': instance.address,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };
