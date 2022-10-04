import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../core/constants/colors.dart';
import '../controllers/items_controller.dart';

class ItemsPage extends GetView<ItemsController> {
  static const String route = "/items";
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Items",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
