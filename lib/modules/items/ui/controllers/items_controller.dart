import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/enums/coloring.dart';
import 'package:mobile_pos/core/enums/discount_type.dart';
import 'package:mobile_pos/core/enums/representation.dart';
import 'package:mobile_pos/core/enums/sold_by.dart';

class ItemsController extends GetxController {
  //Category
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController categoryDetailController = TextEditingController();
  RxString discount = "".obs;
  Rx<Coloring> selectedColor = Rx<Coloring>(Coloring.normal);

  //Discount
  TextEditingController discountNameController = TextEditingController();
  TextEditingController discountDetailController = TextEditingController();
  TextEditingController discountAmountController = TextEditingController();
  Rx<DiscountType> selectedType = Rx<DiscountType>(DiscountType.percent);

  //Items
  TextEditingController itemsNameController = TextEditingController();
  TextEditingController itemsPriceController = TextEditingController();
  TextEditingController itemsCostController = TextEditingController();
  TextEditingController itemsSKUController = TextEditingController();
  TextEditingController itemsBarcodeController = TextEditingController();
  TextEditingController itemsLinkController = TextEditingController();
  TextEditingController itemsDescriptionController = TextEditingController();
  TextEditingController itemsStockController = TextEditingController();
  Rx<SoldBy> selectedSoldType = Rx<SoldBy>(SoldBy.each);
  RxBool willTrack = RxBool(false);
  RxBool willShowAds = RxBool(false);
  Rx<Coloring> itemSelectedColor = Rx<Coloring>(Coloring.normal);
  Rx<Representation> selectedRepresentationType =
      Rx<Representation>(Representation.shapeAndColor);
  Rx<ShapeType> selectedShape = Rx<ShapeType>(ShapeType.Circle);
}
