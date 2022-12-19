// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/media.dart';

part 'file_upload_response.freezed.dart';
part 'file_upload_response.g.dart';

@Freezed(unionKey: "status")
class FileUploadResponse with _$FileUploadResponse {
  const factory FileUploadResponse.fail(
    String status,
    String? message,
  ) = FileUploadResponseFail;

  const factory FileUploadResponse.error(
    String status,
    String? message,
  ) = FileUploadResponseError;

  const factory FileUploadResponse.success(
    String status,
    String? message,
    @JsonKey(name: "data") List<Media> filePath,
  ) = FileUploadResponseSuccess;

  factory FileUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseFromJson(json);
}
