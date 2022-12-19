import 'package:intl/intl.dart';

extension NumberX on num {
  String toCurrencyFormat([bool useShopCurrency = false]) {
    var format = NumberFormat.simpleCurrency(
        locale: "en", name: "", decimalDigits: this % 1 == 0 ? 0 : 2);
    String value = format.format(this);
    return value;
  }

  String compactCurrency({int decimal = 0}) {
    // if (this < 1000000000) {
    //   return this.toCurrencyFormat(0);
    // }
    var format = NumberFormat.compactCurrency(
        locale: "en", name: "", decimalDigits: decimal);
    return format.format(this);
  }

  String concateUnit(String unit) {
    if (this <= 1) {
      return "${this} $unit";
    } else {
      return "${this} ${unit}s";
    }
  }

  Duration hourToDuration() {
    double day = this / 24;
    double hour = (day - day.toInt()) * 24;
    double min = (hour - hour.toInt()) * 60;
    double sec = (min - min.toInt()) * 60;
    return Duration(
      days: day.toInt(),
      hours: hour.toInt(),
      minutes: min.toInt(),
      seconds: sec.toInt(),
    );
  }

  Duration daysToDuration() {
    double day = toDouble();
    double hour = (day - day.toInt()) * 24;
    double min = (hour - hour.toInt()) * 60;
    double sec = (min - min.toInt()) * 60;
    return Duration(
      days: day.toInt(),
      hours: hour.toInt(),
      minutes: min.toInt(),
      seconds: sec.toInt(),
    );
  }
}
