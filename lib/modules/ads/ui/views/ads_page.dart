import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';

import '../../../auth/views/login_page.dart';
import '../controllers/ads_controller.dart';

class AdsPage extends GetView<AdsController> {
  static const String route = "/ads";
  const AdsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ads Page"),
        actions: [
          IconButton(
              onPressed: () {
                Get.offAndToNamed(LoginPage.route);
              },
              icon: const Icon(
                Icons.storefront_outlined,
                color: Colors.white,
              )),
        ],
      ),
      body: const Center(
        child: Text(
          "Ads",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
