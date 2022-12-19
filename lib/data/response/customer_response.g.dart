// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerListResponseFail _$$CustomerListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$CustomerListResponseFail(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerListResponseFailToJson(
        _$CustomerListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.customerList,
    };

_$CustomerListResponseError _$$CustomerListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$CustomerListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CustomerListResponseErrorToJson(
        _$CustomerListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CustomerListResponseSuccess _$$CustomerListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$CustomerListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerListResponseSuccessToJson(
        _$CustomerListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.customerList,
    };

_$CustomerAddResponseFail _$$CustomerAddResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$CustomerAddResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CustomerAddResponseFailToJson(
        _$CustomerAddResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CustomerAddResponseError _$$CustomerAddResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$CustomerAddResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CustomerAddResponseErrorToJson(
        _$CustomerAddResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CustomerAddResponseSuccess _$$CustomerAddResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$CustomerAddResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      CustomerItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerAddResponseSuccessToJson(
        _$CustomerAddResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.customer,
    };

_$CustomerDeleteResponseFail _$$CustomerDeleteResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$CustomerDeleteResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CustomerDeleteResponseFailToJson(
        _$CustomerDeleteResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CustomerDeleteResponseError _$$CustomerDeleteResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$CustomerDeleteResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CustomerDeleteResponseErrorToJson(
        _$CustomerDeleteResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CustomerDeleteResponseSuccess _$$CustomerDeleteResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$CustomerDeleteResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CustomerDeleteResponseSuccessToJson(
        _$CustomerDeleteResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
