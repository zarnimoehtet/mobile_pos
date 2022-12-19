import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/balance_notes/controllers/balance_controller.dart';

import '../../../../core/constants/colors.dart';

class ReceivablePage extends GetView<BalanceNoteController> {
  static const String route = "/balance";
  const ReceivablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Receivable",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
