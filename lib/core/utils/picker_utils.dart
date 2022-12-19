import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class PickerUtils {
  static final ImagePicker _picker = ImagePicker();

  static Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load('assets/$path');

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }

  static Future<File?> pickFromCamera() async {
    final pickedFile = await _picker.pickImage(
        source: ImageSource.camera, maxHeight: 500, maxWidth: 500);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }

    return null;
  }

  static Future<File?> pickFromGallery() async {
    final pickedFile = await _picker.pickImage(
        source: ImageSource.gallery, maxHeight: 500, maxWidth: 500);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }

    return null;
  }

  static Future<List<File>> pickMultiImages(
      BuildContext context, int maxImage) async {
    final List<AssetEntity>? assets = await AssetPicker.pickAssets(
      context,
      pickerConfig: AssetPickerConfig(
        requestType: RequestType.image,
        maxAssets: maxImage,
        themeColor: POSColor.primaryColorDark,
      ),
    );
    List<Future<File?>> tt =
        assets?.map<Future<File?>>((e) => e.file).toList() ?? [];
    return await Future.wait(tt
        .where((element) => element != Future<File?>(() => null))
        .map((e) async => (await e)!));
  }
}
