import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile_pos/modules/receipts/ui/controllers/receipts_controller.dart';

import '../../../../core/constants/colors.dart';

class ReceiptsPage extends GetView<ReceiptsController> {
  static const String route = "/receipts";
  const ReceiptsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Receipts",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
