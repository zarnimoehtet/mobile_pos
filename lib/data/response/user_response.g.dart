// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseFail _$$UserResponseFailFromJson(Map<String, dynamic> json) =>
    _$UserResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$UserResponseFailToJson(_$UserResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$UserResponseError _$$UserResponseErrorFromJson(Map<String, dynamic> json) =>
    _$UserResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$UserResponseErrorToJson(_$UserResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$UserResponseSuccess _$$UserResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserResponseSuccessToJson(
        _$UserResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.users,
    };
