import 'package:get/get.dart';

class DashBoardController extends GetxController {
  List<String> title = [
    "Gross sales",
    "Discounts",
    "Net sales",
    "Gross profit",
    "Reduce Sales",
    "Sales",
    "Refund amount",
    "Refund",
    "Expenses",
    "Net profit",
    "Credit"
  ];

  RxBool isShowAll = RxBool(false);
  RxBool isShowMainData = RxBool(false);
}
