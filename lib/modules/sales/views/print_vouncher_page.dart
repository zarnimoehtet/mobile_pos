import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
import 'package:mobile_pos/data/model/sale.dart';
import 'package:mobile_pos/modules/sales/controllers/sales_controller.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';

import '../../../core/constants/colors.dart';
import '../../../core/custom/gradient_button.dart';

class PrintVouncherPage extends GetView<SalesController> {
  static const String route = "/sales-print-vouncher";
  const PrintVouncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            title: Text(controller.completedSale.value?.code ?? ""),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                controller.selectedItemList.clear();
                controller.completedSale.value = null;
                controller.totalCharges.value = 0;
                controller.totalItem.value = 0;
                controller.totalDiscount.value = 0;
                controller.selectedCustomer.value = null;
                controller.isCredit.value = false;
                controller.creditAmount.value = 0;
                controller.isShowCustomerData.value = false;
                Get.back();
                Get.back();
              },
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    controller.shareToOther();
                  },
                  icon: const Icon(
                    Icons.share,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.print,
                  ))
            ],
          ),
          body: SizedBox(
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/success.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Success",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  invoiceDetail(),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: GradientButton(
                        gradient: POSColor.primaryGradientColorLR,
                        radius: BorderRadius.circular(10),
                        height: 40,
                        width: Get.width,
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.save_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "save to gallery".toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          controller.saveToGallery();
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )),
    );
  }

  Widget invoiceDetail() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.all(5),
      elevation: 1,
      child: Screenshot(
        controller: controller.screenshotController,
        child: Container(
          color: Colors.white,
          width: Get.width,
          margin: const EdgeInsets.all(2),
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Obx(() => CachedNetworkImage(
                    width: (100),
                    height: (100),
                    fit: BoxFit.cover,
                    imageUrl: controller.currentUser.value?.logo ?? "",
                    placeholder: (context, url) =>
                        Image.asset("assets/images/profile@3x.png"),
                    errorWidget: (context, url, error) =>
                        Image.asset("assets/images/profile@3x.png"),
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                controller.currentUser.value?.shop?.name ?? "",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  controller.currentUser.value?.address ?? "",
                  maxLines: 3,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                controller.currentUser.value?.shop?.phone ?? "",
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Invoice No: ${controller.completedSale.value?.code}",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cashier: ${controller.completedSale.value?.emp?.name}",
                    style: const TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  Text(
                    "${controller.completedSale.value?.createdAt}"
                        .toDateTime()
                        .toFormat("d/MM/yyyy h:mm a", useCurrentLocale: false),
                    style: const TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ],
              ),
              controller.completedSale.value?.hasCredit == "yes"
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 3,
                        ),
                        const DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          lineThickness: 1.0,
                          dashLength: 4.0,
                          dashColor: Colors.black,
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapColor: Colors.transparent,
                          dashGapRadius: 0.0,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Customer: ${controller.completedSale.value?.customer?.name} (${controller.completedSale.value?.customer?.desc})",
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        ),
                      ],
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 3,
              ),
              const DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: Colors.black,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Pay with",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Text(
                    "${controller.completedSale.value?.paymentType}"
                        .toUpperCase(),
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: Colors.black,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
              Column(
                children: controller.completedSale.value?.itemList
                        .map((e) => vouncherItem(e))
                        .toList() ??
                    [],
              ),
              const SizedBox(
                height: 3,
              ),
              const DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: Colors.black,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
              const SizedBox(
                height: 3,
              ),
              controller.completedSale.value?.reducePrice != 0
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Sub Total",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                            Text(
                              "MMK ${((controller.completedSale.value?.totalAmount ?? 0) + (controller.completedSale.value?.reducePrice ?? 0)).toCurrencyFormat()}",
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Discount",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                            Text(
                              "MMK ${controller.completedSale.value?.reducePrice?.toCurrencyFormat()}",
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                      ],
                    )
                  : const SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "MMK ${controller.completedSale.value?.totalAmount?.toCurrencyFormat()}",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              controller.completedSale.value?.hasCredit == "yes"
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MMK ${((controller.completedSale.value?.totalAmount ?? 0) - (controller.completedSale.value?.creditAmount ?? 0)).toCurrencyFormat()}",
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Credit",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MMK ${controller.completedSale.value?.creditAmount?.toCurrencyFormat()}",
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 5,
              ),
              QrImage(
                data: "${controller.completedSale.value?.code}",
                version: QrVersions.auto,
                size: 80.0,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Thank you, See u again",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget vouncherItem(SaleItem item) {
    // return ListTile(
    //   title: Text(item.item?.name ?? ""),
    //   subtitle: Text("${item.qty} x MMK ${item.salePrice}"),
    //   trailing: Text("MMK ${(item.salePrice! * item.qty!)}"),
    // );
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.item?.name ?? "",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "${item.qty} x MMK ${item.salePrice?.toCurrencyFormat()}",
                style: const TextStyle(fontSize: 13, color: Colors.black),
              ),
            ],
          ),
          Text(
            "MMK ${(item.salePrice! * item.qty!).toCurrencyFormat()}",
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
