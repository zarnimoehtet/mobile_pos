import 'package:get/get.dart';
import 'package:mobile_pos/modules/ads/ui/controllers/ads_controller.dart';

class AdsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AdsController());
  }
}
