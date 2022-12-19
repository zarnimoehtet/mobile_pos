// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleResponseFail _$$SaleResponseFailFromJson(Map<String, dynamic> json) =>
    _$SaleResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SaleResponseFailToJson(_$SaleResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SaleResponseError _$$SaleResponseErrorFromJson(Map<String, dynamic> json) =>
    _$SaleResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SaleResponseErrorToJson(_$SaleResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SaleResponseSuccess _$$SaleResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$SaleResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      json['data'] == null
          ? null
          : Sale.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SaleResponseSuccessToJson(
        _$SaleResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.saleData,
    };
