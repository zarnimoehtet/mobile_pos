import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/colors.dart';

class CategoryAddPage extends StatelessWidget {
  static const String route = "/category_add";
  const CategoryAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
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
