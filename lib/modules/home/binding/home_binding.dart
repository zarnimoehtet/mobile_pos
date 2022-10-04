import 'package:get/get.dart';
import 'package:mobile_pos/modules/home/ui/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
