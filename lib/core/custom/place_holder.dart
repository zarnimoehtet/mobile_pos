import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget getPlaceHolder([dynamic error = ""]) {
  return Container(
    color: Colors.grey.withOpacity(0.3),
    alignment: Alignment.center,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 100,
              maxHeight: 100,
            ),
            child: Icon(
              Icons.photo_outlined,
              size: 30,
              color: Colors.grey.withOpacity(0.5),
            ),
            //  Image.asset(
            //   "assets/logos/Tun-yat-Logo-Eng_cut.png",
            //   color: Colors.grey,
            // ),
          ),
        ),
        if (kDebugMode && error.toString().isNotEmpty)
          Text(
            error.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red, fontSize: 12),
            maxLines: 2,
          ),
      ],
    ),
  );
}

Widget getAddPlaceHolder([dynamic error = ""]) {
  return Container(
    color: Colors.grey.withOpacity(0.3),
    alignment: Alignment.center,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 100,
              maxHeight: 100,
            ),
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.grey.withOpacity(0.5),
            ),
            //  Image.asset(
            //   "assets/logos/Tun-yat-Logo-Eng_cut.png",
            //   color: Colors.grey,
            // ),
          ),
        ),
        if (kDebugMode && error.toString().isNotEmpty)
          Text(
            error.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red, fontSize: 12),
            maxLines: 2,
          ),
      ],
    ),
  );
}
