import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/enums/discount_type.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';
import '../controllers/items_controller.dart';

class DiscountAddPage extends GetView<ItemsController> {
  static const String route = "/discount_add";
  const DiscountAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Discount"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 3 / 1.5,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade400,
                    ),
                    width: Get.width,
                    child: const Center(
                        child: Icon(
                      Icons.add_photo_alternate_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Name"),
                controller: controller.discountNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.discountDetailController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width * 0.55,
                    child: TextFormField(
                      decoration: normalInputDecoration(hinttext: "Value"),
                      controller: controller.discountAmountController,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      cursorColor: POSColor.primaryColorDark,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: POSColor.primaryColorDark),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () => controller.selectedType.value =
                              DiscountType.percent,
                          child: Obx(() => Container(
                                width: Get.width * 0.15,
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 5, left: 13, right: 13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: controller.selectedType.value ==
                                            DiscountType.percent
                                        ? POSColor.primaryColorDark
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.percent,
                                  size: 22,
                                  color: controller.selectedType.value ==
                                          DiscountType.percent
                                      ? Colors.white
                                      : POSColor.primaryColorDark,
                                ),
                              )),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () => controller.selectedType.value =
                              DiscountType.normal,
                          child: Obx(() => Container(
                                width: Get.width * 0.15,
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 5, left: 13, right: 13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: controller.selectedType.value ==
                                            DiscountType.normal
                                        ? POSColor.primaryColorDark
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Image.asset(
                                  'assets/images/sigma.png',
                                  width: 22,
                                  height: 22,
                                  color: controller.selectedType.value ==
                                          DiscountType.normal
                                      ? Colors.white
                                      : POSColor.primaryColorDark,
                                ),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(
                        color: POSColor.primaryColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            size: 15,
                            color: POSColor.primaryColorDark,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "ADD",
                            style: TextStyle(
                                color: POSColor.primaryColorDark, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DottedBorder(
                color: Colors.grey.shade500,
                dashPattern: const [5, 2],
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: Text(
                    "No discount category",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Items",
                    style: TextStyle(
                        color: POSColor.primaryColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            size: 15,
                            color: POSColor.primaryColorDark,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "ADD",
                            style: TextStyle(
                                color: POSColor.primaryColorDark, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DottedBorder(
                color: Colors.grey.shade500,
                dashPattern: const [5, 2],
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: Text(
                    "No discount item",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GradientButton(
                  height: 40,
                  child: Text(
                    "Save".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
