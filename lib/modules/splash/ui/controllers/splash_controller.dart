import 'package:get/get.dart';
import 'package:mobile_pos/modules/home/ui/views/home_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 5),
      () => Get.offAndToNamed(HomePage.route),
    );
    super.onInit();
  }
}
