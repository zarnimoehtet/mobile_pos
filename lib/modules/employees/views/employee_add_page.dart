import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile_pos/modules/employees/controllers/employees_controller.dart';

import '../../../core/constants/colors.dart';
import '../../../core/custom/border_input_decoration.dart';
import '../../../core/custom/gradient_button.dart';

class EmployeeAddPage extends GetView<EmployeesController> {
  static const String route = "/employee_add";
  const EmployeeAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Employee"),
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
                controller: controller.employeeNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Phone"),
                controller: controller.employeePhoneController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Email"),
                controller: controller.employeeemailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.employeeDescriptionController,
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
                  hinttext: "Choose roles",
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
                    controller.selectedRole.value = v!;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Pincode"),
                controller: controller.employeePinCodeController,
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
                    "Add Employee".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    controller.addEmployee();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
