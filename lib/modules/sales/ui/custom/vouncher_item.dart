import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/sales/ui/controllers/sales_controller.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/custom/gradient_button.dart';

class VouncherItem extends StatefulWidget {
  final String title;

  const VouncherItem(this.title, {Key? key}) : super(key: key);

  @override
  State<VouncherItem> createState() => _VouncherItemState();
}

class _VouncherItemState extends State<VouncherItem> {
  final SalesController controller = Get.find();
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding:
            const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        title: Text(
          widget.title,
          style: const TextStyle(color: POSColor.textColor),
        ),
        subtitle: const Text(
          "MMK 800",
          style: TextStyle(color: POSColor.blackTextColorOp99),
        ),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.red.shade600,
        ),
        trailing: SizedBox(
          width: Get.width * 0.3,
          child: Row(
            children: [
              GradientButton(
                width: 30,
                height: 30,
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {
                  setState(() {
                    if (count > 1) {
                      count--;
                    }
                  });
                },
              ),
              Text(
                "$count",
                style: const TextStyle(color: POSColor.textColor, fontSize: 16),
              ),
              GradientButton(
                width: 30,
                height: 30,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
