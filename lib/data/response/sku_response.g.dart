// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sku_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SKUResponseFail _$$SKUResponseFailFromJson(Map<String, dynamic> json) =>
    _$SKUResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SKUResponseFailToJson(_$SKUResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SKUResponseError _$$SKUResponseErrorFromJson(Map<String, dynamic> json) =>
    _$SKUResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SKUResponseErrorToJson(_$SKUResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SKUResponseSuccess _$$SKUResponseSuccessFromJson(Map<String, dynamic> json) =>
    _$SKUResponseSuccess(
      json['status'] as String,
      json['data'] as String?,
    );

Map<String, dynamic> _$$SKUResponseSuccessToJson(
        _$SKUResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
