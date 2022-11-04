// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeRequest _$$_EmployeeRequestFromJson(Map<String, dynamic> json) =>
    _$_EmployeeRequest(
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['role'] as String?,
      json['description'] as String?,
      json['status'] as String?,
      json['ownerid'] as String?,
      json['pincode'] as String?,
    );

Map<String, dynamic> _$$_EmployeeRequestToJson(_$_EmployeeRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'description': instance.description,
      'status': instance.status,
      'ownerid': instance.ownerId,
      'pincode': instance.pincode,
    };
