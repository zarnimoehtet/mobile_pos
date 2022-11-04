import 'package:get/get.dart';

import '../controller/shop_login_controller.dart';

class ShopLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ShopLoginController());
  }
}
