import 'package:get/get.dart';
import 'package:mobile_pos/modules/auth/ui/views/login_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 5),
      () => Get.offAndToNamed(LoginPage.route),
    );
    super.onInit();
  }
}
