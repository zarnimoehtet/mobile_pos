import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  StreamSubscription? keyboardSubscription;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  KeyboardVisibilityController keyboardController =
      KeyboardVisibilityController();
  var isKeyboardOn = false.obs;

  @override
  void onInit() {
    keyboardSubscription = keyboardController.onChange.listen((bool visible) {
      isKeyboardOn.value = visible;
    });
    super.onInit();
  }
}
