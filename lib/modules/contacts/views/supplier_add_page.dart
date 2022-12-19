import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/contacts/controllers/contacts_controller.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';

class SupplierAddPage extends GetView<ContactsController> {
  static const String route = "/supplier_add";
  const SupplierAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setupEditSupplier();
    return Scaffold(
      appBar: AppBar(
        title: Text(
            controller.isEditSupplier.value ? "Edit Supplier" : "Add Supplier"),
        centerTitle: true,
        actions: [
          controller.isEditSupplier.value
              ? IconButton(
                  onPressed: () {
                    controller.onClickDeleteSupplier();
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
                decoration: normalInputDecoration(hinttext: "Supplier name"),
                controller: controller.supplierNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Phone"),
                controller: controller.supplierPhoneController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Email"),
                controller: controller.supplierEmailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Address"),
                controller: controller.supplierAddressController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.supplierDescController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                cursorColor: POSColor.primaryColorDark,
              ),
              // const SizedBox(
              //   height: 30,
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
              //     controller.supplierStatus.value =
              //         !controller.supplierStatus.value;
              //   },
              //   contentPadding: const EdgeInsets.only(
              //       left: 10, right: 10, top: 0, bottom: 0),
              //   title: const Text(
              //     "Supplier Active status",
              //     style:
              //         TextStyle(fontSize: 14, color: POSColor.primaryColorDark),
              //   ),
              //   trailing: Obx(() => Switch(
              //       value: controller.supplierStatus.value,
              //       onChanged: (v) {
              //         controller.supplierStatus.value = v;
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
                    if (controller.isEditSupplier.value) {
                      controller.updateSupplier();
                    } else {
                      controller.addNewSupplier();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
