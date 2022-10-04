import 'package:flutter/material.dart';

class POSColor {
  static const Color primaryColorDark = Color(0xFF512da8);
  static const Color primaryColorDarkDisable = Color(0xFF512da8);
  static const Color textColor = Color(0xFF272d37);
  static const Color blackTextColorOp99 = Color(0x99000000);

  static const Gradient primaryGradientColorBT = LinearGradient(
    colors: [
      Color(0xFF512da8),
      Color(0xFF8559da),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
  static const Gradient primaryGradientColorLR = LinearGradient(
    colors: [
      Color(0xFF512da8),
      Color(0xFF8559da),
    ],
  );
  static const Color secondaryColor = Color(0xFF8559da);
  static const Gradient secondaryGradientColor = LinearGradient(colors: [
    Color(0xFF512da8),
    Color(0xFF8559da),
  ]);
}
