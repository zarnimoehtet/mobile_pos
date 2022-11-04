import 'package:flutter/material.dart';

class POSColor {
  static const Color primaryColorDark = Color(0xFF043b5c);
  static const Color primaryColorDarkDisable = Color(0xFF043b5c);
  static const Color textColor = Color(0xFF272d37);
  static const Color blackTextColorOp99 = Color(0x99000000);

  static const Gradient primaryGradientColorBT = LinearGradient(
    colors: [
      Color(0xFF043b5c),
      Color.fromARGB(255, 6, 74, 116),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
  static const Gradient primaryGradientColorLR = LinearGradient(
    colors: [
      Color(0xFF043b5c),
      Color.fromARGB(255, 6, 74, 116),
    ],
  );
  static const Color secondaryColor = Color(0xFFcf2f74);
  static const Gradient secondaryGradientColor = LinearGradient(colors: [
    Color(0xFF043b5c),
    Color.fromARGB(255, 6, 74, 116),
  ]);
}
