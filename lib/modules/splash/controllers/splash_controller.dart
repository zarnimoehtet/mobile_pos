import 'dart:async';

import 'package:get/get.dart';
import 'package:mobile_pos/modules/shop/views/shop_login_page.dart';

import '../../../viewmodels/profile_vm.dart';
import '../../auth/views/login_page.dart';
import '../../home/views/home_page.dart';

class SplashController extends GetxController {
  SplashController() {
    _loadVM();
    _listenLocalRx();
  }
  void _loadVM() {
    userSubscription = profileVM.userStream.listen((user) {
      hasProfile.value = user != null;
    });

    empSubscription = profileVM.empStream.listen((emp) {
      hasEmpProfile.value = emp != null;
    });

    reload();
  }

  StreamSubscription? userSubscription;
  StreamSubscription? empSubscription;
  StreamSubscription? updateSubscription;
  Worker? updateWorker;
  Worker? profileWorker;
  Worker? empWorker;
  void _listenLocalRx() {
    profileVM.getCurrentUser();
    profileWorker = ever(hasProfile, (result) {
      if (result == null) {
        return;
      }
      if ((result as bool?) ?? false) {
        profileVM.getCurrentEmp();
        empWorker = ever(hasEmpProfile, (res) {
          if (res == null) {
            return;
          }
          if ((res as bool?) ?? false) {
            Get.offAndToNamed(HomePage.route);
          } else {
            Get.offAndToNamed(ShopLoginPage.route);
          }
        });
      } else {
        Get.offAndToNamed(LoginPage.route);
      }
    });
  }

  final ProfileViewModel profileVM = Get.find();

  RxnBool isUpdate = RxnBool(null);
  RxnString error = RxnString(null);
  RxnBool hasProfile = RxnBool(null);
  RxnBool hasEmpProfile = RxnBool(null);

  void reload() {
    isUpdate.value = null;
    error.value = null;
    hasProfile.value = null;
    hasEmpProfile.value = null;
  }

  @override
  void onClose() {
    userSubscription?.cancel();
    empSubscription?.cancel();
    updateSubscription?.cancel();
    updateWorker?.dispose();
    profileWorker?.dispose();
    super.onClose();
  }
}
