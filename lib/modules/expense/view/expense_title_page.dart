import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/expense.dart';
import 'package:mobile_pos/modules/expense/controller/expense_controller.dart';
import 'package:mobile_pos/modules/expense/view/expense_page.dart';
import 'package:mobile_pos/modules/expense/view/expense_title_add_page.dart';

import '../../../../core/constants/colors.dart';
import '../../home/views/home_page.dart';

class ExpenseTitleListPage extends GetView<ExpenseController> {
  static const String route = "/expense-titles";
  const ExpenseTitleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fetchExpenseTitles(0);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Expense Titles"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.editExpenseTitle.value = null;
            controller.isEditExpenseTitle.value = false;
            Get.toNamed(
                HomePage.route + ExpensePage.route + ExpenseTitleAddPage.route);
          },
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.fetchExpenseTitles(0);
          },
          child: Obx(() {
            if (controller.isLoading.value && controller.titleList.isEmpty) {
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
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Text(
                  controller.error.value.toString(),
                  textAlign: TextAlign.center,
                ),
              );
            } else {
              return ListView.builder(
                controller: controller.titleScrollController,
                itemCount: controller.titleList.length,
                itemBuilder: (context, index) {
                  return expensetTileItems(
                      controller.titleList[index], index == 0);
                },
              );
            }
          }),
        ));
  }

  Widget expensetTileItems(ExpenseTitle unit, bool isFirst) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: isFirst
            ? const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 10)
            : const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
        child: ListTile(
          onTap: () {
            controller.editExpenseTitle.value = unit;
            controller.isEditExpenseTitle.value = true;
            Get.toNamed(
                HomePage.route + ExpensePage.route + ExpenseTitleAddPage.route);
          },
          title: Text(
            unit.name ?? "",
            style:
                const TextStyle(color: POSColor.primaryColorDark, fontSize: 16),
          ),
          // subtitle: Text(
          //   unit.desc ?? "",
          //   style: const TextStyle(color: POSColor.textColor, fontSize: 12),
          // ),
        ));
  }
}
