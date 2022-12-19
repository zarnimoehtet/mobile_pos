import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BalanceNoteController extends GetxController {
  var tabIndex = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    pageController =
        PageController(initialPage: tabIndex.value, keepPage: true);
    super.onInit();
  }

  changePage(int index) {
    tabIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
