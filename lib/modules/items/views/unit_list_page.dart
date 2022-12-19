import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/items/controllers/items_controller.dart';
import 'package:mobile_pos/modules/items/views/items_page.dart';
import 'package:mobile_pos/modules/items/views/unit_add_page.dart';
import '../../../data/model/unit.dart';
import '../../home/views/home_page.dart';

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
            controller.editUnit.value = null;
            controller.isEditUnit.value = false;
            Get.toNamed(HomePage.route + ItemsPage.route + UnitAddPage.route);
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
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Text(
                  controller.error.value.toString(),
                  textAlign: TextAlign.center,
                ),
              );
            } else {
              return ListView.builder(
                controller: controller.unitScrollController,
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
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
        child: ListTile(
          onTap: () {
            controller.editUnit.value = unit;
            controller.isEditUnit.value = true;
            Get.toNamed(HomePage.route + ItemsPage.route + UnitAddPage.route);
          },
          title: Text(
            unit.name ?? "",
            style:
                const TextStyle(color: POSColor.primaryColorDark, fontSize: 16),
          ),
          subtitle: Text(
            unit.desc ?? "",
            style:
                const TextStyle(color: POSColor.primaryColorDark, fontSize: 12),
          ),
        ));
  }
}
