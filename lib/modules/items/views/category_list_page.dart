import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/modules/items/controllers/items_controller.dart';

import '../../../core/utils/color_utils.dart';
import '../../home/views/home_page.dart';
import 'category_add_page.dart';
import 'items_page.dart';

class CategoryListPage extends GetView<ItemsController> {
  static const String route = "/category_list";
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fetchCategory(0);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.editCategory.value = null;
            controller.isEditCategory.value = false;
            Get.toNamed(
                HomePage.route + ItemsPage.route + CategoryAddPage.route);
          },
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.fetchCategory(0);
          },
          child: Obx(() {
            if (controller.isLoading.value && controller.categoryList.isEmpty) {
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
              return ListView.separated(
                  controller: controller.categoryScrollController,
                  itemCount: controller.categoryList.length,
                  itemBuilder: (context, index) {
                    return categoryItem(controller.categoryList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        color: Colors.grey.shade300,
                        height: 1,
                      ),
                    );
                  });
            }
          }),
        ));
  }

  Widget categoryItem(Category category) {
    return ListTile(
      onTap: () {
        controller.editCategory.value = category;
        controller.isEditCategory.value = true;
        Get.toNamed(HomePage.route + ItemsPage.route + CategoryAddPage.route);
      },
      contentPadding: const EdgeInsets.only(left: 15, right: 15),
      title: Text(
        category.name ?? "",
        style: const TextStyle(color: POSColor.primaryColorDark),
      ),
      subtitle: Text(
        category.description ?? "",
        style: const TextStyle(
          color: POSColor.primaryColorDark,
        ),
      ),
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: POSColorUtils.getColor(category.color!),
        child: Center(
          child: Text(
            category.name!.substring(0, 1),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      // trailing: const Text(
      //   "1 item",
      //   style: TextStyle(color: POSColor.blackTextColorOp99),
      // ),
    );
  }
}
