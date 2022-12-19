// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_add_resquest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnitAddRequest _$$_UnitAddRequestFromJson(Map<String, dynamic> json) =>
    _$_UnitAddRequest(
      json['ownerid'] as String?,
      json['name'] as String?,
      json['description'] as String?,
      json['status'] as String?,
    );

Map<String, dynamic> _$$_UnitAddRequestToJson(_$_UnitAddRequest instance) =>
    <String, dynamic>{
      'ownerid': instance.ownerId,
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
    };
