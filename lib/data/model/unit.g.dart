// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UnitAdapter extends TypeAdapter<_$_Unit> {
  @override
  final int typeId = 10;

  @override
  _$_Unit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Unit(
      fields[0] as bool?,
      fields[1] as String?,
      fields[2] as Owner?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Unit obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.owner)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.desc)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnitItemAdapter extends TypeAdapter<_$_UnitItem> {
  @override
  final int typeId = 11;

  @override
  _$_UnitItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UnitItem(
      fields[0] as bool?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UnitItem obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.ownerid)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.desc)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnitItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Unit _$$_UnitFromJson(Map<String, dynamic> json) => _$_Unit(
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] == null
          ? null
          : Owner.fromJson(json['ownerid'] as Map<String, dynamic>),
      json['name'] as String?,
      json['description'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_UnitToJson(_$_Unit instance) => <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.owner,
      'name': instance.name,
      'description': instance.desc,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_UnitItem _$$_UnitItemFromJson(Map<String, dynamic> json) => _$_UnitItem(
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['name'] as String?,
      json['description'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_UnitItemToJson(_$_UnitItem instance) =>
    <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.ownerid,
      'name': instance.name,
      'description': instance.desc,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };
