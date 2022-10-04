import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile_pos/modules/employees/ui/controllers/employees_controller.dart';

import '../../../../core/constants/colors.dart';

class EmployeesPage extends GetView<EmployeesController> {
  static const String route = "/employees";
  const EmployeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Employees",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
