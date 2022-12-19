import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class POSDateRangePickerDialog extends StatelessWidget {
  final DateRangePickerController controller;
  final Function onConfirm;
  const POSDateRangePickerDialog(this.controller, this.onConfirm, {super.key});
  @override
  Widget build(BuildContext context) {
    controller.selectedRange = null;
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
                  controller: controller,
                  //onSelectionChanged: _onSelectionChanged,
                  selectionColor: POSColor.secondaryColor.withOpacity(0.6),
                  rangeSelectionColor: POSColor.secondaryColor.withOpacity(0.2),
                  selectionMode: DateRangePickerSelectionMode.range,
                  maxDate: DateTime.now(),
                ),
              ),
              RichText(
                text: const TextSpan(
                  style:
                      TextStyle(fontSize: 13, color: POSColor.secondaryColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'From Date',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: POSColor.secondaryColor),
                    ),
                    TextSpan(
                      text: ' နှင့်',
                      style: TextStyle(
                          fontSize: 13, color: POSColor.primaryColorDark),
                    ),
                    TextSpan(
                      text: ' To Date',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: POSColor.secondaryColor),
                    ),
                    TextSpan(
                      text: ' ကိုရွေးချယ်ပြီးမှ',
                      style: TextStyle(
                          fontSize: 13, color: POSColor.primaryColorDark),
                    ),
                    TextSpan(
                      text: ' OK',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: POSColor.primaryColorDark),
                    ),
                    TextSpan(
                      text: ' နှိပ်ပေးပါ',
                      style: TextStyle(
                          fontSize: 13, color: POSColor.primaryColorDark),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'cancel'.tr.toUpperCase(),
                        style:
                            const TextStyle(color: POSColor.primaryColorDark),
                      )),
                  const SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      onTap: () {
                        Get.back();
                        onConfirm();
                      },
                      child: Text(
                        'confrim'.tr.toUpperCase(),
                        style:
                            const TextStyle(color: POSColor.primaryColorDark),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
