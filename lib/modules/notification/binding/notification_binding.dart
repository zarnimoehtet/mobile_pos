import 'package:get/get.dart';
import 'package:mobile_pos/modules/notification/ui/controllers/notification_controller.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NotificationController());
  }
}
