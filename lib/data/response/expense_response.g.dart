// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseTitleListResponseFail _$$ExpenseTitleListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseTitleListResponseFail(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => ExpenseTitle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExpenseTitleListResponseFailToJson(
        _$ExpenseTitleListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.titleList,
    };

_$ExpenseTitleListResponseError _$$ExpenseTitleListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseTitleListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseTitleListResponseErrorToJson(
        _$ExpenseTitleListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseTitleListResponseSuccess _$$ExpenseTitleListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseTitleListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => ExpenseTitle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExpenseTitleListResponseSuccessToJson(
        _$ExpenseTitleListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.titleList,
    };

_$ExpenseTitleAddResponseFail _$$ExpenseTitleAddResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseTitleAddResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseTitleAddResponseFailToJson(
        _$ExpenseTitleAddResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseTitleAddResponseError _$$ExpenseTitleAddResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseTitleAddResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseTitleAddResponseErrorToJson(
        _$ExpenseTitleAddResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseTitleAddResponseSuccess _$$ExpenseTitleAddResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseTitleAddResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      ExpenseTitleItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExpenseTitleAddResponseSuccessToJson(
        _$ExpenseTitleAddResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.titleItem,
    };

_$ExpenseTitleDeleteResponseFail _$$ExpenseTitleDeleteResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseTitleDeleteResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseTitleDeleteResponseFailToJson(
        _$ExpenseTitleDeleteResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseTitleDeleteResponseError _$$ExpenseTitleDeleteResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseTitleDeleteResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseTitleDeleteResponseErrorToJson(
        _$ExpenseTitleDeleteResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseTitleDeleteResponseSuccess
    _$$ExpenseTitleDeleteResponseSuccessFromJson(Map<String, dynamic> json) =>
        _$ExpenseTitleDeleteResponseSuccess(
          json['status'] as String,
          json['message'] as String?,
        );

Map<String, dynamic> _$$ExpenseTitleDeleteResponseSuccessToJson(
        _$ExpenseTitleDeleteResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseListResponseFail _$$ExpenseListResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseListResponseFail(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Expense.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExpenseListResponseFailToJson(
        _$ExpenseListResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.expenseList,
    };

_$ExpenseListResponseError _$$ExpenseListResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseListResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseListResponseErrorToJson(
        _$ExpenseListResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseListResponseSuccess _$$ExpenseListResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseListResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Expense.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExpenseListResponseSuccessToJson(
        _$ExpenseListResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.expenseList,
    };

_$ExpenseAddResponseFail _$$ExpenseAddResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseAddResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseAddResponseFailToJson(
        _$ExpenseAddResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseAddResponseError _$$ExpenseAddResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseAddResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseAddResponseErrorToJson(
        _$ExpenseAddResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseAddResponseSuccess _$$ExpenseAddResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseAddResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      ExpenseItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExpenseAddResponseSuccessToJson(
        _$ExpenseAddResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.expenseItem,
    };

_$ExpenseDeleteResponseFail _$$ExpenseDeleteResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseDeleteResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseDeleteResponseFailToJson(
        _$ExpenseDeleteResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseDeleteResponseError _$$ExpenseDeleteResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseDeleteResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseDeleteResponseErrorToJson(
        _$ExpenseDeleteResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ExpenseDeleteResponseSuccess _$$ExpenseDeleteResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseDeleteResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$ExpenseDeleteResponseSuccessToJson(
        _$ExpenseDeleteResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
