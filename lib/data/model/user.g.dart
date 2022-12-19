// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$_User> {
  @override
  final int typeId = 0;

  @override
  _$_User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_User(
      fields[0] as String?,
      (fields[1] as List?)?.cast<Employee>(),
      fields[2] as bool?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as String?,
      fields[10] as String?,
      fields[11] as int?,
      fields[12] as Shop?,
      fields[13] as String?,
      fields[14] as String?,
      fields[15] as String?,
      fields[16] as String?,
      fields[17] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_User obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.theme)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.logo)
      ..writeByte(5)
      ..write(obj.userName)
      ..writeByte(6)
      ..write(obj.password)
      ..writeByte(7)
      ..write(obj.mobilePassword)
      ..writeByte(8)
      ..write(obj.role)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt)
      ..writeByte(11)
      ..write(obj.version)
      ..writeByte(12)
      ..write(obj.shop)
      ..writeByte(13)
      ..write(obj.address)
      ..writeByte(14)
      ..write(obj.cityId)
      ..writeByte(15)
      ..write(obj.email)
      ..writeByte(16)
      ..write(obj.ownerType)
      ..writeByte(17)
      ..write(obj.phone)
      ..writeByte(1)
      ..write(obj.employees);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EmployeeAdapter extends TypeAdapter<_$_Employee> {
  @override
  final int typeId = 1;

  @override
  _$_Employee read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Employee(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as bool?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as String?,
      fields[10] as String?,
      fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Employee obj) {
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
      ..write(obj.ownerId)
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
      other is EmployeeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ShopAdapter extends TypeAdapter<_$_Shop> {
  @override
  final int typeId = 2;

  @override
  _$_Shop read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Shop(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as bool?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Shop obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.address)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.ownerId)
      ..writeByte(6)
      ..write(obj.phone)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt)
      ..writeByte(9)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShopAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      json['theme'] as String?,
      (json['employees'] as List<dynamic>?)
          ?.map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as bool?,
      json['_id'] as String?,
      json['logo'] as String?,
      json['username'] as String?,
      json['password'] as String?,
      json['mobile_password'] as String?,
      json['role'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
      json['shop'] == null
          ? null
          : Shop.fromJson(json['shop'] as Map<String, dynamic>),
      json['address'] as String?,
      json['cityid'] as String?,
      json['email'] as String?,
      json['ownertype'] as String?,
      json['phone'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'theme': instance.theme,
      'employees': instance.employees,
      'status': instance.status,
      '_id': instance.id,
      'logo': instance.logo,
      'username': instance.userName,
      'password': instance.password,
      'mobile_password': instance.mobilePassword,
      'role': instance.role,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
      'shop': instance.shop,
      'address': instance.address,
      'cityid': instance.cityId,
      'email': instance.email,
      'ownertype': instance.ownerType,
      'phone': instance.phone,
    };

_$_Employee _$$_EmployeeFromJson(Map<String, dynamic> json) => _$_Employee(
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['role'] as String?,
      json['description'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['pincode'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_EmployeeToJson(_$_Employee instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'description': instance.description,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.ownerId,
      'pincode': instance.pincode,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_Shop _$$_ShopFromJson(Map<String, dynamic> json) => _$_Shop(
      json['name'] as String?,
      json['address'] as String?,
      json['description'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['phone'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_ShopToJson(_$_Shop instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.ownerId,
      'phone': instance.phone,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };
