import 'package:get/get.dart';
import '../ui/controllers/receipts_controller.dart';

class ReceiptsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ReceiptsController());
  }
}
