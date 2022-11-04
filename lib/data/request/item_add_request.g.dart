// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemAddRequest _$$_ItemAddRequestFromJson(Map<String, dynamic> json) =>
    _$_ItemAddRequest(
      json['presentation'] == null
          ? null
          : PresentationRequest.fromJson(
              json['presentation'] as Map<String, dynamic>),
      json['price'] as String?,
      json['cost'] as String?,
      json['stock'] as String?,
      json['description'] as String?,
      json['is_discount'] as String?,
      json['discount_type'] as String?,
      json['discount'] as String?,
      json['status'] as String?,
      json['_id'] as String?,
      json['ownerid'] as String?,
      json['name'] as String?,
      json['categoryid'] as String?,
      json['sku'] as String?,
      json['barcode'] as String?,
      (json['variant'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['created_at'] as String?,
      json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_ItemAddRequestToJson(_$_ItemAddRequest instance) =>
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
    };

_$_PresentationRequest _$$_PresentationRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PresentationRequest(
      json['present_type'] as String?,
      (json['present_image'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['present_color'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PresentationRequestToJson(
        _$_PresentationRequest instance) =>
    <String, dynamic>{
      'present_type': instance.presentType,
      'present_image': instance.images,
      'present_color': instance.color,
    };
