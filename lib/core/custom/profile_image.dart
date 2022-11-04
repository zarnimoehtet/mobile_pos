import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:mobile_pos/core/constants/colors.dart';

class ProfileImage extends StatelessWidget {
  final String url;
  final File? file;
  final Size? size;
  final int borderWidth;
  final Widget? icon;
  final Callback? onTap;
  const ProfileImage(this.url,
      {Key? key,
      this.file,
      this.size,
      this.borderWidth = 2,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size?.width ?? 80,
      height: size?.height ?? 80,
      decoration: BoxDecoration(
          gradient: POSColor.primaryGradientColorLR,
          borderRadius: BorderRadius.circular(75)),
      alignment: Alignment.center,
      child: Container(
        width: ((size?.width ?? 80) - borderWidth),
        height: ((size?.height ?? 80) - borderWidth),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: Builder(builder: (context) {
            if (file != null) {
              return Image.file(
                file!,
                width: ((size?.width ?? 80) - borderWidth),
                height: ((size?.height ?? 80) - borderWidth),
                fit: BoxFit.cover,
              );
            }
            return url.startsWith("http")
                ? CachedNetworkImage(
                    width: ((size?.width ?? 80) - borderWidth),
                    height: ((size?.height ?? 80) - borderWidth),
                    fit: BoxFit.cover,
                    imageUrl: url,
                    placeholder: (context, url) =>
                        Image.asset("assets/images/profile@3x.png"),
                    errorWidget: (context, url, error) =>
                        Image.asset("assets/images/profile@3x.png"),
                  )
                : Image.asset(
                    url.startsWith("assets")
                        ? url
                        : "assets/images/profile@3x.png",
                    width: ((size?.width ?? 80) - borderWidth),
                    height: ((size?.height ?? 80) - borderWidth),
                    fit: BoxFit.cover,
                  );
          }),
        ),
      ),
    );
  }
}
