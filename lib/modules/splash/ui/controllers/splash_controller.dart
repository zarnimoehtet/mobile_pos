import 'package:get/get.dart';
import 'package:mobile_pos/modules/ads/ui/views/ads_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 5),
      () => Get.offAndToNamed(AdsPage.route),
    );
    super.onInit();
  }
}
