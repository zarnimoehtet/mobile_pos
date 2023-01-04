import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';

import '../../../core/constants/colors.dart';
import '../controllers/items_controller.dart';

class POSBarcodeScannerView extends StatefulWidget {
  static const String route = "/barcode_add";

  const POSBarcodeScannerView({super.key});

  @override
  State<POSBarcodeScannerView> createState() => _POSBarcodeScannerViewState();
}

class _POSBarcodeScannerViewState extends State<POSBarcodeScannerView> {
  final ItemsController itemsController = Get.find<ItemsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AiBarcodeScanner(
            controller: MobileScannerController(),
            showSuccess: false,
            showHint: false,
            borderColor: POSColor.primaryColorDark,
            onScan: (String value) {
              itemsController.itemsBarcodeController.text = value;
            },
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.only(left: 20, top: 50),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: const Icon(
                Icons.arrow_back,
                color: POSColor.primaryColorDark,
              ),
            ),
          )
        ],
      ),
    );
  }
}
