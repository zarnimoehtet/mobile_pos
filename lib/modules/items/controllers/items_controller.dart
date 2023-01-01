import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mobile_pos/core/enums/discount_type.dart';
import 'package:mobile_pos/core/enums/representation.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/model/item.dart';
import 'package:mobile_pos/modules/items/model/item_photo.dart';
import 'package:mobile_pos/viewmodels/category_vm.dart';
import 'package:mobile_pos/viewmodels/item_vm.dart';
import 'package:mobile_pos/viewmodels/unit_vm.dart';

import '../../../core/custom/state_dialog.dart';
import '../../../core/helpers/state.dart';
import '../../../core/extensions/extension_collection.dart';
import '../../../data/model/unit.dart';
import '../../../data/model/user.dart';
import '../../../viewmodels/profile_vm.dart';

class ItemsController extends GetxController {
  //Category
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController categoryDetailController = TextEditingController();
  RxInt selectedIndex = RxInt(0);
  RxList<Category> categoryList = RxList();
  RxBool isEditCategory = RxBool(false);
  Rxn<Category> editCategory = Rxn<Category>();
  RxBool categoryActiveStatus = RxBool(true);
  //Unit
  TextEditingController unitNameController = TextEditingController();
  TextEditingController unitDescController = TextEditingController();
  RxList<Unit> unitList = RxList();
  Rxn<Unit> editUnit = Rxn<Unit>();
  RxBool isEditUnit = RxBool(false);
  RxBool unitActiveStatus = RxBool(true);
  //Items
  TextEditingController itemsNameController = TextEditingController();
  TextEditingController itemsPriceController = TextEditingController();
  TextEditingController itemsCostController = TextEditingController();
  TextEditingController itemsSKUController = TextEditingController();
  TextEditingController itemsBarcodeController = TextEditingController();
  TextEditingController itemsExpDateController = TextEditingController();
  TextEditingController itemsDescriptionController = TextEditingController();
  TextEditingController itemsStockController = TextEditingController();
  TextEditingController itemsDiscountController = TextEditingController();
  Rx<DiscountType> selectedType = Rx<DiscountType>(DiscountType.normal);
  RxList<Item> itemList = RxList();
  RxBool willDiscount = RxBool(false);
  RxBool willTrack = RxBool(false);
  RxBool willShowAds = RxBool(false);
  RxBool itemActiveStatus = RxBool(true);
  RxInt itemSelectedIndex = RxInt(0);
  Rxn<Category> selectedCategory = Rxn<Category>();
  Rxn<Unit> selectedUnit = Rxn<Unit>();
  RxList<String> itemFilter = RxList();
  Rx<Representation> selectedRepresentationType =
      Rx<Representation>(Representation.shapeAndColor);
  Rx<ShapeType> selectedShape = Rx<ShapeType>(ShapeType.Circle);

  final RxList<ItemPhoto?> photos = RxList();

  Rxn<Item> editItem = Rxn<Item>();
  RxBool isEditItem = RxBool(false);

  RxBool isLoading = RxBool(false);
  RxnString error = RxnString();

  RxInt currentItemPhotoIndex = RxInt(1);

  final ScrollController itemScrollController = ScrollController();
  final ScrollController unitScrollController = ScrollController();
  final ScrollController categoryScrollController = ScrollController();

