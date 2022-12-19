// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExpenseTitleRequest _$$_ExpenseTitleRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ExpenseTitleRequest(
      json['ownerid'] as String?,
      json['name'] as String?,
      json['status'] as String?,
    );

Map<String, dynamic> _$$_ExpenseTitleRequestToJson(
        _$_ExpenseTitleRequest instance) =>
    <String, dynamic>{
      'ownerid': instance.ownerId,
      'name': instance.name,
      'status': instance.status,
    };

_$_ExpenseRequest _$$_ExpenseRequestFromJson(Map<String, dynamic> json) =>
    _$_ExpenseRequest(
      json['ownerid'] as String?,
      json['titleid'] as String?,
      json['amount'] as int?,
      json['description'] as String?,
      json['status'] as String?,
    );

Map<String, dynamic> _$$_ExpenseRequestToJson(_$_ExpenseRequest instance) =>
    <String, dynamic>{
      'ownerid': instance.ownerId,
      'titleid': instance.titleId,
      'amount': instance.amount,
      'description': instance.desc,
      'status': instance.status,
    };
