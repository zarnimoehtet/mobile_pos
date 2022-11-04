import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile_pos/modules/employees/controllers/employees_controller.dart';

import '../../../core/constants/colors.dart';
import '../../../core/custom/border_input_decoration.dart';
import '../../../core/custom/gradient_button.dart';

class EmployeeEditPage extends GetView<EmployeesController> {
  static const String route = "/employee_edit";
  const EmployeeEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.employeeNameEditController.text =
        controller.editEmployee.value?.name ?? "";
    controller.employeePhoneEditController.text =
        controller.editEmployee.value?.phone ?? "";
    controller.employeeemailEditController.text =
        controller.editEmployee.value?.email ?? "";
    controller.employeePinCodeEditController.text =
        controller.editEmployee.value?.pincode ?? "";
    controller.employeeDescriptionEditController.text =
        controller.editEmployee.value?.description ?? "";
    controller.selectedEditRole.value =
        controller.editEmployee.value?.role ?? "";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Employee"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Employee name"),
                controller: controller.employeeNameEditController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Phone"),
                controller: controller.employeePhoneEditController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Email"),
                controller: controller.employeeemailEditController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.employeeDescriptionEditController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: normalInputDecoration(
                  hinttext: controller.editEmployee.value?.role,
                ),
                items: controller.roles.map((i) {
                  return DropdownMenuItem<String>(
                      value: i,
                      enabled: i != "Owner",
                      child: Text(
                        i,
                        style: TextStyle(
                          color: i == "Owner"
                              ? POSColor.primaryColorDark.withOpacity(0.5)
                              : POSColor.primaryColorDark,
                        ),
                      ));
                }).toList(),
                onChanged: (v) {
                  if (v != "Owner") {
                    controller.selectedEditRole.value = v!;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Pincode"),
                controller: controller.employeePinCodeEditController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                maxLength: 4,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 40,
              ),
              GradientButton(
                  height: 40,
                  child: Text(
                    "Edit Employee".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    controller.updateEmployee();
                  }),
              const SizedBox(
                height: 40,
              ),
              controller.editEmployee.value?.role == "Owner"
                  ? const SizedBox()
                  : GradientButton(
                      height: 40,
                      child: Text(
                        "Delete Employee".toUpperCase(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        controller.deleteEmployee();
                      }),
            ],
          ),
        ),
      ),
    );
  }
}
