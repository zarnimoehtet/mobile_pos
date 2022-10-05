import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/colors.dart';

class ItemsAddPage extends StatelessWidget {
  static const String route = "/items_add";
  const ItemsAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items"),
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
        onPressed: () {},
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
