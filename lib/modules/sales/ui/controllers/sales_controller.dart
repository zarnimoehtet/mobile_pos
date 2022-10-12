import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesController extends GetxController {
  RxInt totalCharges = RxInt(0);
  RxInt totalItem = RxInt(0);
  RxBool isSearch = RxBool(false);
  TextEditingController searchItemController = TextEditingController();
}
