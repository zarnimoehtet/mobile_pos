import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

extension StringExtension on String {
  Color toColor() {
    var hexColor = toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  DateTime toDateTime(
      {String format = "yyyy-MM-dd'T'HH:mm:ss.SSSZ", bool isUTC = true}) {
    var dateFormat = DateFormat(format);
    return dateFormat.parse(this, isUTC).toLocal();
  }

  String concatWithCountryCodePhone(String? countryCode) {
    if (countryCode == null) {
      return this;
    }
    var phone = startsWith("09")
        ? "${countryCode}9${substring(2)}"
        : startsWith("9")
            ? "$countryCode$this"
            : this;
    return phone;
  }

  String toFirstCharUpperCase() {
    if (isNotEmpty) {
      return replaceFirst(this[0], this[0].toUpperCase());
    }
    return "";
  }

  String toMMNumString() {
    if (Get.locale == const Locale("my", "MM")) {
      var codes = codeUnits.map((e) {
        if (e >= 48 && e <= 57) {
          return e + 4112;
        }
        return e;
      });
      return String.fromCharCodes(codes);
    }
    return this;
  }

  bool get isRealPhoneNumber =>
      RegExp(r'(^(?:[+0]9)?[0-9]{8,12}$)').hasMatch(this);

  String withCountryCode(String? countryCode) {
    if (countryCode == null) {
      return this;
    }
    if (startsWith("0")) {
      return replaceFirst("0", countryCode);
    } else {
      return "$countryCode${replaceFirst(countryCode, "")}";
    }
  }
}
