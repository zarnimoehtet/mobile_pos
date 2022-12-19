import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import '../../response/file_upload_response.dart';

part 'media_service.g.dart';

@retrofit.RestApi()
abstract class MediaService {
  factory MediaService(Dio dio) = _MediaService;

  @retrofit.POST("/file-space/multiUpload/products")
  Future<FileUploadResponse> uploadFile(
      @retrofit.Part(name: "uploaded_file") File file);
}
