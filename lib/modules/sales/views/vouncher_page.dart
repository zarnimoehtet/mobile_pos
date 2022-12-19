import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
import 'package:mobile_pos/modules/sales/controllers/sales_controller.dart';

import '../../../../core/custom/gradient_button.dart';
import '../custom/vouncher_item.dart';

class VouncherPage extends GetView<SalesController> {
  static const String route = "/sales-vouncher";
  const VouncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale Vouncher"),
        actions: [
          MaterialButton(
            padding: const EdgeInsets.all(0),
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
            },
            child: Text(
              "clear".tr.toUpperCase(),
              style: const TextStyle(
                  fontSize: 14, color: POSColor.primaryColorDark),
            ),
          )
        ],
      ),
      body: Obx(() => Stack(
            children: [
              itemCustomerInfo(),
              itemListArea(),
              Align(
                  alignment: FractionalOffset.bottomCenter, child: priceArea()),
            ],
          )),
    );
  }

  Widget itemCustomerInfo() {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      const Text(
                        "Customer Information",
                        style: TextStyle(
                            color: POSColor.primaryColorDark,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Obx(() => InkWell(
                          onTap: () {
                            controller.isShowCustomerData.value =
                                !controller.isShowCustomerData.value;
                            controller.selectedCustomer.value = null;
                          },
                          child: controller.isShowCustomerData.value
                              ? const Icon(Icons.remove,
                                  color: POSColor.primaryColorDark)
                              : const Icon(
                                  Icons.add,
                                  color: POSColor.primaryColorDark,
                                )))
                    ],
                  ),
                  controller.isShowCustomerData.value
                      ? controller.selectedCustomer.value == null
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, left: 10),
                                  child: GradientButton(
                                      gradient:
                                          controller.selectedItemList.isNotEmpty
                                              ? POSColor.primaryGradientColorLR
                                              : null,
                                      radius: BorderRadius.circular(10),
                                      height: 40,
                                      width: Get.width,
                                      child: Text(
                                        "Choose Customer".toUpperCase(),
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      onTap: () {
                                        controller.chooseCustomer(Get.context!);
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, left: 10),
                                  child: GradientButton(
                                      gradient:
                                          controller.selectedItemList.isNotEmpty
                                              ? POSColor.primaryGradientColorLR
                                              : null,
                                      radius: BorderRadius.circular(10),
                                      height: 40,
                                      width: Get.width,
                                      child: Text(
                                        "Add New Customer".toUpperCase(),
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      onTap: () {}),
                                )
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Name: ${controller.selectedCustomer.value?.name}",
                                  style: const TextStyle(
                                    color: POSColor.primaryColorDark,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Phone: ${controller.selectedCustomer.value?.phone}",
                                  style: const TextStyle(
                                    color: POSColor.primaryColorDark,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Address: ${controller.selectedCustomer.value?.address}",
                                  style: const TextStyle(
                                    color: POSColor.primaryColorDark,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            )
                      : const SizedBox()
                ],
              ),
            ),
          )),
    );
  }

  Widget itemListArea() {
    return Padding(
        padding: EdgeInsets.only(
            bottom: Get.height * 0.22,
            top: controller.isShowCustomerData.value
                ? Get.height * 0.2
                : Get.height * 0.1),
        child: Obx(() {
          if (controller.selectedItemList.isEmpty) {
            return const Center(child: Text("No items"));
          } else {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: controller.selectedItemList.length,
              itemBuilder: (context, index) {
                return VouncherItem(
                    controller.selectedItemList[index], index == 0);
              },
            );
          }
        }));
  }

  Widget priceArea() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      elevation: 2,
      child: Container(
        height: Get.height * 0.17,
        width: Get.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Obx(() => Text(
                      "MMK ${controller.totalCharges.value.toCurrencyFormat()}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: GradientButton(
                        gradient: controller.selectedItemList.isNotEmpty
                            ? POSColor.primaryGradientColorLR
                            : null,
                        radius: BorderRadius.circular(10),
                        height: 40,
                        width: Get.width,
                        child: Text(
                          "credit".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          if (controller.selectedItemList.isNotEmpty) {
                            controller.goCredit(Get.context!);
                          }
                        }),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: GradientButton(
                        gradient: controller.selectedItemList.isNotEmpty
                            ? POSColor.primaryGradientColorLR
                            : null,
                        radius: BorderRadius.circular(10),
                        height: 40,
                        width: Get.width,
                        child: Text(
                          "pay".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          if (controller.selectedItemList.isNotEmpty) {
                            controller.addToSale();
                          }
                        }),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
