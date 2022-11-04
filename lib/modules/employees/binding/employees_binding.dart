import 'package:get/get.dart';
import 'package:mobile_pos/modules/employees/controllers/employees_controller.dart';

class EmployeesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EmployeesController());
  }
}
