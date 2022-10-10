import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/items/ui/views/item_add_page.dart';

import '../../../home/ui/views/home_page.dart';

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
      body: Container(),
    );
  }
}
