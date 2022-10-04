import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';
import '../controllers/stock_controller.dart';

class StockPage extends GetView<StockController> {
  static const String route = "/stock";
  const StockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Stock Management",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
