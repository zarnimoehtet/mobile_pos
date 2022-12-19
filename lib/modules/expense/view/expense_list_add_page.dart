import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/data/model/expense.dart';
import 'package:mobile_pos/modules/expense/controller/expense_controller.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';

class ExpenseListAddPage extends GetView<ExpenseController> {
  static const String route = "/expense_add";
  const ExpenseListAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setupExpenseEdit();
    return Scaffold(
      appBar: AppBar(
        title: Text(
            controller.isEditExpense.value ? "Edit Expense" : "Add Expense"),
        centerTitle: true,
        actions: [
          controller.isEditExpense.value
              ? IconButton(
                  onPressed: () {
                    controller.onClickDeleteExpense();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: POSColor.primaryColorDark,
                  ))
              : const SizedBox()
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField<ExpenseTitle>(
                value: controller.selectedTitle.value,
                isExpanded: true,
                decoration: normalInputDecoration(
                  hinttext: "Expense Title",
                ),
                items: controller.titleList.map((i) {
                  return DropdownMenuItem<ExpenseTitle>(
                      value: i,
                      child: Text(
                        i.name ?? "",
                        style: const TextStyle(
                          color: POSColor.primaryColorDark,
                        ),
                      ));
                }).toList(),
                onChanged: (v) {
                  controller.selectedTitle.value = v;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.expenseDescController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Amount"),
                controller: controller.expenseAmountController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                cursorColor: POSColor.primaryColorDark,
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // const Divider(
              //   color: Colors.grey,
              // ),
              // const Text(
              //   "Status",
              //   style: TextStyle(
              //       color: POSColor.primaryColorDark,
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold),
              // ),
              // ListTile(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   onTap: () {
              //     controller.expenseActiveStatus.value =
              //         !controller.expenseActiveStatus.value;
              //   },
              //   contentPadding: const EdgeInsets.only(
              //       left: 10, right: 10, top: 0, bottom: 0),
              //   title: const Text(
              //     "Expense Active status",
              //     style:
              //         TextStyle(fontSize: 14, color: POSColor.primaryColorDark),
              //   ),
              //   trailing: Obx(() => Switch(
              //       value: controller.expenseActiveStatus.value,
              //       onChanged: (v) {
              //         controller.expenseActiveStatus.value = v;
              //       })),
              // ),
              const SizedBox(
                height: 70,
              ),
              GradientButton(
                  height: 40,
                  child: Text(
                    "save".tr.toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    if (controller.isEditExpense.value) {
                      controller.updateExpense();
                    } else {
                      controller.addNewExpense();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
