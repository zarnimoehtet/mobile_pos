import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/items/controllers/items_controller.dart';
import '../../../data/model/unit.dart';
import '../../home/views/home_page.dart';
import 'items_page.dart';

class UnitListPage extends GetView<ItemsController> {
  static const String route = "/unit_list";
  const UnitListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fetchUnit(0);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Units"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Get.toNamed(
            //     HomePage.route + ItemsPage.route + DiscountAddPage.route);
          },
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.fetchUnit(0);
          },
          child: Obx(() {
            if (controller.isLoading.value && controller.unitList.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(POSColor.primaryColorDark),
                ),
              );
            } else if (controller.error.value?.isNotEmpty ?? false) {
              return Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  controller.error.value.toString(),
                  textAlign: TextAlign.center,
                ),
              );
            } else {
              return ListView.builder(
                itemCount: controller.unitList.length,
                itemBuilder: (context, index) {
                  return unitItems(controller.unitList[index]);
                },
              );
            }
          }),
        ));
  }

  Widget unitItems(Unit unit) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        child: ListTile(
          title: Text(
            unit.name ?? "",
            style: const TextStyle(color: POSColor.textColor, fontSize: 16),
          ),
          subtitle: Text(
            unit.desc ?? "",
            style: const TextStyle(color: POSColor.textColor, fontSize: 12),
          ),
        ));
  }
}
