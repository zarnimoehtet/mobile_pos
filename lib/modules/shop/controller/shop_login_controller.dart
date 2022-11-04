import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/auth/views/login_page.dart';
import 'package:mobile_pos/viewmodels/auth_vm.dart';

import '../../../core/custom/state_dialog.dart';
import '../../../core/helpers/state.dart';
import '../../../data/model/employee.dart';
import '../../../data/model/user.dart';
import '../../../viewmodels/employee_vm.dart';
import '../../../viewmodels/profile_vm.dart';
import '../../home/views/home_page.dart';

class ShopLoginController extends GetxController {
  final TextEditingController passcodeController = TextEditingController();

  RxBool isPasscodeWrong = RxBool(false);
  Rxn<User> currentUser = Rxn<User>();
  RxList<EmployeeItem> empList = RxList();
  final ProfileViewModel profileVM = Get.find();
  final AuthViewModel authVM = Get.find();
  final EmployeeViewModel empVM = Get.find();

  ShopLoginController() {
    _subscribeCurrentUser();
    _subscribeLoginState();
    _subscribeCurrentEmp();
    _subscribeEmployees();
    _subscribeLogoutState();
  }

  StreamSubscription? _empLoginStream;
  void _subscribeLoginState() {
    _empLoginStream =
        showStateableDialog<Employee>(authVM.empLoginStream, (emp) {
      profileVM.getCurrentEmp();
    });
  }

  _subscribeCurrentUser() {
    currentUser.value = profileVM.currentUser;
  }

  void _subscribeEmployees() {
    empVM.fetchEmployeeStream.listen((event) {
      if (event is StateSuccess<List<EmployeeItem>>) {
        empList.value = event.data;
      }
    });
  }

  StreamSubscription? _empStream;
  void _subscribeCurrentEmp() {
    _empStream = profileVM.empStream.listen((emp) async {
      if (emp != null) {
        await _empStream?.cancel();
        Get.offAndToNamed(HomePage.route);
      }
    });
  }

  void empLogin() {
    authVM.empLogin(passcodeController.text.trim());
  }

  void logout() {
    authVM.logout();
  }

  StreamSubscription? _logoutStream;
  void _subscribeLogoutState() {
    _logoutStream = showStateableDialog<bool>(authVM.logoutStream, (_) {
      Get.back();
      passcodeController.clear();
      Get.offAndToNamed(LoginPage.route);
    });
  }

  @override
  void dispose() {
    passcodeController.dispose();
    _empLoginStream?.cancel();
    _empStream?.cancel();
    _logoutStream?.cancel();
    super.dispose();
  }
}
