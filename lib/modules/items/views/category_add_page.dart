import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';
import '../../../core/utils/color_utils.dart';
import '../controllers/items_controller.dart';

class CategoryAddPage extends GetView<ItemsController> {
  static const String route = "/category_add";
  const CategoryAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setUpCategoryEdit();
    return Scaffold(
      appBar: AppBar(
        title: Text(
            controller.isEditCategory.value ? "Edit Category" : "Add Category"),
        centerTitle: true,
        actions: [
          controller.isEditCategory.value
              ? IconButton(
                  onPressed: () {
                    controller.onClickDeleteCategory();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: POSColor.primaryColorDark,
                  ))
              : const SizedBox()
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Category name"),
                controller: controller.categoryNameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.categoryDetailController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Text(
                "Status",
                style: TextStyle(
                    color: POSColor.primaryColorDark,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () {
                  controller.categoryActiveStatus.value =
                      !controller.categoryActiveStatus.value;
                },
                contentPadding: const EdgeInsets.only(
                    left: 10, right: 10, top: 0, bottom: 0),
                title: const Text(
                  "Category Active status",
                  style:
                      TextStyle(fontSize: 14, color: POSColor.primaryColorDark),
                ),
                trailing: Obx(() => Switch(
                    value: controller.categoryActiveStatus.value,
                    onChanged: (v) {
                      controller.categoryActiveStatus.value = v;
                    })),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Representation",
                style:
                    TextStyle(color: POSColor.primaryColorDark, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: Get.width,
                  child: GridView.builder(
                    itemCount: controller.colors.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return gridViewItem(
                          POSColorUtils.getColor(controller.colors[index]),
                          index);
                    },
                  )),
              const SizedBox(
                height: 40,
              ),
              GradientButton(
                  height: 40,
                  child: Text(
                    "save".tr.toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    if (controller.isEditCategory.value) {
                      controller.updateCategory();
                    } else {
                      controller.addNewCategory();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget gridViewItem(Color color, int index) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => controller.selectedIndex.value = index,
      child: Obx(() => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: controller.selectedIndex.value == index
              ? const Center(
                  child: Icon(
                    Icons.done,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              : const SizedBox())),
    );
  }
}
