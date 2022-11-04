import 'dart:async';

import 'package:get/get.dart';
import 'package:mobile_pos/modules/shop/views/shop_login_page.dart';
import 'package:mobile_pos/viewmodels/auth_vm.dart';

import '../../../core/custom/state_dialog.dart';
import '../../../data/model/user.dart';
import '../../../viewmodels/profile_vm.dart';

class HomeController extends GetxController {
  HomeController() {
    _subscribeCurrentUser();
    _subscribeCurrentEmp();
    _subscribeEmpLogoutState();
  }
  RxInt tabIndex = RxInt(0);
  Rxn<User> currentUser = Rxn<User>();
  Rxn<Employee> currentEmp = Rxn<Employee>();
  final ProfileViewModel profileVM = Get.find();
  final AuthViewModel authViewModel = Get.find();

  _subscribeCurrentUser() {
    currentUser.value = profileVM.currentUser;
  }

  _subscribeCurrentEmp() {
    currentEmp.value = profileVM.currentEMP;
  }

  void empLogout() {
    authViewModel.empLogout();
  }

  StreamSubscription? _emplogoutStream;
  void _subscribeEmpLogoutState() {
    _emplogoutStream =
        showStateableDialog<bool>(authViewModel.emplogoutStream, (_) {
      Get.back();
      Get.offAndToNamed(ShopLoginPage.route);
    });
  }

  @override
  void dispose() {
    _emplogoutStream?.cancel();
    super.dispose();
  }
}
