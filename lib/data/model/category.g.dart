// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryAdapter extends TypeAdapter<_$_Category> {
  @override
  final int typeId = 3;

  @override
  _$_Category read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Category(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as bool?,
      fields[3] as String?,
      fields[4] as Owner?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Category obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.color)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.owner)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.updatedAt)
      ..writeByte(8)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OwnerAdapter extends TypeAdapter<_$_Owner> {
  @override
  final int typeId = 4;

  @override
  _$_Owner read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Owner(
      fields[0] as String?,
      fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Owner obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OwnerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CategoryItemAdapter extends TypeAdapter<_$_CategoryItem> {
  @override
  final int typeId = 5;

  @override
  _$_CategoryItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CategoryItem(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as bool?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CategoryItem obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.color)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.owner)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.updatedAt)
      ..writeByte(8)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      json['color'] as String?,
      json['description'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] == null
          ? null
          : Owner.fromJson(json['ownerid'] as Map<String, dynamic>),
      json['name'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'color': instance.color,
      'description': instance.description,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.owner,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      json['_id'] as String?,
      json['username'] as String?,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
    };

_$_CategoryItem _$$_CategoryItemFromJson(Map<String, dynamic> json) =>
    _$_CategoryItem(
      json['color'] as String?,
      json['description'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['name'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_CategoryItemToJson(_$_CategoryItem instance) =>
    <String, dynamic>{
      'color': instance.color,
      'description': instance.description,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.owner,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };
