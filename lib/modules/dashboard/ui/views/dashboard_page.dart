import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/dashboard/ui/controllers/dashboard_controller.dart';

class DashboardPage extends GetView<DashBoardController> {
  static const String route = "/dashboard";
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          headFilter(),
          Container(
            width: Get.width,
            height: 1,
            color: Colors.grey.shade300,
          ),
          dashBoardItems()
        ],
      ),
    ));
  }

  Widget headFilter() {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(5),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.refresh,
                    color: POSColor.primaryColorDark,
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 30,
                color: Colors.grey.shade300,
              )
            ],
          ),
          Row(
            children: [
              const Text(
                "Today",
                style:
                    TextStyle(color: POSColor.blackTextColorOp99, fontSize: 14),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    color: POSColor.primaryColorDark,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget dashBoardItems() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.title.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 / 1,
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0),
        itemBuilder: (BuildContext context, int index) {
          return dashboardDetialItem(
              controller.title[index],
              (index == 5 || index == 7) ? "0 item" : "MMK 0",
              (index == 5 || index == 8 || index == 10),
              () {});
        },
      ),
    );
  }

  Widget dashboardDetialItem(
      String title, String amount, bool isShowArrow, Function() onClick) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () => onClick,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: POSColor.blackTextColorOp99),
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              isShowArrow
                  ? const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: POSColor.blackTextColorOp99,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
