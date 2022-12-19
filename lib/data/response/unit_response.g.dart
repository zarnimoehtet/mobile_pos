// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitListResponseFail _$$UnitListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$UnitListResponseFail(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Unit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UnitListResponseFailToJson(
        _$UnitListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.unitList,
    };

_$UnitListResponseError _$$UnitListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$UnitListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$UnitListResponseErrorToJson(
        _$UnitListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$UnitListResponseSuccess _$$UnitListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$UnitListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Unit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UnitListResponseSuccessToJson(
        _$UnitListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.unitList,
    };

_$UnitAddResponseFail _$$UnitAddResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$UnitAddResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$UnitAddResponseFailToJson(
        _$UnitAddResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$UnitAddResponseError _$$UnitAddResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$UnitAddResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$UnitAddResponseErrorToJson(
        _$UnitAddResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$UnitAddResponseSuccess _$$UnitAddResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$UnitAddResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      UnitItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnitAddResponseSuccessToJson(
        _$UnitAddResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.unit,
    };

_$UnitDeleteResponseFail _$$UnitDeleteResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$UnitDeleteResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$UnitDeleteResponseFailToJson(
        _$UnitDeleteResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$UnitDeleteResponseError _$$UnitDeleteResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$UnitDeleteResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$UnitDeleteResponseErrorToJson(
        _$UnitDeleteResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$UnitDeleteResponseSuccess _$$UnitDeleteResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$UnitDeleteResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$UnitDeleteResponseSuccessToJson(
        _$UnitDeleteResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
