import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/contacts/controllers/contacts_controller.dart';
import 'package:mobile_pos/modules/contacts/views/contacts_customer_page.dart';
import 'package:mobile_pos/modules/contacts/views/contacts_supplier_page.dart';
import 'package:mobile_pos/modules/contacts/views/customer_add_page.dart';
import 'package:mobile_pos/modules/contacts/views/supplier_add_page.dart';

import '../../../../core/constants/colors.dart';
import '../../home/views/home_page.dart';

class ContactsPage extends GetView<ContactsController> {
  static const String route = "/contacts";
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          heroTag:
              controller.tabIndex.value == 0 ? "Add Customer" : "Add Supplier",
          onPressed: () {
            if (controller.tabIndex.value == 1) {
              controller.editSupplier.value = null;
              controller.isEditSupplier.value = false;
              Get.toNamed(
                  HomePage.route + ContactsPage.route + SupplierAddPage.route);
            } else {
              controller.editCustomer.value = null;
              controller.isEditCustomer.value = false;
              Get.toNamed(
                  HomePage.route + ContactsPage.route + CustomerAddPage.route);
            }
          },
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            PageView(
                controller: controller.pageController,
                onPageChanged: ((value) => controller.tabIndex.value = value),
                children: const [
                  ContactsCustomerPage(),
                  ContactsSupplierPage()
                ]),
            _filter(context),
          ],
        ));
  }

  Widget _filter(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8, left: 10, right: 10),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Obx(() => Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () async {
                  controller.changePage(0);
                },
                child: Container(
                  width: (Get.width - 20) * 0.48,
                  margin: const EdgeInsets.all(3),
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 6, right: 6),
                  decoration: BoxDecoration(
                      color: controller.tabIndex.value == 0
                          ? POSColor.primaryColorDark
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "Customer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: controller.tabIndex.value == 0
                            ? Colors.white
                            : POSColor.primaryColorDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  controller.changePage(1);
                },
                child: Container(
                  width: (Get.width - 20) * 0.48,
                  margin: const EdgeInsets.all(3),
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 6, right: 6),
                  decoration: BoxDecoration(
                      color: controller.tabIndex.value == 1
                          ? POSColor.primaryColorDark
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "Supplier",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: controller.tabIndex.value == 1
                            ? Colors.white
                            : POSColor.primaryColorDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
