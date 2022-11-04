// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeListResponseFail _$$EmployeeListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeListResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$EmployeeListResponseFailToJson(
        _$EmployeeListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$EmployeeListResponseError _$$EmployeeListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$EmployeeListResponseErrorToJson(
        _$EmployeeListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$EmployeeListResponseSuccess _$$EmployeeListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => EmployeeItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmployeeListResponseSuccessToJson(
        _$EmployeeListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.empList,
    };

_$EmployeeAddResponseFail _$$EmployeeAddResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeAddResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$EmployeeAddResponseFailToJson(
        _$EmployeeAddResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$EmployeeAddResponseError _$$EmployeeAddResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeAddResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$EmployeeAddResponseErrorToJson(
        _$EmployeeAddResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$EmployeeAddResponseSuccess _$$EmployeeAddResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeAddResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      Employee.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EmployeeAddResponseSuccessToJson(
        _$EmployeeAddResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.employee,
    };

_$EmployeeDeleteResponseFail _$$EmployeeDeleteResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeDeleteResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$EmployeeDeleteResponseFailToJson(
        _$EmployeeDeleteResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$EmployeeDeleteResponseError _$$EmployeeDeleteResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeDeleteResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$EmployeeDeleteResponseErrorToJson(
        _$EmployeeDeleteResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$EmployeeDeleteResponseSuccess _$$EmployeeDeleteResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeDeleteResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$EmployeeDeleteResponseSuccessToJson(
        _$EmployeeDeleteResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
