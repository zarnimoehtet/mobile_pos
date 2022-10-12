import 'package:get/get.dart';
import 'package:mobile_pos/modules/expense/ui/controller/expense_controller.dart';

class ExpenseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ExpenseController());
  }
}
