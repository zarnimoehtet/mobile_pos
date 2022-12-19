import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/expense/controller/expense_controller.dart';
import 'package:mobile_pos/modules/expense/view/expense_list_page.dart';
import 'package:mobile_pos/modules/expense/view/expense_title_page.dart';

import '../../home/views/home_page.dart';

class ExpensePage extends GetView<ExpenseController> {
  static const String route = "/expense";
  const ExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                itemsInputCard(Icons.interests_outlined, "Expense Titles",
                    controller.titleList.length, () {
                  Get.toNamed(HomePage.route +
                      ExpensePage.route +
                      ExpenseTitleListPage.route);
                },
                    isIcon: false,
                    isSVG: true,
                    image: "assets/svg/thumbtack.svg"),
                itemsInputCard(Icons.interests_outlined, "Expense List",
                    controller.expenseList.length, () {
                  Get.toNamed(HomePage.route +
                      ExpensePage.route +
                      ExpenseListPage.route);
                }, isIcon: false, isSVG: true, image: "assets/svg/wallet.svg"),
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
