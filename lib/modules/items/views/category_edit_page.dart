import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';
import '../../../core/utils/color_utils.dart';
import '../controllers/items_controller.dart';

class CategoryEditPage extends GetView<ItemsController> {
  static const String route = "/category_edit";
  const CategoryEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.categoryNameEditController.text =
        controller.editCategory.value?.name ?? "";
    controller.categoryDetailEditController.text =
        controller.editCategory.value?.description ?? "";
    controller.findIndexOfColor(controller.editCategory.value?.color ?? "");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Category"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Category name"),
                controller: controller.categoryNameEditController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: normalInputDecoration(hinttext: "Description"),
                controller: controller.categoryDetailEditController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                cursorColor: POSColor.primaryColorDark,
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
                    "Edit Category".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    controller.updateCategory();
                  }),
              const SizedBox(
                height: 20,
              ),
              GradientButton(
                  height: 40,
                  child: Text(
                    "Delete Category".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    controller.onClickDeleteCategory();
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
      onTap: () => controller.selectedEditIndex.value = index,
      child: Obx(() => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: controller.selectedEditIndex.value == index
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
