// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemAdapter extends TypeAdapter<_$_Item> {
  @override
  final int typeId = 7;

  @override
  _$_Item read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Item(
      fields[0] as Presentation?,
      fields[1] as int?,
      fields[2] as int?,
      fields[3] as int?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as bool?,
      fields[9] as String?,
      fields[10] as Owner?,
      fields[11] as String?,
      fields[12] as Category?,
      fields[13] as String?,
      fields[14] as String?,
      (fields[15] as List?)?.cast<String>(),
      fields[16] as String?,
      fields[17] as String?,
      fields[19] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Item obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.presentation)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.cost)
      ..writeByte(3)
      ..write(obj.stock)
      ..writeByte(4)
      ..write(obj.desc)
      ..writeByte(5)
      ..write(obj.isDiscount)
      ..writeByte(6)
      ..write(obj.discountType)
      ..writeByte(7)
      ..write(obj.discount)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.id)
      ..writeByte(10)
      ..write(obj.owner)
      ..writeByte(11)
      ..write(obj.name)
      ..writeByte(12)
      ..write(obj.category)
      ..writeByte(13)
      ..write(obj.sku)
      ..writeByte(14)
      ..write(obj.barcode)
      ..writeByte(16)
      ..write(obj.createdAt)
      ..writeByte(17)
      ..write(obj.updatedAt)
      ..writeByte(19)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.variant);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PresentationAdapter extends TypeAdapter<_$_Presentation> {
  @override
  final int typeId = 8;

  @override
  _$_Presentation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Presentation(
      fields[0] as String?,
      (fields[1] as List?)?.cast<String>(),
      (fields[2] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Presentation obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.presentType)
      ..writeByte(1)
      ..write(obj.images)
      ..writeByte(2)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PresentationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ItemResAdapter extends TypeAdapter<_$_ItemRes> {
  @override
  final int typeId = 9;

  @override
  _$_ItemRes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ItemRes(
      fields[0] as Presentation?,
      fields[1] as int?,
      fields[2] as int?,
      fields[3] as int?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as bool?,
      fields[9] as String?,
      fields[10] as String?,
      fields[11] as String?,
      fields[12] as String?,
      fields[13] as String?,
      fields[14] as String?,
      (fields[15] as List?)?.cast<String>(),
      fields[16] as String?,
      fields[17] as String?,
      fields[19] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ItemRes obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.presentation)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.cost)
      ..writeByte(3)
      ..write(obj.stock)
      ..writeByte(4)
      ..write(obj.desc)
      ..writeByte(5)
      ..write(obj.isDiscount)
      ..writeByte(6)
      ..write(obj.discountType)
      ..writeByte(7)
      ..write(obj.discount)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.id)
      ..writeByte(10)
      ..write(obj.ownerid)
      ..writeByte(11)
      ..write(obj.name)
      ..writeByte(12)
      ..write(obj.category)
      ..writeByte(13)
      ..write(obj.sku)
      ..writeByte(14)
      ..write(obj.barcode)
      ..writeByte(16)
      ..write(obj.createdAt)
      ..writeByte(17)
      ..write(obj.updatedAt)
      ..writeByte(19)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.variant);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemResAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      json['presentation'] == null
          ? null
          : Presentation.fromJson(json['presentation'] as Map<String, dynamic>),
      json['price'] as int?,
      json['cost'] as int?,
      json['stock'] as int?,
      json['description'] as String?,
      json['is_discount'] as String?,
      json['discount_type'] as String?,
      json['discount'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] == null
          ? null
          : Owner.fromJson(json['ownerid'] as Map<String, dynamic>),
      json['name'] as String?,
      json['categoryid'] == null
          ? null
          : Category.fromJson(json['categoryid'] as Map<String, dynamic>),
      json['sku'] as String?,
      json['barcode'] as String?,
      (json['variant'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'presentation': instance.presentation,
      'price': instance.price,
      'cost': instance.cost,
      'stock': instance.stock,
      'description': instance.desc,
      'is_discount': instance.isDiscount,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.owner,
      'name': instance.name,
      'categoryid': instance.category,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'variant': instance.variant,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_Presentation _$$_PresentationFromJson(Map<String, dynamic> json) =>
    _$_Presentation(
      json['present_type'] as String?,
      (json['present_image'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['present_color'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PresentationToJson(_$_Presentation instance) =>
    <String, dynamic>{
      'present_type': instance.presentType,
      'present_image': instance.images,
      'present_color': instance.color,
    };

_$_ItemRes _$$_ItemResFromJson(Map<String, dynamic> json) => _$_ItemRes(
      json['presentation'] == null
          ? null
          : Presentation.fromJson(json['presentation'] as Map<String, dynamic>),
      json['price'] as int?,
      json['cost'] as int?,
      json['stock'] as int?,
      json['description'] as String?,
      json['is_discount'] as String?,
      json['discount_type'] as String?,
      json['discount'] as String?,
      json['status'] as bool?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['name'] as String?,
      json['categoryid'] as String?,
      json['sku'] as String?,
      json['barcode'] as String?,
      (json['variant'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_ItemResToJson(_$_ItemRes instance) =>
    <String, dynamic>{
      'presentation': instance.presentation,
      'price': instance.price,
      'cost': instance.cost,
      'stock': instance.stock,
      'description': instance.desc,
      'is_discount': instance.isDiscount,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.ownerid,
      'name': instance.name,
      'categoryid': instance.category,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'variant': instance.variant,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };
