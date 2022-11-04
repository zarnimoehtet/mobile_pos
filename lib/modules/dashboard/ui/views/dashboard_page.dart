import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/dashboard/ui/controllers/dashboard_controller.dart';
import 'package:mobile_pos/modules/dashboard/ui/views/custom/linechart.dart';

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
          header(),
          dashBoardItems(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              color: Colors.grey.shade400,
            ),
          ),
          lineChart(),
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
      child: Obx(() => GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.isShowAll.value ? controller.title.length : 4,
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
          )),
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

  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "",
            style: TextStyle(color: POSColor.blackTextColorOp99),
          ),
          Obx(() => InkWell(
                onTap: () {
                  controller.isShowAll.value = !controller.isShowAll.value;
                },
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    controller.isShowAll.value ? "Show Less" : "Show All",
                    style: const TextStyle(
                        color: POSColor.secondaryColor, fontSize: 14),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget lineChart() {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 37,
              ),
              const Text(
                'Unfold Shop 2018',
                style: TextStyle(
                  color: POSColor.primaryColorDark,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Monthly Sales',
                style: TextStyle(
                  color: POSColor.textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 37,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, left: 6),
                  child: Obx(() => FirstLineChart(
                      isShowingMainData: controller.isShowMainData.value)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: POSColor.primaryColorDark,
            ),
            onPressed: () {
              controller.isShowMainData.value =
                  !controller.isShowMainData.value;
            },
          )
        ],
      ),
    );
  }
}
