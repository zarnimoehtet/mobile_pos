import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import '../../home/views/home_page.dart';
import 'discount_add_page.dart';
import 'items_page.dart';

class DiscountListPage extends StatelessWidget {
  static const String route = "/discount_list";
  const DiscountListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Discount"),
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
            Get.toNamed(
                HomePage.route + ItemsPage.route + DiscountAddPage.route);
          },
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return discountItem();
            },
          ),
        ));
  }

  Widget discountItem() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 3 / 1.5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade400,
              ),
              width: Get.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Thadingyut Fullmoon Discount",
                  style: TextStyle(color: POSColor.textColor, fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "20% off",
                  style: TextStyle(
                      color: POSColor.blackTextColorOp99, fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
