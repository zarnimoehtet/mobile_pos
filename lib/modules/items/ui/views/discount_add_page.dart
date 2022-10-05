import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/colors.dart';

class DiscountAddPage extends StatelessWidget {
  static const String route = "/discount_add";
  const DiscountAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Discount"),
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
