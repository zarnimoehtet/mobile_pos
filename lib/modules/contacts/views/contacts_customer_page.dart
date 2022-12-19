import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/contacts/controllers/contacts_controller.dart';
import 'package:mobile_pos/modules/contacts/views/customer_add_page.dart';

import '../../../../core/constants/colors.dart';
import '../../../../data/model/customer.dart';
import '../../home/views/home_page.dart';
import 'contacts_page.dart';

class ContactsCustomerPage extends GetView<ContactsController> {
  const ContactsCustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
      onRefresh: () async {
        controller.fetchCustomer(0);
      },
      child: Obx(() {
        if (controller.isLoading.value && controller.customerList.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(POSColor.primaryColorDark),
            ),
          );
        } else if (controller.error.value?.isNotEmpty ?? false) {
          return Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Text(
              controller.error.value.toString(),
              textAlign: TextAlign.center,
            ),
          );
        } else {
          return ListView.builder(
            controller: controller.customerScrollController,
            itemCount: controller.customerList.length,
            itemBuilder: (context, index) {
              return customerItems(
                  context, controller.customerList[index], index == 0);
            },
          );
        }
      }),
    ));
  }

  Widget customerItems(BuildContext context, Customer sup, bool isFirstItem) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: isFirstItem
            ? const EdgeInsets.only(left: 10, right: 10, top: 65, bottom: 10)
            : const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
        child: ListTile(
            onTap: () {
              controller.editCustomer.value = sup;
              controller.isEditCustomer.value = true;
              Get.toNamed(
                  HomePage.route + ContactsPage.route + CustomerAddPage.route);
            },
            title: Text(
              sup.name ?? "",
              style: const TextStyle(
                  color: POSColor.primaryColorDark, fontSize: 16),
            ),
            subtitle: Text(
              sup.desc ?? "",
              style: const TextStyle(
                  color: POSColor.primaryColorDark, fontSize: 12),
            ),
            trailing: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Calling to customer")));
              },
              child: const CircleAvatar(
                maxRadius: 18,
                backgroundColor: POSColor.primaryColorDark,
                child: Center(
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
              ),
            )));
  }
}
