import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class POSDatePickerDialog extends StatefulWidget {
  final TextEditingController typeController;
  final bool isDob;
  final List<DateTime> specialDates;
  const POSDatePickerDialog(
      {Key? key,
      required this.typeController,
      this.isDob = false,
      required this.specialDates})
      : super(key: key);

  @override
  State<POSDatePickerDialog> createState() => _POSDatePickerDialogState();
}

class _POSDatePickerDialogState extends State<POSDatePickerDialog> {
  DateRangePickerController datePickerController = DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      content: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.4,
                ),
                child: SfDateRangePicker(
                  selectableDayPredicate: (d) {
                    return isNotSpecialDate(d);
                  },
                  showNavigationArrow: true,
                  todayHighlightColor: POSColor.secondaryColor,
                  controller: datePickerController,
                  //onSelectionChanged: _onSelectionChanged,
                  selectionColor: POSColor.primaryColorDark,
                  selectionShape: DateRangePickerSelectionShape.circle,

                  rangeSelectionColor:
                      POSColor.primaryColorDark.withOpacity(0.2),
                  selectionMode: DateRangePickerSelectionMode.single,
                  initialSelectedDate: DateTime.now(),

                  monthCellStyle: const DateRangePickerMonthCellStyle(
                      specialDatesTextStyle:
                          TextStyle(color: Colors.red, fontSize: 14),
                      cellDecoration: _MonthCellDecoration(
                          backgroundColor: Colors.white,
                          showIndicator: false,
                          indicatorColor: Colors.red),
                      specialDatesDecoration: _MonthCellDecoration(
                          backgroundColor: Colors.white,
                          showIndicator: true,
                          indicatorColor: Colors.red)),
                  minDate: widget.isDob ? DateTime(1900) : DateTime.now(),

                  monthViewSettings: DateRangePickerMonthViewSettings(
                    firstDayOfWeek: 1,
                    viewHeaderStyle: const DateRangePickerViewHeaderStyle(
                        textStyle: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    dayFormat: 'EE',
                    specialDates: widget.specialDates,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Text(
                      "cancel".tr,
                      style: const TextStyle(color: POSColor.primaryColorDark),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      widget.typeController.text = DateFormat("dd-MM-yyyy")
                          .format(datePickerController.selectedDate!);
                    },
                    child: Text(
                      "confirm".tr,
                      style: const TextStyle(color: POSColor.primaryColorDark),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isNotSpecialDate(DateTime date) {
    for (int j = 0; j < widget.specialDates.length; j++) {
      if (date.year == widget.specialDates[j].year &&
          date.month == widget.specialDates[j].month &&
          date.day == widget.specialDates[j].day) {
        return false;
      }
    }
    return true;
  }
}

class _MonthCellDecoration extends Decoration {
  const _MonthCellDecoration(
      {this.borderColor,
      this.backgroundColor,
      required this.showIndicator,
      this.indicatorColor});

  final Color? borderColor;
  final Color? backgroundColor;
  final bool showIndicator;
  final Color? indicatorColor;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MonthCellDecorationPainter(
        borderColor: borderColor,
        backgroundColor: backgroundColor,
        showIndicator: showIndicator,
        indicatorColor: indicatorColor);
  }
}

/// [_MonthCellDecorationPainter] used to paint month cell decoration.
class _MonthCellDecorationPainter extends BoxPainter {
  _MonthCellDecorationPainter(
      {this.borderColor,
      this.backgroundColor,
      required this.showIndicator,
      this.indicatorColor});

  final Color? borderColor;
  final Color? backgroundColor;
  final bool showIndicator;
  final Color? indicatorColor;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect bounds = offset & configuration.size!;
    _drawDecoration(canvas, bounds);
  }

  void _drawDecoration(Canvas canvas, Rect bounds) {
    final Paint paint = Paint()..color = backgroundColor!;
    canvas.drawRRect(
        RRect.fromRectAndRadius(bounds, const Radius.circular(5)), paint);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    if (borderColor != null) {
      paint.color = borderColor!;
      canvas.drawRRect(
          RRect.fromRectAndRadius(bounds, const Radius.circular(5)), paint);
    }

    if (showIndicator) {
      paint.color = indicatorColor!;
      paint.style = PaintingStyle.fill;
      canvas.drawCircle(Offset(bounds.right - 6, bounds.top + 6), 2.5, paint);
    }
  }
}
