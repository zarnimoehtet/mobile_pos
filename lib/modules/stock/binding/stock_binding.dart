import 'package:get/get.dart';
import 'package:mobile_pos/modules/stock/ui/controllers/stock_controller.dart';

class StockBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StockController());
  }
}
