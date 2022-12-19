// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpenseAdapter extends TypeAdapter<_$_Expense> {
  @override
  final int typeId = 19;

  @override
  _$_Expense read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Expense(
      fields[0] as bool?,
      fields[1] as String?,
      fields[2] as Owner?,
      fields[3] as ExpenseTitle?,
      fields[4] as int?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Expense obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.owner)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.amount)
      ..writeByte(6)
      ..write(obj.desc)
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
      other is ExpenseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExpenseItemAdapter extends TypeAdapter<_$_ExpenseItem> {
  @override
  final int typeId = 20;

  @override
  _$_ExpenseItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ExpenseItem(
      fields[0] as bool?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as int?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ExpenseItem obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.ownerId)
      ..writeByte(3)
      ..write(obj.titleId)
      ..writeByte(4)
      ..write(obj.amount)
      ..writeByte(6)
      ..write(obj.desc)
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
      other is ExpenseItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExpenseTitleAdapter extends TypeAdapter<_$_ExpenseTitle> {
  @override
  final int typeId = 17;

  @override
  _$_ExpenseTitle read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ExpenseTitle(
      fields[0] as bool?,
      fields[1] as String?,
      fields[2] as Owner?,
      fields[3] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ExpenseTitle obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.ownerId)
      ..writeByte(3)
      ..write(obj.name)
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
      other is ExpenseTitleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExpenseTitleItemAdapter extends TypeAdapter<_$_ExpenseTitleItem> {
  @override
  final int typeId = 18;

  @override
  _$_ExpenseTitleItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ExpenseTitleItem(
      fields[0] as bool?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ExpenseTitleItem obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.ownerId)
      ..writeByte(3)
      ..write(obj.name)
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
      other is ExpenseTitleItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Expense _$$_ExpenseFromJson(Map<String, dynamic> json) => _$_Expense(
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] == null
          ? null
          : Owner.fromJson(json['ownerid'] as Map<String, dynamic>),
      json['titleid'] == null
          ? null
          : ExpenseTitle.fromJson(json['titleid'] as Map<String, dynamic>),
      json['amount'] as int?,
      json['description'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_ExpenseToJson(_$_Expense instance) =>
    <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.owner,
      'titleid': instance.title,
      'amount': instance.amount,
      'description': instance.desc,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_ExpenseItem _$$_ExpenseItemFromJson(Map<String, dynamic> json) =>
    _$_ExpenseItem(
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['titleid'] as String?,
      json['amount'] as int?,
      json['description'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_ExpenseItemToJson(_$_ExpenseItem instance) =>
    <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.ownerId,
      'titleid': instance.titleId,
      'amount': instance.amount,
      'description': instance.desc,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_ExpenseTitle _$$_ExpenseTitleFromJson(Map<String, dynamic> json) =>
    _$_ExpenseTitle(
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

Map<String, dynamic> _$$_ExpenseTitleToJson(_$_ExpenseTitle instance) =>
    <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.ownerId,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_ExpenseTitleItem _$$_ExpenseTitleItemFromJson(Map<String, dynamic> json) =>
    _$_ExpenseTitleItem(
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['name'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_ExpenseTitleItemToJson(_$_ExpenseTitleItem instance) =>
    <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.ownerId,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };
