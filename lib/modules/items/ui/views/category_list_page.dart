import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/modules/home/ui/views/home_page.dart';
import 'package:mobile_pos/modules/items/ui/views/category_add_page.dart';
import 'package:mobile_pos/modules/items/ui/views/items_page.dart';

class CategoryListPage extends StatelessWidget {
  static const String route = "/category_list";
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
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
                HomePage.route + ItemsPage.route + CategoryAddPage.route);
          },
          backgroundColor: POSColor.primaryColorDark,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: ListView.separated(
              itemCount: 2,
              itemBuilder: (context, index) {
                return categoryItem(
                  index == 0 ? "Drink" : "Soup",
                  index == 0 ? "Drink" : "Soup",
                );
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
        ));
  }

  Widget categoryItem(String title, String desc) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.only(left: 15, right: 15),
      title: Text(
        title,
        style: const TextStyle(color: POSColor.textColor),
      ),
      subtitle: Text(
        desc,
        style: const TextStyle(
          color: POSColor.blackTextColorOp99,
        ),
      ),
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.red.shade600,
        child: Center(
          child: Text(
            title.substring(0, 1),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      trailing: const Text(
        "1 item",
        style: TextStyle(color: POSColor.blackTextColorOp99),
      ),
    );
  }
}
