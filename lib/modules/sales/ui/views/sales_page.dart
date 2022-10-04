import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile_pos/modules/sales/ui/controllers/sales_controller.dart';

import '../../../../core/constants/colors.dart';

class SalesPage extends GetView<SalesController> {
  static const String route = "/sales";
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Sales",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
