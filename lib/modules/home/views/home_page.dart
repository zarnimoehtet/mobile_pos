import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/dashboard/ui/views/dashboard_page.dart';
import 'package:mobile_pos/modules/employees/views/employees_page.dart';
import 'package:mobile_pos/modules/expense/ui/view/expense_page.dart';
import 'package:mobile_pos/modules/notification/ui/views/notification_page.dart';
import 'package:mobile_pos/modules/receipts/ui/views/receipts_page.dart';
import 'package:mobile_pos/modules/sales/ui/views/sales_page.dart';
import 'package:mobile_pos/modules/stock/ui/views/stock_page.dart';

import '../../../../core/constants/colors.dart';
import '../../../core/custom/profile_image.dart';
import '../../../core/custom/state_dialog.dart';
import '../../items/views/items_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  static const String route = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "YHS Multi POS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(HomePage.route + NotificationPage.route);
              },
              icon: const Icon(
                Icons.notifications_none_rounded,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.lock_outline_rounded,
              ))
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, bottom: 20),
                height: 180 + MediaQuery.of(context).padding.top,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    gradient: POSColor.primaryGradientColorLR),
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Obx(() => ProfileImage(
                          controller.currentUser.value?.logo ?? "",
                        )),
                    const SizedBox(height: 10),
                    Obx(() => Text(
                          controller.currentUser.value?.shop?.name ?? "",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        )),
                    const SizedBox(height: 5),
                    Obx(() => Text(
                          "${controller.currentEmp.value?.name} [${controller.currentEmp.value?.role}]",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        )),
                  ],
                ),
              ),
              ListTile(
                title: const Text("Dashboard"),
                leading: const Icon(
                  Icons.auto_awesome_mosaic_outlined,
                ),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {
                  Get.back();
                  controller.tabIndex.value = 0;
                },
              ),
              ListTile(
                title: const Text("Sales"),
                leading: const Icon(Icons.shopping_basket_outlined),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {
                  Get.back();
                  controller.tabIndex.value = 1;
                },
              ),
              ListTile(
                title: const Text("Stock Management"),
                leading: const Icon(Icons.note_alt_outlined),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {
                  Get.back();
                  controller.tabIndex.value = 2;
                },
              ),
              ListTile(
                title: const Text("Products"),
                leading: const Icon(Icons.data_array_rounded),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {
                  Get.back();
                  controller.tabIndex.value = 3;
                },
              ),
              ListTile(
                title: const Text("Receipts"),
                leading: const Icon(Icons.receipt_outlined),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {
                  Get.back();
                  controller.tabIndex.value = 4;
                },
              ),
              ListTile(
                title: const Text("Employees"),
                leading: const Icon(Icons.supervisor_account_outlined),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {
                  Get.back();
                  controller.tabIndex.value = 5;
                },
              ),
              ListTile(
                title: const Text("Expenses"),
                leading: const Icon(Icons.bar_chart_rounded),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {
                  Get.back();
                  controller.tabIndex.value = 6;
                },
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
              ),
              ListTile(
                title: const Text("Settings"),
                leading: const Icon(Icons.settings_outlined),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {},
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
              ),
              ListTile(
                title: const Text("Check update"),
                leading: const Icon(Icons.update),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                title: const Text("Privacy policy"),
                leading: const Icon(Icons.shield_outlined),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {},
              ),
              ListTile(
                title: const Text("Logout"),
                leading: const Icon(Icons.logout),
                textColor: POSColor.primaryColorDark,
                iconColor: POSColor.primaryColorDark,
                minLeadingWidth: 0,
                onTap: () {
                  showMessageDialog(
                      "ask_emp_logout".trParams(
                          {"value": controller.currentEmp.value?.name ?? ""}),
                      actions: [
                        TextButton(
                            onPressed: Get.back,
                            child: Text("cancel".tr.toUpperCase())),
                        TextButton(
                            onPressed: () {
                              Get.back();
                              controller.empLogout();
                            },
                            child: Text("logout".tr.toUpperCase())),
                      ]);
                },
              ),
            ],
          ))
        ],
      )),
      body: Obx(
        () => IndexedStack(index: controller.tabIndex.value, children: const [
          DashboardPage(),
          SalesPage(),
          StockPage(),
          ItemsPage(),
          ReceiptsPage(),
          EmployeesPage(),
          ExpensePage()
        ]),
      ),
    );
  }
}
