import 'package:get/get.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String toFormat(String format, {bool useCurrentLocale = true}) {
    DateFormat dateFormat =
        DateFormat(format, useCurrentLocale ? Get.locale?.toString() : null);
    return dateFormat.format(this);
  }

  String concatWithTime(String time) =>
      "${DateFormat("yyyy-MM-dd").format(this)}T${DateFormat("HH:mm:ss").format(DateFormat("hh:mm a").parse(time))}Z";

  bool get isToday => DateTime.now().difference(this).inDays == 0;
}
