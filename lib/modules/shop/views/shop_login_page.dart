import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/custom/state_dialog.dart';
import '../controller/shop_login_controller.dart';

class ShopLoginPage extends GetView<ShopLoginController> {
  static const String route = "/shop-login";
  const ShopLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: POSColor.primaryColorDark,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  showMessageDialog("ask_logout".tr, actions: [
                    TextButton(
                        onPressed: Get.back,
                        child: Text("cancel".tr.toUpperCase())),
                    TextButton(
                        onPressed: () {
                          Get.back();
                          controller.logout();
                        },
                        child: Text("logout".tr.toUpperCase())),
                  ]);
                },
                icon: const Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ))
          ],
        ),
        body: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: Get.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: POSColor.primaryColorDark),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(() => Text(
                          controller.currentUser.value?.shop?.name ?? "",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Launch shop with your own passcode",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: Get.width * 0.5,
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        controller: controller.passcodeController,
                        enableActiveFill: true,
                        obscureText: true,
                        obscuringWidget: const CircleAvatar(
                          backgroundColor: POSColor.primaryColorDark,
                          radius: 5,
                        ),
                        cursorColor: POSColor.primaryColorDark,
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          fieldWidth: 30,
                          fieldHeight: 30,
                          shape: PinCodeFieldShape.circle,
                          borderRadius: BorderRadius.circular(50),
                          selectedColor: Colors.transparent,
                          selectedFillColor: Colors.white,
                          inactiveFillColor: Colors.white,
                          inactiveColor: Colors.transparent,
                          activeFillColor: Colors.white,
                          activeColor: Colors.transparent,
                          borderWidth: 1,
                        ),
                        onChanged: (value) {
                          if (value.length == 4) {
                            controller.empLogin();
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              controller.isPasscodeWrong.value
                  ? const Text(
                      "Your passcode is wrong. Please try again",
                      style: TextStyle(
                        color: POSColor.secondaryColor,
                        fontSize: 16,
                      ),
                    )
                  : const SizedBox(
                      height: 10,
                    ),
              const SizedBox(
                height: 20,
              ),
              NumericKeyboard(
                  onKeyboardTap: (s) {
                    controller.passcodeController.text += s;
                  },
                  textColor: POSColor.primaryColorDark,
                  rightButtonFn: () {
                    if (controller.passcodeController.text.isNotEmpty) {
                      controller.passcodeController.text =
                          controller.passcodeController.text.substring(
                              0, controller.passcodeController.text.length - 1);
                    }
                  },
                  rightIcon: const Icon(
                    Icons.backspace,
                    color: POSColor.primaryColorDark,
                  ),
                  leftButtonFn: () {
                    controller.empLogin();
                  },
                  leftIcon: const Icon(
                    Icons.check,
                    color: POSColor.primaryColorDark,
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween),
            ],
          ),
        ));
  }
}
