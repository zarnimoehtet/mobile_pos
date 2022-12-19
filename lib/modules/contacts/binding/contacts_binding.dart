import 'package:get/instance_manager.dart';
import 'package:mobile_pos/modules/contacts/controllers/contacts_controller.dart';

class ContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ContactsController());
  }
}
