import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/temp/temp_data.dart';
import 'package:mobile_pos/modules/home/ui/views/home_page.dart';
import 'package:mobile_pos/modules/sales/ui/controllers/sales_controller.dart';
import 'package:mobile_pos/modules/sales/ui/views/vouncher_page.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/custom/border_input_decoration.dart';

class SalesPage extends GetView<SalesController> {
  static const String route = "/sales";
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [totalChargesArea(), actionPanel(), itemListArea()],
    ));
  }

  Widget totalChargesArea() {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Get.toNamed(HomePage.route + SalesPage.route + VouncherPage.route);
      },
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total charges",
                  style: TextStyle(color: POSColor.blackTextColorOp99),
                ),
                const SizedBox(
                  height: 2,
                ),
                Obx(() => Text(
                      "MMK ${controller.totalCharges}",
                      style: const TextStyle(color: Colors.black, fontSize: 25),
                    )),
                const SizedBox(
                  height: 2,
                ),
                Obx(() => Text(
                      "${controller.totalItem} item",
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget actionPanel() {
    return Container(
      height: 50,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
      child: Obx(
        () => Row(
          children: [
            Obx(() => Flexible(
                  flex: 7,
                  child: controller.isSearch.value
                      ? TextFormField(
                          decoration: normalInputDecoration(
                              enableUnderLine: true,
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10)),
                          controller: controller.searchItemController,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          cursorColor: POSColor.primaryColorDark,
                          autofocus: true,
                        )
                      : DropdownButtonFormField<String>(
                          decoration: normalInputDecoration(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              hinttext: itemFilter.first,
                              color: POSColor.blackTextColorOp99,
                              alignLabelWithHint: false,
                              enableUnderLine: true),
                          isExpanded: true,
                          items: itemFilter.map((i) {
                            return DropdownMenuItem<String>(
                                value: i,
                                child: Text(
                                  i,
                                  style: const TextStyle(
                                    color: POSColor.blackTextColorOp99,
                                  ),
                                ));
                          }).toList(),
                          onChanged: (v) {},
                        ),
                )),
            controller.isSearch.value
                ? const SizedBox()
                : Container(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
            Flexible(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      controller.isSearch.value = !controller.isSearch.value;
                      if (controller.searchItemController.text.isNotEmpty) {
                        controller.searchItemController.clear();
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Obx(() => Icon(
                            controller.isSearch.value
                                ? Icons.close
                                : Icons.search,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/barcode.png',
                          width: 30,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemListArea() {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {},
        child: ListView.separated(
            itemCount: 2,
            itemBuilder: (context, index) {
              return item(index == 0 ? "Coffee" : "Milk", index % 2 == 1);
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Divider(
                  color: Colors.grey.shade300,
                  height: 1,
                ),
              );
            }),
      ),
    );
  }

  Widget item(String title, bool isColored) {
    return Container(
      color: isColored ? Colors.grey.shade200 : Colors.transparent,
      child: ListTile(
        onTap: () {
          controller.totalItem.value++;
          controller.totalCharges.value += 800;
        },
        contentPadding: const EdgeInsets.only(left: 15, right: 15),
        title: Text(
          title,
          style: const TextStyle(color: POSColor.textColor),
        ),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.red.shade600,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              "MMK 800",
              style: TextStyle(color: POSColor.textColor),
            ),
            Text(
              "20% off",
              style:
                  TextStyle(color: POSColor.blackTextColorOp99, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
