import 'package:get/get.dart';
import 'package:mobile_pos/modules/auth/ui/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
