import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile_pos/modules/notification/ui/controllers/notification_controller.dart';

import '../../../../core/constants/colors.dart';

class NotificationPage extends GetView<NotificationController> {
  static const String route = "/notification";
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: const Center(
        child: Text(
          "Notification",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
