// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemAddResponseFail _$$ItemAddResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ItemAddResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ItemAddResponseFailToJson(
        _$ItemAddResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ItemAddResponseError _$$ItemAddResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ItemAddResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ItemAddResponseErrorToJson(
        _$ItemAddResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ItemAddResponseSuccess _$$ItemAddResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ItemAddResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      ItemRes.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemAddResponseSuccessToJson(
        _$ItemAddResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.item,
    };

_$ItemListResponseFail _$$ItemListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ItemListResponseFail(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemListResponseFailToJson(
        _$ItemListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.itemList,
    };

_$ItemListResponseError _$$ItemListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ItemListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ItemListResponseErrorToJson(
        _$ItemListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ItemListResponseSuccess _$$ItemListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ItemListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemListResponseSuccessToJson(
        _$ItemListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.itemList,
    };

_$ItemDeleteResponseFail _$$ItemDeleteResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ItemDeleteResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ItemDeleteResponseFailToJson(
        _$ItemDeleteResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ItemDeleteResponseError _$$ItemDeleteResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ItemDeleteResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ItemDeleteResponseErrorToJson(
        _$ItemDeleteResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ItemDeleteResponseSuccess _$$ItemDeleteResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ItemDeleteResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ItemDeleteResponseSuccessToJson(
        _$ItemDeleteResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
