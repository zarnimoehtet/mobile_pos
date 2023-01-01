import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
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

  RxBool isEmpEdit = RxBool(false);
  RxBool empStatus = RxBool(true);

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
  TextEditingController employeeFnameController = TextEditingController();
  TextEditingController employeeDobController = TextEditingController();
  TextEditingController employeePercentController = TextEditingController();
  TextEditingController employeeNrcController = TextEditingController();
  TextEditingController employeeSalaryController = TextEditingController();

  List<String> roles = [
    "employee (owner)",
    "employee (manager)",
    "employee (cashier)",
    "employee (staff)"
  ];
  RxString selectedRole = RxString("employee (manager)");

  final ScrollController scrollController = ScrollController();
  @override
  void onInit() {
    _subscribeCurrentUser();
    _subscribeEmployees();
    _subscribeEmployeesAddState();
    _subscribeEmployeesUpdateState();
    _subscribeEmployeesDeleteState();
    fetchEmployees(0);
    scrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = empList.length ~/ 10;
        fetchEmployees(page);
      }
    });
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

  getFindRole(String id) {
    selectedRole.value = roles[roles.indexWhere((element) => element == id)];
  }

  setupEmpEdit() {
    if (isEmpEdit.value) {
      employeeNameController.text = editEmployee.value?.name ?? "";
      employeeDescriptionController.text =
          editEmployee.value?.description ?? "";
      employeeemailController.text = editEmployee.value?.email ?? "";
      employeePhoneController.text = editEmployee.value?.phone ?? "";
      getFindRole(editEmployee.value?.role ?? "");
      empStatus.value = editEmployee.value?.status ?? false;
      employeeNrcController.text = editEmployee.value?.nrc ?? "";
      employeeDobController.text = editEmployee.value?.dob != null
          ? DateFormat("dd-MM-yyyy")
              .format((editEmployee.value?.dob ?? "").toDateTime())
          : "";
      employeeFnameController.text = editEmployee.value?.fatherName ?? "";
      employeePercentController.text =
          "${editEmployee.value?.dailyPercent ?? 0}";
      employeeSalaryController.text = "${editEmployee.value?.salary ?? 0}";
      employeePinCodeController.text = editEmployee.value?.pincode ?? "";
    } else {
      employeeNameController.clear();
      employeeDescriptionController.clear();
      employeeemailController.clear();
      employeePhoneController.clear();
      employeePinCodeController.clear();
      employeeNrcController.clear();
      employeeDobController.clear();
      employeeFnameController.clear();
      employeePercentController.clear();
      employeeSalaryController.clear();
      selectedRole.value = roles[1];
    }
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
        empStatus.value ? "1" : "0",
        employeePinCodeController.text.trim(),
        employeeNrcController.text.trim(),
        employeeDobController.text.trim(),
        employeeFnameController.text.trim(),
        int.parse(employeePercentController.text.trim()),
        int.parse(employeeSalaryController.text.trim()));
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
      employeeNrcController.clear();
      employeeDobController.clear();
      employeeFnameController.clear();
      employeePercentController.clear();
      employeeSalaryController.clear();
      selectedRole.value = "";

      Get.back();
    });
  }

  updateEmployee() {
    empVM.editEmployee(
        editEmployee.value?.id ?? "",
        currentUser.value?.id ?? "",
        employeeNameController.text.trim(),
        employeeDescriptionController.text.trim(),
        employeeemailController.text.trim(),
        employeePhoneController.text.trim(),
        selectedRole.value,
        empStatus.value ? "1" : "0",
        employeePinCodeController.text.trim(),
        employeeNrcController.text.trim(),
        employeeDobController.text.trim(),
        employeeFnameController.text.trim(),
        int.parse(employeePercentController.text.trim()),
        int.parse(employeeSalaryController.text.trim()));
  }

  StreamSubscription<MyState<Employee>>? _updateEmployeeStateSubscription;
  void _subscribeEmployeesUpdateState() {
    _updateEmployeeStateSubscription?.cancel();
    _updateEmployeeStateSubscription =
        showStateableDialog<Employee>(empVM.editEmployeeStream, (emp) {
      fetchEmployees(0);
      employeeNameController.clear();
      employeeDescriptionController.clear();
      employeeemailController.clear();
      employeePhoneController.clear();
      employeePinCodeController.clear();
      employeeNrcController.clear();
      employeeDobController.clear();
      employeeFnameController.clear();
      employeePercentController.clear();
      employeeSalaryController.clear();
      selectedRole.value = "";
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
        "ask_delete".trParams({"value": editEmployee.value?.name ?? ""}),
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
      employeeNameController.clear();
      employeeDescriptionController.clear();
      employeeemailController.clear();
      employeePhoneController.clear();
      employeePinCodeController.clear();
      employeeNrcController.clear();
      employeeDobController.clear();
      employeeFnameController.clear();
      employeePercentController.clear();
      employeeSalaryController.clear();
      selectedRole.value = "";
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
