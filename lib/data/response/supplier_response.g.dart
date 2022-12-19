// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupplierListResponseFail _$$SupplierListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$SupplierListResponseFail(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Supplier.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SupplierListResponseFailToJson(
        _$SupplierListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.supplierList,
    };

_$SupplierListResponseError _$$SupplierListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$SupplierListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SupplierListResponseErrorToJson(
        _$SupplierListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SupplierListResponseSuccess _$$SupplierListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$SupplierListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Supplier.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SupplierListResponseSuccessToJson(
        _$SupplierListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.supplierList,
    };

_$SupplierAddResponseFail _$$SupplierAddResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$SupplierAddResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SupplierAddResponseFailToJson(
        _$SupplierAddResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SupplierAddResponseError _$$SupplierAddResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$SupplierAddResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SupplierAddResponseErrorToJson(
        _$SupplierAddResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SupplierAddResponseSuccess _$$SupplierAddResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$SupplierAddResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      SupplierItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupplierAddResponseSuccessToJson(
        _$SupplierAddResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.supplier,
    };

_$SupplierDeleteResponseFail _$$SupplierDeleteResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$SupplierDeleteResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SupplierDeleteResponseFailToJson(
        _$SupplierDeleteResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SupplierDeleteResponseError _$$SupplierDeleteResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$SupplierDeleteResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SupplierDeleteResponseErrorToJson(
        _$SupplierDeleteResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$SupplierDeleteResponseSuccess _$$SupplierDeleteResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$SupplierDeleteResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SupplierDeleteResponseSuccessToJson(
        _$SupplierDeleteResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
