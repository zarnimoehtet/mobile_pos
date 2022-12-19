// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerAdapter extends TypeAdapter<_$_Customer> {
  @override
  final int typeId = 15;

  @override
  _$_Customer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Customer(
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
  void write(BinaryWriter writer, _$_Customer obj) {
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
      other is CustomerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CustomerItemAdapter extends TypeAdapter<_$_CustomerItem> {
  @override
  final int typeId = 16;

  @override
  _$_CustomerItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CustomerItem(
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
  void write(BinaryWriter writer, _$_CustomerItem obj) {
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
      other is CustomerItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
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

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
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

_$_CustomerItem _$$_CustomerItemFromJson(Map<String, dynamic> json) =>
    _$_CustomerItem(
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

Map<String, dynamic> _$$_CustomerItemToJson(_$_CustomerItem instance) =>
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
