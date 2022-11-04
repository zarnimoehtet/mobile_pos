import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';

import '../../../core/custom/gradient_button.dart';
import '../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  static const String route = "/";
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: POSColor.primaryGradientColorBT,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "YHS Multi POS",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Obx(() {
                if (controller.error.value?.isNotEmpty ?? false) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "${controller.error.value}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 12),
                        GradientButton(
                          height: 50,
                          gradient: const LinearGradient(
                              colors: [Colors.white, Colors.white]),
                          child: Text("retry".tr.toUpperCase()),
                          onTap: () {
                            controller.reload();
                          },
                        ),
                      ],
                    ),
                  );
                }
                return Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    width: 30,
                    height: 30,
                    child: const CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ));
              }),
            )
          ],
        ),
      ),
    );
  }
}
