import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/viewmodels/profile_vm.dart';

import '../../../core/custom/state_dialog.dart';
import '../../../data/model/user.dart';
import '../../../viewmodels/auth_vm.dart';
import '../../shop/views/shop_login_page.dart';

class LoginController extends GetxController {
  StreamSubscription? keyboardSubscription;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  KeyboardVisibilityController keyboardController =
      KeyboardVisibilityController();
  var isKeyboardOn = false.obs;
  var isVisible = false.obs;

  @override
  void onInit() {
    _subscribeCurrentUser();
    _subscribeLoginState();
    keyboardSubscription = keyboardController.onChange.listen((bool visible) {
      isKeyboardOn.value = visible;
    });
    super.onInit();
  }

  final AuthViewModel authViewModel = Get.find();
  final ProfileViewModel profileViewModel = Get.find();

  StreamSubscription? _loginStream;
  void _subscribeLoginState() {
    _loginStream = showStateableDialog<User>(authViewModel.loginStream, (user) {
      profileViewModel.getCurrentUser();
    });
  }

  StreamSubscription? _userStream;
  void _subscribeCurrentUser() {
    _userStream = profileViewModel.userStream.listen((user) async {
      if (user != null) {
        await _userStream?.cancel();
        Get.offAndToNamed(ShopLoginPage.route);
      }
    });
  }

  void login() {
    authViewModel.login(
      usernameController.text.trim(),
      passwordController.text.trim(),
    );
  }

  @override
  void onClose() {
    _loginStream?.cancel();
    _userStream?.cancel();
    super.onClose();
  }
}
