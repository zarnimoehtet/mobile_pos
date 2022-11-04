import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/core/temp/temp_data.dart';

import '../../../../core/custom/border_input_decoration.dart';

import '../../home/views/home_page.dart';
import 'item_add_page.dart';
import 'items_page.dart';

class ItemsListPage extends StatelessWidget {
  static const String route = "/items_list";
  const ItemsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items"),
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
          Get.toNamed(HomePage.route + ItemsPage.route + ItemAddPage.route);
        },
        backgroundColor: POSColor.primaryColorDark,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: DropdownButtonFormField<String>(
                decoration: normalInputDecoration(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    hinttext: itemFilter.first,
                    color: POSColor.blackTextColorOp99,
                    alignLabelWithHint: false,
                    enableUnderLine: true),
                isExpanded: true,
                items: itemFilter.map((i) {
                  return DropdownMenuItem<String>(
                      value: i,
                      child: Text(
                        i,
                        style: const TextStyle(
                          color: POSColor.blackTextColorOp99,
                        ),
                      ));
                }).toList(),
                onChanged: (v) {},
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                height: 1,
                color: Colors.grey.shade300,
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.separated(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return item(index == 0 ? "Coffee" : "Milk", index % 2 == 1);
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        color: Colors.grey.shade300,
                        height: 1,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget item(String title, bool isColored) {
    return Container(
      color: isColored ? Colors.grey.shade200 : Colors.transparent,
      child: ListTile(
        onTap: () {},
        contentPadding: const EdgeInsets.only(left: 15, right: 15),
        title: Text(
          title,
          style: const TextStyle(color: POSColor.textColor),
        ),
        subtitle: const Text(
          "Drink",
          style: TextStyle(
            color: POSColor.blackTextColorOp99,
          ),
        ),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.red.shade600,
        ),
      ),
    );
  }
}
