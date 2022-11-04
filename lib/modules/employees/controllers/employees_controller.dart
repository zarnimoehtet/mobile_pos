import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/employee.dart';
import 'package:mobile_pos/viewmodels/employee_vm.dart';

import '../../../core/custom/state_dialog.dart';
import '../../../core/helpers/state.dart';
import '../../../data/model/user.dart';
import '../../../viewmodels/profile_vm.dart';

class EmployeesController extends GetxController {
  RxList<EmployeeItem> empList = RxList();
  Rxn<User> currentUser = Rxn<User>();

  Rxn<EmployeeItem> editEmployee = Rxn<EmployeeItem>();

  RxBool isLoading = RxBool(false);
  RxnString error = RxnString();

  final ProfileViewModel profileVM = Get.find();
  final EmployeeViewModel empVM = Get.find();

  //Add Employee
  TextEditingController employeeNameController = TextEditingController();
  TextEditingController employeePhoneController = TextEditingController();
  TextEditingController employeeemailController = TextEditingController();
  TextEditingController employeePinCodeController = TextEditingController();
  TextEditingController employeeDescriptionController = TextEditingController();

  //Edit Employee
  TextEditingController employeeNameEditController = TextEditingController();
  TextEditingController employeePhoneEditController = TextEditingController();
  TextEditingController employeeemailEditController = TextEditingController();
  TextEditingController employeePinCodeEditController = TextEditingController();
  TextEditingController employeeDescriptionEditController =
      TextEditingController();

  List<String> roles = ["Owner", "Manager", "Cashier", "Staff"];
  RxString selectedRole = RxString("Manager");
  RxString selectedEditRole = RxString("Manager");
  @override
  void onInit() {
    _subscribeCurrentUser();
    _subscribeEmployees();
    _subscribeEmployeesAddState();
    _subscribeEmployeesUpdateState();
    _subscribeEmployeesDeleteState();
    fetchEmployees(0);
    super.onInit();
  }

  _subscribeCurrentUser() {
    currentUser.value = profileVM.currentUser;
  }

  void _subscribeEmployees() {
    empVM.fetchEmployeeStream.listen((event) {
      isLoading.value = event is StateLoading<List<EmployeeItem>>;
      if (event is StateSuccess<List<EmployeeItem>>) {
        empList.value = event.data;
      }
      if (event is StateError<List<EmployeeItem>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchEmployees(int page) async {
    await empVM.fetchEmployees(page, currentUser.value?.id ?? "");
  }

  addEmployee() {
    empVM.addNewEmployee(
        currentUser.value?.id ?? "",
        employeeNameController.text.trim(),
        employeeDescriptionController.text.trim(),
        employeeemailController.text.trim(),
        employeePhoneController.text.trim(),
        selectedRole.value,
        "1",
        employeePinCodeController.text.trim());
  }

  StreamSubscription<MyState<Employee>>? _addEmployeeStateSubscription;
  void _subscribeEmployeesAddState() {
    _addEmployeeStateSubscription?.cancel();
    _addEmployeeStateSubscription =
        showStateableDialog<Employee>(empVM.addEmployeeStream, (emp) {
      fetchEmployees(0);
      employeeNameController.clear();
      employeeDescriptionController.clear();
      employeeemailController.clear();
      employeePhoneController.clear();
      employeePinCodeController.clear();
      selectedRole.value = "";
      Get.back();
    });
  }

  updateEmployee() {
    empVM.editEmployee(
        editEmployee.value?.id ?? "",
        currentUser.value?.id ?? "",
        employeeNameEditController.text.trim(),
        employeeDescriptionEditController.text.trim(),
        employeeemailEditController.text.trim(),
        employeePhoneEditController.text.trim(),
        selectedEditRole.value,
        "1",
        employeePinCodeEditController.text.trim());
  }

  StreamSubscription<MyState<Employee>>? _updateEmployeeStateSubscription;
  void _subscribeEmployeesUpdateState() {
    _updateEmployeeStateSubscription?.cancel();
    _updateEmployeeStateSubscription =
        showStateableDialog<Employee>(empVM.editEmployeeStream, (emp) {
      fetchEmployees(0);
      employeeNameEditController.clear();
      employeeDescriptionEditController.clear();
      employeeemailEditController.clear();
      employeePhoneEditController.clear();
      employeePinCodeEditController.clear();
      selectedEditRole.value = "";
      editEmployee.value = null;
      Get.back();
    });
  }

  deleteEmployee() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete_employee"
            .trParams({"value": editEmployee.value?.name ?? ""}),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: Get.back, child: Text("no_delete".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              empVM.deleteEmployee(editEmployee.value?.id ?? "");
            },
            child: Text("delete".tr.toUpperCase())),
      ],
    ));
  }

  StreamSubscription<MyState<bool>>? _deleteEmployeeStateSubscription;
  void _subscribeEmployeesDeleteState() {
    _deleteEmployeeStateSubscription?.cancel();
    _deleteEmployeeStateSubscription =
        showStateableDialog<bool>(empVM.deleteEmployeeStateStream, (emp) {
      fetchEmployees(0);
      employeeNameEditController.clear();
      employeeDescriptionEditController.clear();
      employeeemailEditController.clear();
      employeePhoneEditController.clear();
      employeePinCodeEditController.clear();
      selectedEditRole.value = "";
      editEmployee.value = null;
      Get.back();
    });
  }

  @override
  void dispose() {
    _addEmployeeStateSubscription?.cancel();
    _updateEmployeeStateSubscription?.cancel();
    _deleteEmployeeStateSubscription?.cancel();
    super.dispose();
  }
}
