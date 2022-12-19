// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/utils/picker_utils.dart';
import 'force_permission_dialog.dart';

void showPickImageDialog({required Function(File) onGetImage}) {
  Get.dialog(Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
          leading: const Icon(Icons.camera_alt_outlined),
          title: Text("choose_from_camera".tr),
          onTap: () async {
            Get.back();
            var status = await Permission.camera.status;
            if (status.isGranted) {
              PickerUtils.pickFromCamera().then((value) {
                if (value != null) {
                  onGetImage(value);
                }
              });
            } else if (status.isDenied) {
              if (await Permission.camera.request().isGranted) {
                PickerUtils.pickFromCamera().then((value) {
                  if (value != null) {
                    onGetImage(value);
                  }
                });
              } else {
                Get.dialog(const ForcePermissionDialog(
                  title: "permission",
                  body: "request_on_camera",
                ));
              }
            } else {
              Get.dialog(const ForcePermissionDialog(
                title: "permission",
                body: "request_on_camera",
              ));
            }
          },
        ),
        const Divider(height: 0),
        ListTile(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          leading: const Icon(Icons.photo_library_outlined),
          title: Text("choose_from_gallery".tr),
          onTap: () async {
            Get.back();
            var status = await Permission.storage.status;
            if (status.isGranted) {
              PickerUtils.pickFromGallery().then((value) {
                if (value != null) {
                  onGetImage(value);
                }
              });
            } else if (status.isDenied) {
              if (await Permission.storage.request().isGranted) {
                PickerUtils.pickFromGallery().then((value) {
                  if (value != null) {
                    onGetImage(value);
                  }
                });
              } else {
                Get.dialog(const ForcePermissionDialog(
                  title: "permission",
                  body: "request_on_storage",
                ));
              }
            } else {
              Get.dialog(const ForcePermissionDialog(
                title: "permission",
                body: "request_on_storage",
              ));
            }
          },
        ),
      ],
    ),
  ));
}

void showPickMultiImageDialog(BuildContext context, int maxImage,
    {required Function(List<File>) onGetImage}) {
  Get.dialog(Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
          leading: const Icon(Icons.camera_alt_outlined),
          title: Text("choose_from_camera".tr),
          onTap: () async {
            Get.back();
            var status = await Permission.camera.status;
            if (status.isGranted) {
              PickerUtils.pickFromCamera().then((value) {
                if (value != null) {
                  onGetImage([value]);
                }
              });
            } else if (status.isDenied) {
              if (await Permission.camera.request().isGranted) {
                PickerUtils.pickFromCamera().then((value) {
                  if (value != null) {
                    onGetImage([value]);
                  }
                });
              } else {
                Get.dialog(const ForcePermissionDialog(
                  title: "permission",
                  body: "request_on_camera",
                ));
              }
            } else {
              Get.dialog(const ForcePermissionDialog(
                title: "permission",
                body: "request_on_camera",
              ));
            }
          },
        ),
        const Divider(height: 0),
        ListTile(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          leading: const Icon(Icons.photo_library_outlined),
          title: Text("choose_from_gallery".tr),
          onTap: () async {
            Get.back();
            var status = await Permission.storage.status;
            if (status.isGranted) {
              PickerUtils.pickMultiImages(context, maxImage).then(onGetImage);
            } else if (status.isDenied) {
              if (await Permission.storage.request().isGranted) {
                PickerUtils.pickMultiImages(context, maxImage).then(onGetImage);
              } else {
                Get.dialog(const ForcePermissionDialog(
                  title: "permission",
                  body: "request_on_storage",
                ));
              }
            } else {
              Get.dialog(const ForcePermissionDialog(
                title: "permission",
                body: "request_on_storage",
              ));
            }
          },
        ),
      ],
    ),
  ));
}
