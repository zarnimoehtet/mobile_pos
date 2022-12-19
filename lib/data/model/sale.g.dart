// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaleAdapter extends TypeAdapter<_$_Sale> {
  @override
  final int typeId = 22;

  @override
  _$_Sale read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Sale(
      fields[0] as int?,
      fields[1] as int?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as int?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as Owner?,
      fields[9] as Employee?,
      fields[10] as CustomerItem?,
      (fields[11] as List).cast<SaleItem>(),
      fields[12] as String?,
      fields[13] as String?,
      fields[14] as String?,
      fields[15] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Sale obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.totalAmount)
      ..writeByte(1)
      ..write(obj.reducePrice)
      ..writeByte(2)
      ..write(obj.desc)
      ..writeByte(3)
      ..write(obj.paymentType)
      ..writeByte(4)
      ..write(obj.hasCredit)
      ..writeByte(5)
      ..write(obj.creditAmount)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.id)
      ..writeByte(8)
      ..write(obj.owner)
      ..writeByte(9)
      ..write(obj.emp)
      ..writeByte(10)
      ..write(obj.customer)
      ..writeByte(12)
      ..write(obj.code)
      ..writeByte(13)
      ..write(obj.createdAt)
      ..writeByte(14)
      ..write(obj.updatedAt)
      ..writeByte(15)
      ..write(obj.version)
      ..writeByte(11)
      ..write(obj.itemList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SaleItemAdapter extends TypeAdapter<_$_SaleItem> {
  @override
  final int typeId = 23;

  @override
  _$_SaleItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SaleItem(
      fields[0] as int?,
      fields[1] as String?,
      fields[2] as int?,
      fields[3] as int?,
      fields[4] as int?,
      fields[5] as int?,
      fields[6] as String?,
      fields[7] as ItemRes?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SaleItem obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.qty)
      ..writeByte(1)
      ..write(obj.discountType)
      ..writeByte(2)
      ..write(obj.discount)
      ..writeByte(3)
      ..write(obj.discountPrice)
      ..writeByte(4)
      ..write(obj.salePrice)
      ..writeByte(5)
      ..write(obj.originPrice)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.item);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sale _$$_SaleFromJson(Map<String, dynamic> json) => _$_Sale(
      json['total_amount'] as int?,
      json['reduce_price'] as int?,
      json['description'] as String?,
      json['payment_type'] as String?,
      json['has_credit'] as String?,
      json['credit_amount'] as int?,
      json['status'] as String?,
      json['_id'] as String?,
      json['ownerid'] == null
          ? null
          : Owner.fromJson(json['ownerid'] as Map<String, dynamic>),
      json['employeeid'] == null
          ? null
          : Employee.fromJson(json['employeeid'] as Map<String, dynamic>),
      json['customerid'] == null
          ? null
          : CustomerItem.fromJson(json['customerid'] as Map<String, dynamic>),
      (json['items'] as List<dynamic>)
          .map((e) => SaleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['code'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['__v'] as int?,
    );

Map<String, dynamic> _$$_SaleToJson(_$_Sale instance) => <String, dynamic>{
      'total_amount': instance.totalAmount,
      'reduce_price': instance.reducePrice,
      'description': instance.desc,
      'payment_type': instance.paymentType,
      'has_credit': instance.hasCredit,
      'credit_amount': instance.creditAmount,
      'status': instance.status,
      '_id': instance.id,
      'ownerid': instance.owner,
      'employeeid': instance.emp,
      'customerid': instance.customer,
      'items': instance.itemList,
      'code': instance.code,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '__v': instance.version,
    };

_$_SaleItem _$$_SaleItemFromJson(Map<String, dynamic> json) => _$_SaleItem(
      json['quantity'] as int?,
      json['discount_type'] as String?,
      json['discount'] as int?,
      json['discount_price'] as int?,
      json['sale_price'] as int?,
      json['origin_price'] as int?,
      json['_id'] as String?,
      json['productid'] == null
          ? null
          : ItemRes.fromJson(json['productid'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SaleItemToJson(_$_SaleItem instance) =>
    <String, dynamic>{
      'quantity': instance.qty,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'discount_price': instance.discountPrice,
      'sale_price': instance.salePrice,
      'origin_price': instance.originPrice,
      '_id': instance.id,
      'productid': instance.item,
    };
