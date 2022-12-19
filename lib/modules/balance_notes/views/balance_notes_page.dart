import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/balance_notes/controllers/balance_controller.dart';
import 'package:mobile_pos/modules/balance_notes/views/payable_page.dart';
import 'package:mobile_pos/modules/balance_notes/views/receivable_page.dart';

import '../../../../core/constants/colors.dart';

class BalanceNotesPage extends GetView<BalanceNoteController> {
  static const String route = "/balance";
  const BalanceNotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          heroTag:
              controller.tabIndex.value == 0 ? "Add Receivable" : "Add Payable",
          onPressed: () {},
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            PageView(
                controller: controller.pageController,
                onPageChanged: ((value) => controller.tabIndex.value = value),
                children: const [ReceivablePage(), PayablePage()]),
            _filter(context),
          ],
        ));
  }

  Widget _filter(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8, left: 10, right: 10),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Obx(() => Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () async {
                  controller.changePage(0);
                },
                child: Container(
                  width: (Get.width - 20) * 0.48,
                  margin: const EdgeInsets.all(3),
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 6, right: 6),
                  decoration: BoxDecoration(
                      color: controller.tabIndex.value == 0
                          ? POSColor.primaryColorDark
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "Receivable",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: controller.tabIndex.value == 0
                            ? Colors.white
                            : POSColor.primaryColorDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  controller.changePage(1);
                },
                child: Container(
                  width: (Get.width - 20) * 0.48,
                  margin: const EdgeInsets.all(3),
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 6, right: 6),
                  decoration: BoxDecoration(
                      color: controller.tabIndex.value == 1
                          ? POSColor.primaryColorDark
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "Payable",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: controller.tabIndex.value == 1
                            ? Colors.white
                            : POSColor.primaryColorDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
