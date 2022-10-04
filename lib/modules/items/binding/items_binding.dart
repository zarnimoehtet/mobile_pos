import 'package:get/get.dart';
import 'package:mobile_pos/modules/items/ui/controllers/items_controller.dart';

class ItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ItemsController());
  }
}
