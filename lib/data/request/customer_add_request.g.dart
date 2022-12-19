// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerRequest _$$_CustomerRequestFromJson(Map<String, dynamic> json) =>
    _$_CustomerRequest(
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['description'] as String?,
      json['status'] as String?,
      json['ownerid'] as String?,
      json['address'] as String?,
    );

Map<String, dynamic> _$$_CustomerRequestToJson(_$_CustomerRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'description': instance.desc,
      'status': instance.status,
      'ownerid': instance.ownerId,
      'address': instance.address,
    };
