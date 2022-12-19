import 'package:get/get.dart';
import 'package:mobile_pos/modules/purchase/controllers/purchase_controller.dart';

class PurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PurchaseController());
  }
}
