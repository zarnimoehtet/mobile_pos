// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmployeeItemAdapter extends TypeAdapter<_$_EmployeeItem> {
  @override
  final int typeId = 6;

  @override
  _$_EmployeeItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_EmployeeItem(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as bool?,
      fields[6] as String?,
      fields[7] as Owner?,
      fields[8] as String?,
      fields[9] as String?,
      fields[10] as String?,
      fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_EmployeeItem obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.role)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.owner)
      ..writeByte(8)
      ..write(obj.pincode)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt)
      ..writeByte(11)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeItem _$$_EmployeeItemFromJson(Map<String, dynamic> json) =>
    _$_EmployeeItem(
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['role'] as String?,
      json['description'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] == null
          ? null
          : Owner.fromJson(json['ownerid'] as Map<String, dynamic>),
      json['pincode'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_EmployeeItemToJson(_$_EmployeeItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'description': instance.description,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.owner,
      'pincode': instance.pincode,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };
