import 'package:get/get.dart';
import 'package:mobile_pos/modules/dashboard/ui/controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashBoardController());
  }
}
