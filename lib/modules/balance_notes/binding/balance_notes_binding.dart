import 'package:get/instance_manager.dart';
import 'package:mobile_pos/modules/balance_notes/controllers/balance_controller.dart';

class BalanceNotesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BalanceNoteController());
  }
}
