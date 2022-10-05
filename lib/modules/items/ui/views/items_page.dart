import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/home/ui/views/home_page.dart';
import 'package:mobile_pos/modules/items/ui/views/category_add_page.dart';
import 'package:mobile_pos/modules/items/ui/views/discount_add_page.dart';
import 'package:mobile_pos/modules/items/ui/views/items_add_page.dart';

import '../../../../core/constants/colors.dart';
import '../controllers/items_controller.dart';

class ItemsPage extends GetView<ItemsController> {
  static const String route = "/items";
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        itemsInputCard(Icons.list, "Items", () {
          Get.toNamed(HomePage.route + ItemsPage.route + ItemsAddPage.route);
        }),
        itemsInputCard(Icons.interests_outlined, "Categories", () {
          Get.toNamed(HomePage.route + ItemsPage.route + CategoryAddPage.route);
        }),
        itemsInputCard(Icons.discount_outlined, "Discounts", () {
          Get.toNamed(HomePage.route + ItemsPage.route + DiscountAddPage.route);
        }),
      ],
    ));
  }

  Widget itemsInputCard(IconData icon, String name, Function() onClick) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: InkWell(
        onTap: onClick,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(
                icon,
                size: 30,
                color: POSColor.primaryColorDark,
              ),
              const SizedBox(width: 20),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 18, color: POSColor.primaryColorDark),
              )
            ],
          ),
        ),
      ),
    );
  }
}
