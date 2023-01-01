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

_$SaleListResponseFail _$$SaleListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$SaleListResponseFail(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Invoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SaleListResponseFailToJson(
        _$SaleListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.saleList,
    };

_$SaleListResponseError _$$SaleListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$SaleListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SaleListResponseErrorToJson(
        _$SaleListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SaleListResponseSuccess _$$SaleListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$SaleListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Invoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SaleListResponseSuccessToJson(
        _$SaleListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.saleList,
    };
