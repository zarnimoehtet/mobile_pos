import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/colors.dart';

InputDecoration borderInputDecoration(Color color,
    {String? hinttext,
    bool alignLabelWithHint = true,
    String? counterText,
    Widget? suffixIcon,
    EdgeInsetsGeometry? padding}) {
  return InputDecoration(
      contentPadding: padding ?? const EdgeInsets.all(10),
      alignLabelWithHint: alignLabelWithHint,
      labelText: alignLabelWithHint ? hinttext : null,
      hintText: alignLabelWithHint ? null : hinttext,
      hintStyle: TextStyle(color: color.withOpacity(0.7)),
      labelStyle: TextStyle(color: color.withOpacity(0.7)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color, width: 1),
      ),
      suffixIcon: suffixIcon,
      counterText: counterText);
}

InputDecoration normalInputDecoration(
    {String? hinttext,
    bool alignLabelWithHint = true,
    String? counterText,
    Widget? suffixIcon,
    EdgeInsetsGeometry? padding}) {
  return InputDecoration(
      contentPadding: padding ?? const EdgeInsets.all(0),
      alignLabelWithHint: alignLabelWithHint,
      labelText: alignLabelWithHint ? hinttext : null,
      hintText: alignLabelWithHint ? null : hinttext,
      hintStyle: const TextStyle(color: POSColor.blackTextColorOp99),
      labelStyle: const TextStyle(color: POSColor.primaryColorDark),
      suffixIcon: suffixIcon,
      counterText: counterText);
}
