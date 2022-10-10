import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/core/enums/coloring.dart';
import 'package:mobile_pos/core/temp/temp_data.dart';
import 'package:mobile_pos/modules/items/ui/controllers/items_controller.dart';

import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';

class CategoryAddPage extends GetView<ItemsController> {
  static const String route = "/category_add";
  const CategoryAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Categories"),
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
              DropdownButtonFormField<String>(
                hint: Text(
                  discountList.first,
                  style: const TextStyle(
                    color: POSColor.primaryColorDark,
                  ),
                ),
                isExpanded: true,
                items: discountList.map((i) {
                  return DropdownMenuItem<String>(
                      value: i,
                      child: Text(
                        i,
                        style: const TextStyle(
                          color: POSColor.primaryColorDark,
                        ),
                      ));
                }).toList(),
                onChanged: (v) {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Representation",
                style:
                    TextStyle(color: POSColor.primaryColorDark, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                width: Get.width,
                child: GridView.count(
                  crossAxisCount: 4,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 5,
                  children: [
                    gridViewItem(Colors.grey.shade300, Coloring.normal),
                    gridViewItem(Colors.deepOrange.shade600, Coloring.orange),
                    gridViewItem(Colors.red.shade600, Coloring.red),
                    gridViewItem(Colors.yellow.shade700, Coloring.yellow),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                width: Get.width,
                child: GridView.count(
                  crossAxisCount: 4,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 5,
                  children: [
                    gridViewItem(Colors.lightGreen, Coloring.green),
                    gridViewItem(Colors.green, Coloring.darkgreen),
                    gridViewItem(Colors.blue, Coloring.blue),
                    gridViewItem(Colors.purple, Coloring.purple),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GradientButton(
                  height: 40,
                  child: Text(
                    "Add Category".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget gridViewItem(Color color, Coloring c) {
    return InkWell(
      onTap: () => controller.selectedColor.value = c,
      child: Obx(() => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: controller.selectedColor.value == c
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
