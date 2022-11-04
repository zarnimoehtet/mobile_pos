import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/sales/ui/controllers/sales_controller.dart';

import '../../../../core/custom/gradient_button.dart';
import '../custom/vouncher_item.dart';

class VouncherPage extends GetView<SalesController> {
  static const String route = "/sales-vouncher";
  const VouncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale Vouncher"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_add,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
              ))
        ],
      ),
      body: Stack(
        children: [
          itemListArea(),
          Align(alignment: FractionalOffset.bottomCenter, child: priceArea()),
        ],
      ),
    );
  }

  Widget itemListArea() {
    return Padding(
      padding: EdgeInsets.only(bottom: Get.width * 0.22),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return VouncherItem(index == 0 ? "Coffee" : "Milk");
        },
      ),
    );
  }

  Widget priceArea() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(15),
      elevation: 2,
      child: Container(
        height: Get.height * 0.17,
        width: Get.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Obx(() => Text(
                      "MMK ${controller.totalCharges}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 0),
                    child: GradientButton(
                        radius: BorderRadius.circular(10),
                        height: 40,
                        child: Text(
                          "Hold".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        onTap: () {}),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: GradientButton(
                        radius: BorderRadius.circular(10),
                        height: 40,
                        child: Text(
                          "Credit".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        onTap: () {}),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0, left: 10),
                    child: GradientButton(
                        radius: BorderRadius.circular(10),
                        height: 40,
                        child: Text(
                          "Cash".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        onTap: () {}),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
