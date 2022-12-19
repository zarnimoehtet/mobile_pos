// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileUploadResponseFail _$$FileUploadResponseFailFromJson(
        Map<String, dynamic> json) =>
    _$FileUploadResponseFail(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$FileUploadResponseFailToJson(
        _$FileUploadResponseFail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$FileUploadResponseError _$$FileUploadResponseErrorFromJson(
        Map<String, dynamic> json) =>
    _$FileUploadResponseError(
      json['status'] as String,
      json['message'] as String?,
    );

Map<String, dynamic> _$$FileUploadResponseErrorToJson(
        _$FileUploadResponseError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$FileUploadResponseSuccess _$$FileUploadResponseSuccessFromJson(
        Map<String, dynamic> json) =>
    _$FileUploadResponseSuccess(
      json['status'] as String,
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FileUploadResponseSuccessToJson(
        _$FileUploadResponseSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.filePath,
    };
