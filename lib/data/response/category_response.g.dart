// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListResponseFail _$$CategoryListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListResponseFail(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryListResponseFailToJson(
        _$CategoryListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.categoryList,
    };

_$CategoryListResponseError _$$CategoryListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryListResponseErrorToJson(
        _$CategoryListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CategoryListResponseSuccess _$$CategoryListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryListResponseSuccessToJson(
        _$CategoryListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.categoryList,
    };

_$CategoryAddResponseFail _$$CategoryAddResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$CategoryAddResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryAddResponseFailToJson(
        _$CategoryAddResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CategoryAddResponseError _$$CategoryAddResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$CategoryAddResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryAddResponseErrorToJson(
        _$CategoryAddResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CategoryAddResponseSuccess _$$CategoryAddResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$CategoryAddResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      CategoryItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryAddResponseSuccessToJson(
        _$CategoryAddResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.category,
    };

_$CategoryUpdateResponseFail _$$CategoryUpdateResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$CategoryUpdateResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryUpdateResponseFailToJson(
        _$CategoryUpdateResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CategoryUpdateResponseError _$$CategoryUpdateResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$CategoryUpdateResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryUpdateResponseErrorToJson(
        _$CategoryUpdateResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CategoryUpdateResponseSuccess _$$CategoryUpdateResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$CategoryUpdateResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      CategoryItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryUpdateResponseSuccessToJson(
        _$CategoryUpdateResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.category,
    };

_$CategoryDeleteResponseFail _$$CategoryDeleteResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDeleteResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryDeleteResponseFailToJson(
        _$CategoryDeleteResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CategoryDeleteResponseError _$$CategoryDeleteResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDeleteResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryDeleteResponseErrorToJson(
        _$CategoryDeleteResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CategoryDeleteResponseSuccess _$$CategoryDeleteResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDeleteResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryDeleteResponseSuccessToJson(
        _$CategoryDeleteResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
