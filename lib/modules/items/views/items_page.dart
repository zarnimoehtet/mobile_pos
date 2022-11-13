import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/colors.dart';
import '../../../core/utils/my_p_o_s_icons.dart';
import '../../home/views/home_page.dart';
import '../controllers/items_controller.dart';
import 'category_list_page.dart';
import 'unit_list_page.dart';
import 'items_list_page.dart';

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
          Get.toNamed(HomePage.route + ItemsPage.route + ItemsListPage.route);
        }),
        itemsInputCard(Icons.interests_outlined, "Categories", () {
          Get.toNamed(
              HomePage.route + ItemsPage.route + CategoryListPage.route);
        }),
        itemsInputCard(Icons.interests_outlined, "Units", () {
          Get.toNamed(HomePage.route + ItemsPage.route + UnitListPage.route);
        }, isIcon: false, image: "assets/images/weight.png"),
      ],
    ));
  }

  Widget itemsInputCard(IconData icon, String name, Function() onClick,
      {bool isIcon = true, String image = ""}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onClick,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              isIcon
                  ? Icon(
                      icon,
                      size: 30,
                      color: POSColor.primaryColorDark,
                    )
                  : Image.asset(
                      image,
                      width: 39,
                      height: 30,
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
