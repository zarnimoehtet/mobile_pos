import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/balance_notes/views/balance_notes_page.dart';
import 'package:mobile_pos/modules/contacts/views/contacts_page.dart';
import 'package:mobile_pos/modules/dashboard/ui/views/dashboard_page.dart';
import 'package:mobile_pos/modules/employees/views/employees_page.dart';
import 'package:mobile_pos/modules/expense/view/expense_page.dart';
import 'package:mobile_pos/modules/notification/ui/views/notification_page.dart';
import 'package:mobile_pos/modules/purchase/views/purchase_page.dart';
import 'package:mobile_pos/modules/receipts/views/receipts_page.dart';
import 'package:mobile_pos/modules/sales/views/sales_page.dart';

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
              child: Obx(() => ListView(
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
                                  controller.currentUser.value?.shop?.name ??
                                      "",
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
                      Container(
                        color: controller.tabIndex.value == 0
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Summary"),
                          leading: SvgPicture.asset(
                            'assets/svg/chart-histogram.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 0;
                          },
                        ),
                      ),
                      Container(
                        color: controller.tabIndex.value == 1
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Sales"),
                          leading: SvgPicture.asset(
                            'assets/svg/shopping-cart.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 1;
                          },
                        ),
                      ),
                      Container(
                        color: controller.tabIndex.value == 2
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Purchase"),
                          leading: SvgPicture.asset(
                            'assets/svg/truck-loading.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 2;
                          },
                        ),
                      ),
                      Container(
                        color: controller.tabIndex.value == 3
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Inventory"),
                          leading: SvgPicture.asset(
                            'assets/svg/boxes.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 3;
                          },
                        ),
                      ),
                      Container(
                        color: controller.tabIndex.value == 4
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Receipts"),
                          leading: SvgPicture.asset(
                            'assets/svg/receipt.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 4;
                          },
                        ),
                      ),
                      Container(
                        color: controller.tabIndex.value == 5
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Contacts"),
                          leading: SvgPicture.asset(
                            'assets/svg/portrait.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 5;
                          },
                        ),
                      ),
                      Container(
                        color: controller.tabIndex.value == 6
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Balance Notes"),
                          leading: SvgPicture.asset(
                            'assets/svg/file-invoice-dollar.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 6;
                          },
                        ),
                      ),
                      Container(
                        color: controller.tabIndex.value == 7
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Expense Manager"),
                          leading: SvgPicture.asset(
                            'assets/svg/wallet.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 7;
                          },
                        ),
                      ),
                      Container(
                        color: controller.tabIndex.value == 8
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.transparent,
                        child: ListTile(
                          title: const Text("Employees"),
                          leading: SvgPicture.asset(
                            'assets/svg/users.svg',
                            height: 20,
                            color: POSColor.primaryColorDark,
                          ),
                          textColor: POSColor.primaryColorDark,
                          iconColor: POSColor.primaryColorDark,
                          minLeadingWidth: 0,
                          onTap: () {
                            Get.back();
                            controller.tabIndex.value = 8;
                          },
                        ),
                      ),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      ListTile(
                        title: const Text("Settings"),
                        leading: SvgPicture.asset(
                          'assets/svg/settings.svg',
                          height: 20,
                          color: POSColor.primaryColorDark,
                        ),
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
                        leading: SvgPicture.asset(
                          'assets/svg/time-past.svg',
                          height: 20,
                          color: POSColor.primaryColorDark,
                        ),
                        textColor: POSColor.primaryColorDark,
                        iconColor: POSColor.primaryColorDark,
                        minLeadingWidth: 0,
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("Privacy policy"),
                        leading: SvgPicture.asset(
                          'assets/svg/shield-check.svg',
                          height: 20,
                          color: POSColor.primaryColorDark,
                        ),
                        textColor: POSColor.primaryColorDark,
                        iconColor: POSColor.primaryColorDark,
                        minLeadingWidth: 0,
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("Logout"),
                        leading: SvgPicture.asset(
                          'assets/svg/exit.svg',
                          height: 20,
                          color: POSColor.primaryColorDark,
                        ),
                        textColor: POSColor.primaryColorDark,
                        iconColor: POSColor.primaryColorDark,
                        minLeadingWidth: 0,
                        onTap: () {
                          showMessageDialog(
                              "ask_emp_logout".trParams({
                                "value": controller.currentEmp.value?.name ?? ""
                              }),
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
                  )))
        ],
      )),
      body: Obx(
        () => IndexedStack(index: controller.tabIndex.value, children: const [
          DashboardPage(),
          SalesPage(),
          PurchasePage(),
          ItemsPage(),
          ReceiptsPage(),
          ContactsPage(),
          BalanceNotesPage(),
          ExpensePage(),
          EmployeesPage(),
        ]),
      ),
    );
  }
}
