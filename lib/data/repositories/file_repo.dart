import 'dart:io';

import 'package:get/get.dart';
import 'package:mobile_pos/data/model/media.dart';

import '../services/remote/media_service.dart';

abstract class FileRepository {
  Future<Media?> uploadOneFile(File file);
}

class FileRepositoryImpl implements FileRepository {
  static final FileRepositoryImpl _singleton = FileRepositoryImpl._internal();
  FileRepositoryImpl._internal();
  factory FileRepositoryImpl() => _singleton;

  final MediaService remote = Get.find();

  @override
  Future<Media?> uploadOneFile(File file) async {
    var response = await remote.uploadFile(file);
    return response.when<Media>(
      fail: (status, message) => throw message ?? "",
      error: (status, message) => throw message ?? "",
      success: (status, message, filePath) => filePath.first,
    );
  }
}
