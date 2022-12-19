import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile_pos/modules/employees/controllers/employees_controller.dart';

import '../../../core/constants/colors.dart';
import '../../../core/custom/border_input_decoration.dart';
import '../../../core/custom/date_picker_dialog.dart';
import '../../../core/custom/gradient_button.dart';

class EmployeeAddPage extends GetView<EmployeesController> {
  static const String route = "/employee_add";
  const EmployeeAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setupEmpEdit();
    return Scaffold(
      appBar: AppBar(
          title: Text(
              controller.isEmpEdit.value ? "Edit Employee" : "Add Employee"),
          centerTitle: true,
          actions: [
            controller.isEmpEdit.value
                ? IconButton(
                    onPressed: () {
                      controller.deleteEmployee();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: POSColor.primaryColorDark,
                    ))
                : const SizedBox()
          ]),
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
                decoration: normalInputDecoration(hinttext: "NRC"),
                controller: controller.employeeNrcController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Date of birth"),
                controller: controller.employeeDobController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
                readOnly: true,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (c) => POSDatePickerDialog(
                            isDob: true,
                            typeController: controller.employeeDobController,
                            specialDates: const [],
                          ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Father Name"),
                controller: controller.employeeFnameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Daily Percentage"),
                controller: controller.employeePercentController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Salary"),
                controller: controller.employeeSalaryController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.employeeDescriptionController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButtonFormField<String>(
                value: controller.selectedRole.value,
                isExpanded: true,
                decoration: normalInputDecoration(
                  hinttext: "Choose roles",
                ),
                items: controller.roles.map((i) {
                  return DropdownMenuItem<String>(
                      value: i,
                      enabled: i != "employee (owner)",
                      child: Text(
                        i,
                        style: TextStyle(
                          color: i == "employee (owner)"
                              ? POSColor.primaryColorDark.withOpacity(0.5)
                              : POSColor.primaryColorDark,
                        ),
                      ));
                }).toList(),
                onChanged: (v) {
                  if (v != "employee(owner)") {
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
                height: 20,
              ),
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
              //     controller.empStatus.value = !controller.empStatus.value;
              //   },
              //   contentPadding: const EdgeInsets.only(
              //       left: 10, right: 10, top: 0, bottom: 0),
              //   title: const Text(
              //     "Employee Active status",
              //     style:
              //         TextStyle(fontSize: 14, color: POSColor.primaryColorDark),
              //   ),
              //   trailing: Obx(() => Switch(
              //       value: controller.empStatus.value,
              //       onChanged: (v) {
              //         controller.empStatus.value = v;
              //       })),
              // ),
              const SizedBox(
                height: 40,
              ),
              GradientButton(
                  height: 40,
                  child: Text(
                    "save".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    if (controller.isEmpEdit.value) {
                      controller.updateEmployee();
                    } else {
                      controller.addEmployee();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
