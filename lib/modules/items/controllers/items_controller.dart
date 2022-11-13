import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/enums/discount_type.dart';
import 'package:mobile_pos/core/enums/representation.dart';
import 'package:mobile_pos/core/enums/sold_by.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/viewmodels/category_vm.dart';
import 'package:mobile_pos/viewmodels/unit_vm.dart';

import '../../../core/custom/state_dialog.dart';
import '../../../core/helpers/state.dart';

import '../../../data/model/unit.dart';
import '../../../data/model/user.dart';
import '../../../viewmodels/profile_vm.dart';

class ItemsController extends GetxController {
  //Category
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController categoryDetailController = TextEditingController();
  Rx<int> selectedIndex = Rx<int>(0);
  RxList<Category> categoryList = RxList();

  Rxn<Category> editCategory = Rxn<Category>();

  TextEditingController categoryNameEditController = TextEditingController();
  TextEditingController categoryDetailEditController = TextEditingController();
  Rx<int> selectedEditIndex = Rx<int>(0);

  //Unit
  TextEditingController discountNameController = TextEditingController();
  TextEditingController discountDetailController = TextEditingController();
  TextEditingController discountAmountController = TextEditingController();
  Rx<DiscountType> selectedType = Rx<DiscountType>(DiscountType.percent);
  RxList<Unit> unitList = RxList();

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
  Rx<int> itemSelectedIndex = Rx<int>(0);
  Rx<Representation> selectedRepresentationType =
      Rx<Representation>(Representation.shapeAndColor);
  Rx<ShapeType> selectedShape = Rx<ShapeType>(ShapeType.Circle);

  RxBool isLoading = RxBool(false);
  RxnString error = RxnString();

  final CategoryViewModel categoryViewModel = Get.find();
  final ProfileViewModel profileVM = Get.find();
  final UnitViewModel unitVM = Get.find();

  Rxn<User> currentUser = Rxn<User>();

  List<String> colors = [
    "#E2E2E2",
    "#F34236",
    "#EA1D62",
    "#FF9700",
    "#CEDB39",
    "#4CAF50",
    "#2096F3",
    "#9C28B1"
  ];

  @override
  void onInit() {
    _subscribeCurrentUser();
    _subscribeCategories();
    _subscribeAddCategoryState();
    _subscribeEditCategoryState();
    _subscribeDeleteCategoryState();
    _subscribeUnits();

    super.onInit();
  }

  _subscribeCurrentUser() {
    currentUser.value = profileVM.currentUser;
  }

  void _subscribeCategories() {
    categoryViewModel.fetchCategoryStream.listen((event) {
      isLoading.value = event is StateLoading<List<Category>>;
      if (event is StateSuccess<List<Category>>) {
        categoryList.value = event.data;
      }
      if (event is StateError<List<Category>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchCategory(int page) async {
    await categoryViewModel.fetchCategories(page, currentUser.value?.id ?? "");
  }

  addNewCategory() {
    categoryViewModel.addNewCategory(
        currentUser.value?.id ?? "",
        categoryNameController.text.trim(),
        categoryDetailController.text.trim(),
        colors[selectedIndex.value]);
  }

  StreamSubscription<MyState<CategoryItem>>? _addCategoryStateSubscription;
  void _subscribeAddCategoryState() {
    _addCategoryStateSubscription?.cancel();
    _addCategoryStateSubscription = showStateableDialog<CategoryItem>(
        categoryViewModel.addCategoryStream, (trans) {
      fetchCategory(0);
      categoryNameController.clear();
      categoryDetailController.clear();
      selectedIndex.value = 0;
      Get.back();
    });
  }

  findIndexOfColor(String color) {
    selectedEditIndex.value = colors.indexWhere((element) => element == color);
  }

  updateCategory() {
    categoryViewModel.editCategory(
        editCategory.value?.id ?? "",
        currentUser.value?.id ?? "",
        categoryNameEditController.text.trim(),
        categoryDetailEditController.text.trim(),
        colors[selectedEditIndex.value]);
  }

  StreamSubscription<MyState<CategoryItem>>? _editCategoryStateSubscription;
  void _subscribeEditCategoryState() {
    _editCategoryStateSubscription?.cancel();
    _editCategoryStateSubscription = showStateableDialog<CategoryItem>(
        categoryViewModel.editCategoryStream, (trans) {
      fetchCategory(0);
      categoryNameEditController.clear();
      categoryDetailEditController.clear();
      selectedEditIndex.value = 0;
      editCategory.value = null;
      Get.back();
    });
  }

  StreamSubscription? _deleteCategoryStateSubscription;
  void _subscribeDeleteCategoryState() {
    _deleteCategoryStateSubscription?.cancel();
    _deleteCategoryStateSubscription = showStateableDialog<bool>(
        categoryViewModel.deleteCategoryStateStream, (_) {
      fetchCategory(0);
      categoryNameEditController.clear();
      categoryDetailEditController.clear();
      selectedEditIndex.value = 0;
      editCategory.value = null;
      Get.back();
    });
  }

  void onClickDeleteCategory() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete_category"
            .trParams({"value": editCategory.value?.name ?? ""}),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: Get.back, child: Text("no_delete".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              categoryViewModel.deleteCategory(editCategory.value?.id ?? "");
            },
            child: Text("delete".tr.toUpperCase())),
      ],
    ));
  }

  void _subscribeUnits() {
    unitVM.fetchUnitStream.listen((event) {
      isLoading.value = event is StateLoading<List<Unit>>;
      if (event is StateSuccess<List<Unit>>) {
        unitList.value = event.data;
      }
      if (event is StateError<List<Unit>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchUnit(int page) async {
    await unitVM.fetchUnit(page, currentUser.value?.id ?? "");
  }

  @override
  void dispose() {
    _addCategoryStateSubscription?.cancel();
    _editCategoryStateSubscription?.cancel();
    _deleteCategoryStateSubscription?.cancel();
    super.dispose();
  }
}
