import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/expense/controller/expense_controller.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/date_range_picker_dialog.dart';
import '../../../../data/model/expense.dart';
import '../../home/views/home_page.dart';
import 'expense_list_add_page.dart';
import 'expense_page.dart';

class ExpenseListPage extends GetView<ExpenseController> {
  static const String route = "/expense-list";
  const ExpenseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.resetDate();
    controller.generateItemFilter();
    controller.fetchExpenses(0);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Expense List"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.editExpense.value = null;
            controller.isEditExpense.value = false;
            Get.toNamed(
                HomePage.route + ExpensePage.route + ExpenseListAddPage.route);
          },
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            RefreshIndicator(
              onRefresh: () async {
                controller.fetchExpenses(0);
              },
              child: Obx(() {
                if (controller.isLoading.value &&
                    controller.expenseList.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          POSColor.primaryColorDark),
                    ),
                  );
                } else if (controller.error.value?.isNotEmpty ?? false) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 20),
                    child: Text(
                      controller.error.value.toString(),
                      textAlign: TextAlign.center,
                    ),
                  );
                } else {
                  return ListView.builder(
                    controller: controller.listScrollController,
                    shrinkWrap: true,
                    itemCount: controller.expenseList.length,
                    itemBuilder: (context, index) {
                      return expensetItems(
                          controller.expenseList[index], index == 0);
                    },
                  );
                }
              }),
            ),
            _filter(context)
          ],
        ));
  }

  Widget expensetItems(Expense unit, bool isFirst) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: isFirst
            ? const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 120)
            : const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
        child: ListTile(
          onTap: () {
            controller.editExpense.value = unit;
            controller.isEditExpense.value = true;
            Get.toNamed(
                HomePage.route + ExpensePage.route + ExpenseListAddPage.route);
          },
          title: Text(
            unit.title?.name ?? "",
            style: const TextStyle(
                color: POSColor.primaryColorDark,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            unit.desc ?? "",
            style:
                const TextStyle(color: POSColor.primaryColorDark, fontSize: 12),
          ),
          trailing: Text(
            "${unit.amount ?? 0} MMK",
            style:
                const TextStyle(color: POSColor.primaryColorDark, fontSize: 14),
          ),
        ));
  }

  Widget _filter(BuildContext context) {
    return Stack(
      children: [
        Card(
            margin: const EdgeInsets.only(top: 8, left: 10, right: 10),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => POSDateRangePickerDialog(
                            controller.datePickerController, () {
                          controller.updateDate();
                        }));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 60, bottom: 10, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/calender.svg',
                            width: 20,
                            height: 20,
                            color: POSColor.primaryColorDark),
                        const SizedBox(
                          width: 10,
                        ),
                        Obx(() => Text(
                              "${controller.fromDate}",
                              style: const TextStyle(
                                  color: POSColor.primaryColorDark),
                            )),
                      ],
                    ),
                    SvgPicture.asset('assets/svg/arrow.svg',
                        width: 10,
                        height: 10,
                        color: POSColor.primaryColorDark),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/calender.svg',
                            width: 20,
                            height: 20,
                            color: POSColor.primaryColorDark),
                        const SizedBox(
                          width: 10,
                        ),
                        Obx(() => Text(
                              "${controller.toDate}",
                              style: const TextStyle(
                                  color: POSColor.primaryColorDark),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )),
        Obx(
          () => Card(
            margin: const EdgeInsets.only(top: 8, left: 10, right: 10),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: DropdownButtonFormField<String>(
              borderRadius: BorderRadius.circular(10),
              value: controller.selectedFilter.value,
              decoration: normalInputDecoration(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  hinttext: controller.itemFilter.first,
                  color: POSColor.primaryColorDark,
                  alignLabelWithHint: false,
                  enableUnderLine: true),
              isExpanded: true,
              items: controller.itemFilter.map((i) {
                return DropdownMenuItem<String>(
                    value: i,
                    child: Text(
                      i,
                      style: const TextStyle(
                        color: POSColor.primaryColorDark,
                      ),
                    ));
              }).toList(),
              onChanged: (v) {
                controller.selectedFilter.value = v ?? "";
              },
            ),
          ),
        ),
      ],
    );
  }
}
