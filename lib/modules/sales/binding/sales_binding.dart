import 'package:get/get.dart';
import 'package:mobile_pos/modules/sales/controllers/sales_controller.dart';

class SalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SalesController());
  }
}
