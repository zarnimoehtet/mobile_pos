import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:mobile_pos/data/model/sale.dart';
import 'package:mobile_pos/modules/receipts/controllers/receipts_controller.dart';

import 'package:mobile_pos/core/extensions/extension_collection.dart';
import '../../../../core/constants/colors.dart';

class ReceiptsPage extends GetView<ReceiptsController> {
  static const String route = "/receipts";
  const ReceiptsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fetchInvoice(0);
    return Scaffold(
        body: RefreshIndicator(
      onRefresh: () async {
        controller.fetchInvoice(0);
      },
      child: Obx(() {
        if (controller.isLoading.value && controller.invoiceList.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(POSColor.primaryColorDark),
            ),
          );
        } else if (controller.error.value?.isNotEmpty ?? false) {
          return Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Text(
              controller.error.value.toString(),
              textAlign: TextAlign.center,
            ),
          );
        } else {
          return GroupedListView<Invoice, String>(
            controller: controller.scrollController,
            elements: controller.invoiceList.toList(),
            groupBy: (element) {
              var e = element.createdAt!;
              var d = e.substring(0, 9);
              return d;
            },
            groupComparator: (value1, value2) => value1.compareTo(value2),
            itemComparator: (item1, item2) =>
                item1.createdAt!.compareTo(item2.createdAt!),
            order: GroupedListOrder.DESC,
            groupSeparatorBuilder: (String value) => Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Text(
                value
                    .toDateTime(format: "yyyy-MM-dd")
                    .toFormat("EEEE, dd MMMM yyyy", useCurrentLocale: false),
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: POSColor.primaryColorDark),
              ),
            ),
            separator: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                color: Colors.grey.shade300,
                height: 1,
              ),
            ),
            itemBuilder: (c, element) {
              return ListTile(
                onTap: () {
                  // controller.isEmpEdit.value = true;
                  // controller.editEmployee.value = element;
                  // Get.toNamed(HomePage.route +
                  //     EmployeesPage.route +
                  //     EmployeeAddPage.route);
                },
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                leading: SvgPicture.asset(
                  'assets/svg/receipt.svg',
                  height: 20,
                  color: POSColor.primaryColorDark,
                ),
                title: Text(
                  "MMK ${element.totalAmount?.toCurrencyFormat()}",
                  style: const TextStyle(
                      fontSize: 15, color: POSColor.primaryColorDark),
                ),
                subtitle: Text(
                  element.createdAt
                          ?.toDateTime()
                          .toFormat("hh:mm a", useCurrentLocale: false) ??
                      "",
                  style: const TextStyle(
                      fontSize: 12, color: POSColor.primaryColorDark),
                ),
                trailing: Text(
                  element.code ?? "",
                  style: const TextStyle(
                      fontSize: 12, color: POSColor.primaryColorDark),
                ),
              );
            },
          );
        }
      }),
    ));
  }
}
