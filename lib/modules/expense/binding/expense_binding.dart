import 'package:get/get.dart';
import 'package:mobile_pos/modules/expense/controller/expense_controller.dart';

class ExpenseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ExpenseController());
  }
}
