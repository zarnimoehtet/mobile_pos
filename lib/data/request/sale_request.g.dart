// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesRequest _$$_SalesRequestFromJson(Map<String, dynamic> json) =>
    _$_SalesRequest(
      json['ownerid'] as String?,
      json['employeeid'] as String?,
      json['customerid'] as String?,
      json['reduce_price'] as int?,
      json['has_credit'] as String?,
      json['credit_amount'] as int?,
      json['total_amount'] as int?,
      json['payment_type'] as String?,
      json['status'] as String?,
      (json['items'] as List<dynamic>)
          .map((e) => SaleReqItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesRequestToJson(_$_SalesRequest instance) =>
    <String, dynamic>{
      'ownerid': instance.ownerId,
      'employeeid': instance.empId,
      'customerid': instance.customerId,
      'reduce_price': instance.reducePrice,
      'has_credit': instance.hasCredit,
      'credit_amount': instance.creditAmount,
      'total_amount': instance.totalAmount,
      'payment_type': instance.paymentType,
      'status': instance.status,
      'items': instance.saleItems,
    };

_$_SaleReqItem _$$_SaleReqItemFromJson(Map<String, dynamic> json) =>
    _$_SaleReqItem(
      json['productid'] as String?,
      json['is_stock'] as String?,
      json['is_discount'] as String?,
      json['quantity'] as int?,
      json['discount_type'] as String?,
      json['discount'] as int?,
      json['discount_price'] as int?,
      json['sale_price'] as int?,
      json['origin_price'] as int?,
    );

Map<String, dynamic> _$$_SaleReqItemToJson(_$_SaleReqItem instance) =>
    <String, dynamic>{
      'productid': instance.productId,
      'is_stock': instance.isStock,
      'is_discount': instance.isDiscount,
      'quantity': instance.qty,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'discount_price': instance.discountPrice,
      'sale_price': instance.salePrice,
      'origin_price': instance.originPrice,
    };
