import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/expense/controller/expense_controller.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';

class ExpenseTitleAddPage extends GetView<ExpenseController> {
  static const String route = "/expense-title-add";
  const ExpenseTitleAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setupExpenseTitleEdit();
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.isEditExpenseTitle.value
            ? "Edit Expense Title"
            : "Add Expense Title"),
        centerTitle: true,
        actions: [
          controller.isEditExpenseTitle.value
              ? IconButton(
                  onPressed: () {
                    controller.onClickDeleteExpenseTitle();
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
              TextFormField(
                decoration:
                    normalInputDecoration(hinttext: "Expense Title name"),
                controller: controller.expenseTitleNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
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
              //     controller.expenseTitleActiveStatus.value =
              //         !controller.expenseTitleActiveStatus.value;
              //   },
              //   contentPadding: const EdgeInsets.only(
              //       left: 10, right: 10, top: 0, bottom: 0),
              //   title: const Text(
              //     "Expense Title Active status",
              //     style:
              //         TextStyle(fontSize: 14, color: POSColor.primaryColorDark),
              //   ),
              //   trailing: Obx(() => Switch(
              //       value: controller.expenseTitleActiveStatus.value,
              //       onChanged: (v) {
              //         controller.expenseTitleActiveStatus.value = v;
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
                    if (controller.isEditExpenseTitle.value) {
                      controller.updateExpenseTitle();
                    } else {
                      controller.addNewExpenseTitle();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