  final CategoryViewModel categoryViewModel = Get.find();
  final ProfileViewModel profileVM = Get.find();
  final UnitViewModel unitVM = Get.find();
  final ItemViewModel itemVM = Get.find();

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
    _subscribeAddUnitState();
    _subscribeEditUnitState();
    _subscribeDeleteUnitState();
    _subscribeSKUState();
    _subscribeItems();
    _subscribeAddItemState();
    _subscribeEditItemState();
    _subscribeDeleteItemState();
    fetchCategory(0);
    fetchUnit(0);
    fetchItem(0);
    itemScrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = itemList.length ~/ 10;
        fetchItem(page);
      }
    });
    unitScrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = unitList.length ~/ 10;
        fetchUnit(page);
      }
    });
    categoryScrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = categoryList.length ~/ 10;
        fetchCategory(page);
      }
    });
    photos.length = 6;
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
        colors[selectedIndex.value],
        categoryActiveStatus.value);
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

  setUpCategoryEdit() {
    if (isEditCategory.value) {
      categoryNameController.text = editCategory.value?.name ?? "";
      categoryDetailController.text = editCategory.value?.description ?? "";
      findIndexOfColor(editCategory.value?.color ?? "");
      categoryActiveStatus.value = editCategory.value?.status ?? false;
    } else {
      categoryNameController.clear();
      categoryDetailController.clear();
      selectedIndex.value = 0;
    }
  }

  findIndexOfColor(String color) {
    selectedIndex.value = colors.indexWhere((element) => element == color);
  }

  updateCategory() {
    categoryViewModel.editCategory(
        editCategory.value?.id ?? "",
        currentUser.value?.id ?? "",
        categoryNameController.text.trim(),
        categoryDetailController.text.trim(),
        colors[selectedIndex.value],
        categoryActiveStatus.value);
  }

  StreamSubscription<MyState<CategoryItem>>? _editCategoryStateSubscription;
  void _subscribeEditCategoryState() {
    _editCategoryStateSubscription?.cancel();
    _editCategoryStateSubscription = showStateableDialog<CategoryItem>(
        categoryViewModel.editCategoryStream, (trans) {
      fetchCategory(0);
      categoryNameController.clear();
      categoryDetailController.clear();
      selectedIndex.value = 0;
      editCategory.value = null;
      isEditCategory.value = false;
      Get.back();
    });
  }

  StreamSubscription? _deleteCategoryStateSubscription;
  void _subscribeDeleteCategoryState() {
    _deleteCategoryStateSubscription?.cancel();
    _deleteCategoryStateSubscription = showStateableDialog<bool>(
        categoryViewModel.deleteCategoryStateStream, (_) {
      fetchCategory(0);
      categoryNameController.clear();
      categoryDetailController.clear();
      selectedIndex.value = 0;
      editCategory.value = null;
      isEditCategory.value = false;
      Get.back();
    });
  }

  void onClickDeleteCategory() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete".trParams({"value": editCategory.value?.name ?? ""}),
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

  setupUnitEdit() {
    if (isEditUnit.value) {
      unitNameController.text = editUnit.value?.name ?? "";
      unitDescController.text = editUnit.value?.desc ?? "";
      unitActiveStatus.value = editUnit.value?.status ?? false;
    } else {
      unitNameController.clear();
      unitDescController.clear();
    }
  }

  addNewUnit() {
    unitVM.addNewUnit(
        currentUser.value?.id ?? "",
        unitNameController.text.trim(),
        unitDescController.text.trim(),
        unitActiveStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<UnitItem>>? _addUnitStateSubscription;
  void _subscribeAddUnitState() {
    _addUnitStateSubscription?.cancel();
    _addUnitStateSubscription =
        showStateableDialog<UnitItem>(unitVM.addUnitStream, (trans) {
      fetchUnit(0);
      unitNameController.clear();
      unitDescController.clear();

      Get.back();
    });
  }

  updateUnit() {
    unitVM.editUnit(
        editUnit.value?.id ?? "",
        currentUser.value?.id ?? "",
        unitNameController.text.trim(),
        unitDescController.text.trim(),
        unitActiveStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<UnitItem>>? _editUnitStateSubscription;
  void _subscribeEditUnitState() {
    _editUnitStateSubscription?.cancel();
    _editUnitStateSubscription =
        showStateableDialog<UnitItem>(unitVM.editUnitStream, (trans) {
      fetchUnit(0);
      unitNameController.clear();
      unitDescController.clear();
      isEditUnit.value = false;
      editUnit.value = null;
      Get.back();
    });
  }

  StreamSubscription? _deleteUnitStateSubscription;
  void _subscribeDeleteUnitState() {
    _deleteUnitStateSubscription?.cancel();
    _deleteUnitStateSubscription =
        showStateableDialog<bool>(unitVM.deleteUnitStateStream, (_) {
      fetchUnit(0);
      unitNameController.clear();
      unitDescController.clear();
      editUnit.value = null;
      isEditUnit.value = false;
      Get.back();
    });
  }

  void onClickDeleteUnit() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete".trParams({"value": editUnit.value?.name ?? ""}),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: Get.back, child: Text("no_delete".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              unitVM.deleteUnit(editUnit.value?.id ?? "");
            },
            child: Text("delete".tr.toUpperCase())),
      ],
    ));
  }

  generateSKU() {
    itemVM.generateSKU(
      currentUser.value?.id ?? "",
    );
  }

  findItemIndexOfColor(String color) {
    itemSelectedIndex.value = colors.indexWhere((element) => element == color);
  }

  findShape(String t) {
    if (t == "circle") {
      selectedShape.value = ShapeType.Circle;
    } else if (t == "diamond") {
      selectedShape.value = ShapeType.Diamond;
    } else if (t == "pentagon") {
      selectedShape.value = ShapeType.Pentagon;
    } else if (t == "hexagon") {
      selectedShape.value = ShapeType.Hexagon;
    }
  }

  findSelectedCategory(String id) {
    selectedCategory.value =
        categoryList[categoryList.indexWhere((element) => element.id == id)];
  }

  findSelectedUnit(String id) {
    selectedUnit.value =
        unitList[unitList.indexWhere((element) => element.id == id)];
  }

  setupEditItem() {
    if (isEditItem.value) {
      itemsPriceController.text = "${editItem.value?.price ?? 0}";
      itemsCostController.text = "${editItem.value?.cost ?? 0}";
      itemsStockController.text = "${editItem.value?.price ?? 0}";
      itemsDescriptionController.text = editItem.value?.desc ?? "";
      willDiscount.value =
          (editItem.value?.isDiscount ?? "no") == "no" ? false : true;
      selectedType.value =
          (editItem.value?.discountType ?? "amount") == "amount"
              ? DiscountType.normal
              : DiscountType.percent;
      itemsDiscountController.text = "${editItem.value?.discount ?? 0}";
      findSelectedCategory(editItem.value?.category?.id ?? "");
      findSelectedUnit(editItem.value?.unit?.id ?? "");
      itemsNameController.text = editItem.value?.name ?? "";

      itemsSKUController.text = editItem.value?.sku ?? "";
      itemsBarcodeController.text = editItem.value?.barcode ?? "";
      itemActiveStatus.value = editItem.value?.status ?? false;
      itemsExpDateController.text = DateFormat("dd-MM-yyyy")
          .format((editItem.value?.expDate ?? "").toDateTime());

      willTrack.value =
          (editItem.value?.isStock ?? "no") == "no" ? false : true;
      willShowAds.value =
          (editItem.value?.presentation?.presentType ?? "noads") == "noads"
              ? false
              : true;
      if ((editItem.value?.presentation?.color ?? []).isNotEmpty) {
        selectedRepresentationType.value = Representation.shapeAndColor;
        findItemIndexOfColor(editItem.value?.presentation?.color?.first ?? "");
        findShape(editItem.value?.presentation?.color?[1] ?? "");
      }
      photos.clear();
      photos.length = 6;
      currentItemPhotoIndex.value = 1;
      if ((editItem.value?.presentation?.images ?? []).isNotEmpty) {
        selectedRepresentationType.value = Representation.image;

        for (var e in editItem.value?.presentation?.images ?? []) {
          photos[currentItemPhotoIndex.value] = ItemPhoto.network(e);
          currentItemPhotoIndex.value++;
        }
      }
    } else {
      itemActiveStatus.value = true;
      itemsPriceController.clear();
      itemsCostController.clear();
      itemsStockController.clear();
      itemsDescriptionController.clear();
      willDiscount.value = false;
      selectedType.value = DiscountType.normal;
      itemsDiscountController.clear();

      itemsNameController.clear();
      selectedCategory.value = null;
      itemsSKUController.clear();
      itemsBarcodeController.clear();

      itemsExpDateController.clear();
      selectedUnit.value = null;
      willTrack.value = false;
      willShowAds.value = false;
      itemSelectedIndex.value = 0;
      selectedShape.value = ShapeType.Circle;
      photos.clear();
      photos.length = 6;
      currentItemPhotoIndex.value = 1;
    }
  }

  StreamSubscription<MyState<String>>? _skuStateSubscription;
  void _subscribeSKUState() {
    _skuStateSubscription?.cancel();
    _skuStateSubscription =
        showStateableDialog<String>(itemVM.generateSKUStateStream, (trans) {
      itemsSKUController.text = trans;
    });
  }

  Future fetchItem(int page) async {
    await itemVM.fetchItem(page, currentUser.value?.id ?? "");
  }

  void _subscribeItems() {
    itemVM.fetchItemStream.listen((event) {
      isLoading.value = event is StateLoading<List<Item>>;
      if (event is StateSuccess<List<Item>>) {
        itemList.value = event.data;
      }
      if (event is StateError<List<Item>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  getShape(ShapeType t) {
    if (t == ShapeType.Circle) {
      return "circle";
    } else if (t == ShapeType.Diamond) {
      return "diamond";
    } else if (t == ShapeType.Pentagon) {
      return "pentagon";
    } else if (t == ShapeType.Hexagon) {
      return "hexagon";
    }
  }

  addItem() {
    itemVM.addNewItem(
        willShowAds.value,
        selectedRepresentationType.value,
        [colors[itemSelectedIndex.value], getShape(selectedShape.value)],
        photos,
        itemsPriceController.text,
        itemsCostController.text,
        itemsStockController.text,
        itemsDescriptionController.text,
        willDiscount.value ? "yes" : "no",
        selectedType.value == DiscountType.normal ? "amount" : "percent",
        itemsDiscountController.text,
        itemActiveStatus.value ? "1" : "0",
        currentUser.value?.id ?? "",
        itemsNameController.text,
        selectedCategory.value?.id ?? "",
        itemsSKUController.text,
        itemsBarcodeController.text,
        [],
        itemsExpDateController.text,
        selectedUnit.value?.id ?? "",
        willTrack.value ? "yes" : "no");
  }

  StreamSubscription<MyState<ItemRes>>? _addItemStateSubscription;
  void _subscribeAddItemState() {
    _addItemStateSubscription?.cancel();
    _addItemStateSubscription =
        showStateableDialog<ItemRes>(itemVM.addItemStream, (trans) {
      fetchItem(0);
      itemsPriceController.clear();
      itemsCostController.clear();
      itemsStockController.clear();
      itemsDescriptionController.clear();
      willDiscount.value = false;
      selectedType.value = DiscountType.normal;
      itemsDiscountController.clear();

      itemsNameController.clear();
      selectedCategory.value = null;
      itemsSKUController.clear();
      itemsBarcodeController.clear();

      itemsExpDateController.clear();
      selectedUnit.value = null;
      willTrack.value = false;
      willShowAds.value = false;
      itemSelectedIndex.value = 0;
      selectedShape.value = ShapeType.Circle;
      Get.back();
    });
  }

  updateItem() {
    itemVM.editItem(
        willShowAds.value,
        selectedRepresentationType.value,
        [colors[itemSelectedIndex.value], getShape(selectedShape.value)],
        photos,
        itemsPriceController.text,
        itemsCostController.text,
        itemsStockController.text,
        itemsDescriptionController.text,
        willDiscount.value ? "yes" : "no",
        selectedType.value == DiscountType.normal ? "amount" : "percent",
        itemsDiscountController.text,
        itemActiveStatus.value ? "1" : "0",
        editItem.value?.id ?? "",
        currentUser.value?.id ?? "",
        itemsNameController.text,
        selectedCategory.value?.id ?? "",
        itemsSKUController.text,
        itemsBarcodeController.text,
        [],
        itemsExpDateController.text,
        selectedUnit.value?.id ?? "",
        willTrack.value ? "yes" : "no");
  }

  StreamSubscription<MyState<ItemRes>>? _editItemStateSubscription;
  void _subscribeEditItemState() {
    _editItemStateSubscription?.cancel();
    _editItemStateSubscription =
        showStateableDialog<ItemRes>(itemVM.editItemStream, (trans) {
      fetchItem(0);
      editItem.value = null;
      isEditUnit.value = false;
      itemsPriceController.clear();
      itemsCostController.clear();
      itemsStockController.clear();
      itemsDescriptionController.clear();
      willDiscount.value = false;
      selectedType.value = DiscountType.normal;
      itemsDiscountController.clear();

      itemsNameController.clear();
      selectedCategory.value = null;
      itemsSKUController.clear();
      itemsBarcodeController.clear();

      itemsExpDateController.clear();
      selectedUnit.value = null;
      willTrack.value = false;
      willShowAds.value = false;
      itemSelectedIndex.value = 0;
      selectedShape.value = ShapeType.Circle;
      Get.back();
    });
  }

  StreamSubscription? _deleteItemStateSubscription;
  void _subscribeDeleteItemState() {
    _deleteItemStateSubscription?.cancel();
    _deleteItemStateSubscription =
        showStateableDialog<bool>(itemVM.deleteItemStateStream, (_) {
      fetchItem(0);
      editItem.value = null;
      isEditUnit.value = false;
      itemsPriceController.clear();
      itemsCostController.clear();
      itemsStockController.clear();
      itemsDescriptionController.clear();
      willDiscount.value = false;
      selectedType.value = DiscountType.normal;
      itemsDiscountController.clear();

      itemsNameController.clear();
      selectedCategory.value = null;
      itemsSKUController.clear();
      itemsBarcodeController.clear();

      itemsExpDateController.clear();
      selectedUnit.value = null;
      willTrack.value = false;
      willShowAds.value = false;
      itemSelectedIndex.value = 0;
      selectedShape.value = ShapeType.Circle;
      Get.back();
    });
  }

  void onClickDeleteItem() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete".trParams({"value": editItem.value?.name ?? ""}),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: Get.back, child: Text("no_delete".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              itemVM.deleteItem(editItem.value?.id ?? "");
            },
            child: Text("delete".tr.toUpperCase())),
      ],
    ));
  }

  generateItemFilter() {
    itemFilter.clear();
    itemFilter.add("All");
    for (var c in categoryList) {
      itemFilter.add(c.name ?? "");
    }
  }

  @override
  void dispose() {
    _addCategoryStateSubscription?.cancel();
    _editCategoryStateSubscription?.cancel();
    _deleteCategoryStateSubscription?.cancel();
    _addUnitStateSubscription?.cancel();
    _editUnitStateSubscription?.cancel();
    _deleteUnitStateSubscription?.cancel();
    _addItemStateSubscription?.cancel();
    _skuStateSubscription?.cancel();
    _editItemStateSubscription?.cancel();
    _deleteItemStateSubscription?.cancel();
    super.dispose();
  }
}
