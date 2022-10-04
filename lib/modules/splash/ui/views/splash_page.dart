import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/splash/ui/controllers/splash_controller.dart';

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
                  "MOBO POS",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  width: 30,
                  height: 30,
                  child: const CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
