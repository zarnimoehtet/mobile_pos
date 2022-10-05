import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/auth/ui/controllers/login_controller.dart';
import 'package:mobile_pos/modules/home/ui/views/home_page.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';

class LoginPage extends GetView<LoginController> {
  static const String route = "/login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Obx(() => Container(
              width: Get.width,
              height: controller.isKeyboardOn.value
                  ? Get.height * 0.2
                  : Get.height * 0.45,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  gradient: POSColor.primaryGradientColorBT),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(() => Icon(
                          Icons.storefront_outlined,
                          size: controller.isKeyboardOn.value ? 50 : 100,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(() => Text(
                          "YHS Multi POS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  controller.isKeyboardOn.value ? 16 : 25),
                        )),
                  ],
                ),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
          height: 50,
          child: TextField(
            controller: controller.usernameController,
            decoration: borderInputDecoration(POSColor.primaryColorDark,
                hinttext: "User name"),
            style: const TextStyle(color: POSColor.primaryColorDark),
            cursorColor: POSColor.primaryColorDark,
          ),
        ),
        Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          height: 50,
          child: TextField(
            controller: controller.usernameController,
            decoration: borderInputDecoration(POSColor.primaryColorDark,
                hinttext: "Password"),
            style: const TextStyle(color: POSColor.primaryColorDark),
            cursorColor: POSColor.primaryColorDark,
          ),
        ),
        const Align(
          alignment: FractionalOffset.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Forgot password?",
              style: TextStyle(
                  color: POSColor.primaryColorDark,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: GradientButton(
              height: 50,
              child: Text(
                "Login".toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
              onTap: () {
                Get.offAndToNamed(HomePage.route);
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "If you haven't account?",
              style: TextStyle(color: POSColor.textColor, fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Register Now",
              style: TextStyle(
                  color: POSColor.primaryColorDark,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        ),
      ],
    ));
  }
}
