import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';
import '../controllers/items_controller.dart';

class UnitAddPage extends GetView<ItemsController> {
  static const String route = "/unit_add";
  const UnitAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setupUnitEdit();
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.isEditUnit.value ? "Edit Unit" : "Add Unit"),
        centerTitle: true,
        actions: [
          controller.isEditUnit.value
              ? IconButton(
                  onPressed: () {
                    controller.onClickDeleteUnit();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: POSColor.primaryColorDark,
                  ))
              : const SizedBox()
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Unit name"),
                controller: controller.unitNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.unitDescController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // const Divider(
              //   color: Colors.grey,
              // ),
              // const Text(
              //   "Status",
              //   style: TextStyle(
              //       color: POSColor.primaryColorDark,
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold),
              // ),
              // ListTile(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   onTap: () {
              //     controller.unitActiveStatus.value =
              //         !controller.unitActiveStatus.value;
              //   },
              //   contentPadding: const EdgeInsets.only(
              //       left: 10, right: 10, top: 0, bottom: 0),
              //   title: const Text(
              //     "Unit Active status",
              //     style:
              //         TextStyle(fontSize: 14, color: POSColor.primaryColorDark),
              //   ),
              //   trailing: Obx(() => Switch(
              //       value: controller.unitActiveStatus.value,
              //       onChanged: (v) {
              //         controller.unitActiveStatus.value = v;
              //       })),
              // ),
              const SizedBox(
                height: 70,
              ),
              GradientButton(
                  height: 40,
                  child: Text(
                    "save".tr.toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    if (controller.isEditUnit.value) {
                      controller.updateUnit();
                    } else {
                      controller.addNewUnit();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
