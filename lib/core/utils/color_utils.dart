import 'dart:ui';

class POSColorUtils {
  static Color getColor(String colorCode) {
    return Color(int.parse(colorCode.replaceAll("#", "0xFF")));
  }
}
