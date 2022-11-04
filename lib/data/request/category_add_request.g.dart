// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryAddRequest _$$_CategoryAddRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryAddRequest(
      json['ownerid'] as String?,
      json['name'] as String?,
      json['color'] as String?,
      json['description'] as String?,
      json['status'] as bool?,
    );

Map<String, dynamic> _$$_CategoryAddRequestToJson(
        _$_CategoryAddRequest instance) =>
    <String, dynamic>{
      'ownerid': instance.ownerid,
      'name': instance.name,
      'color': instance.color,
      'description': instance.description,
      'status': instance.status,
    };
