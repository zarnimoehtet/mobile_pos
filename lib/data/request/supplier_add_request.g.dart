// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupplierRequest _$$_SupplierRequestFromJson(Map<String, dynamic> json) =>
    _$_SupplierRequest(
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['description'] as String?,
      json['status'] as String?,
      json['ownerid'] as String?,
      json['address'] as String?,
    );

Map<String, dynamic> _$$_SupplierRequestToJson(_$_SupplierRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'description': instance.desc,
      'status': instance.status,
      'ownerid': instance.ownerId,
      'address': instance.address,
    };
