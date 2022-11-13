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
