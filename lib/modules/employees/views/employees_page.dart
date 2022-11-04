import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:mobile_pos/data/model/employee.dart';
import 'package:mobile_pos/modules/employees/controllers/employees_controller.dart';
import 'package:mobile_pos/modules/employees/views/employee_add_page.dart';
import 'package:mobile_pos/modules/employees/views/employee_edit_page.dart';

import '../../../../core/constants/colors.dart';
import '../../home/views/home_page.dart';

class EmployeesPage extends GetView<EmployeesController> {
  static const String route = "/employees";
  const EmployeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(
                HomePage.route + EmployeesPage.route + EmployeeAddPage.route);
          },
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: RefreshIndicator(
            child: Obx(() {
              if (controller.isLoading.value && controller.empList.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        POSColor.primaryColorDark),
                  ),
                );
              } else if (controller.error.value?.isNotEmpty ?? false) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    controller.error.value.toString(),
                    textAlign: TextAlign.center,
                  ),
                );
              } else {
                return GroupedListView<EmployeeItem, String>(
                  elements: controller.empList.toList(),
                  groupBy: (element) => element.role!,
                  groupComparator: (value1, value2) => value1.compareTo(value2),
                  itemComparator: (item1, item2) =>
                      item1.createdAt!.compareTo(item2.createdAt!),
                  order: GroupedListOrder.ASC,
                  groupSeparatorBuilder: (String value) => Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      value,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                  itemBuilder: (c, element) {
                    return ListTile(
                      onTap: () {
                        controller.editEmployee.value = element;
                        Get.toNamed(HomePage.route +
                            EmployeesPage.route +
                            EmployeeEditPage.route);
                      },
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 0),
                      //leading: Icon(Icons.account_circle),
                      title: Text(
                        element.name ?? "",
                        style: const TextStyle(fontSize: 15),
                      ),
                      subtitle: Text(
                        (element.status ?? false) ? "Accepted" : "Pending",
                        style: const TextStyle(
                            fontSize: 12, color: POSColor.textColor),
                      ),
                    );
                  },
                );
              }
            }),
            onRefresh: () async {}));
  }
}
