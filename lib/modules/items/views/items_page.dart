import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/constants/colors.dart';
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
    controller.fetchCategory(0);
    controller.fetchItem(0);
    controller.fetchUnit(0);
    // controller.generateItemFilter();
    return Scaffold(
        body: Obx(() => ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                itemsInputCard(Icons.list, "Items", controller.itemList.length,
                    () {
                  Get.toNamed(
                      HomePage.route + ItemsPage.route + ItemsListPage.route);
                }),
                itemsInputCard(Icons.interests_outlined, "Items Adjustment", 0,
                    () {
                  // Get.toNamed(
                  //     HomePage.route + ItemsPage.route + UnitListPage.route);
                }, isIcon: false, isSVG: true, image: "assets/svg/refresh.svg"),
                itemsInputCard(Icons.interests_outlined, "Categories",
                    controller.categoryList.length, () {
                  Get.toNamed(HomePage.route +
                      ItemsPage.route +
                      CategoryListPage.route);
                }),
                itemsInputCard(Icons.interests_outlined, "Units",
                    controller.unitList.length, () {
                  Get.toNamed(
                      HomePage.route + ItemsPage.route + UnitListPage.route);
                }, isIcon: false, image: "assets/images/weight.png"),
              ],
            )));
  }

  Widget itemsInputCard(
      IconData icon, String name, int count, Function() onClick,
      {bool isIcon = true, bool isSVG = false, String image = ""}) {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  isIcon
                      ? Icon(
                          icon,
                          size: 30,
                          color: POSColor.primaryColorDark,
                        )
                      : isSVG
                          ? SvgPicture.asset(
                              image,
                              width: 25,
                              height: 25,
                              color: POSColor.primaryColorDark,
                            )
                          : Image.asset(
                              image,
                              width: 39,
                              height: 30,
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
              CircleAvatar(
                radius: 15,
                backgroundColor: POSColor.secondaryColor,
                child: Text(
                  "$count",
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
