import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/contacts/controllers/contacts_controller.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';

class CustomerAddPage extends GetView<ContactsController> {
  static const String route = "/customer_add";
  const CustomerAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setupEditCustomer();
    return Scaffold(
      appBar: AppBar(
        title: Text(
            controller.isEditCustomer.value ? "Edit Customer" : "Add Customer"),
        centerTitle: true,
        actions: [
          controller.isEditCustomer.value
              ? IconButton(
                  onPressed: () {
                    controller.onClickDeleteCustomer();
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
                decoration: normalInputDecoration(hinttext: "Customer name"),
                controller: controller.customerNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Phone"),
                controller: controller.customerPhoneController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Email"),
                controller: controller.customerEmailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Address"),
                controller: controller.customerAddressController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.customerDescController,
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
              //     controller.customerStatus.value =
              //         !controller.customerStatus.value;
              //   },
              //   contentPadding: const EdgeInsets.only(
              //       left: 10, right: 10, top: 0, bottom: 0),
              //   title: const Text(
              //     "Customer Active status",
              //     style:
              //         TextStyle(fontSize: 14, color: POSColor.primaryColorDark),
              //   ),
              //   trailing: Obx(() => Switch(
              //       value: controller.customerStatus.value,
              //       onChanged: (v) {
              //         controller.customerStatus.value = v;
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
                    if (controller.isEditCustomer.value) {
                      controller.updateCustomer();
                    } else {
                      controller.addNewCustomer();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
