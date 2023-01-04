import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
import 'package:mobile_pos/data/model/customer.dart';
import 'package:mobile_pos/data/model/sale.dart';
import 'package:mobile_pos/viewmodels/sale_vm.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../data/model/item.dart';
import '../../../../data/model/user.dart';
import '../../../../viewmodels/item_vm.dart';
import '../../../../viewmodels/profile_vm.dart';
import '../../../core/constants/colors.dart';
import '../../../core/custom/border_input_decoration.dart';
import '../../../core/custom/gradient_button.dart';
import '../../../core/custom/state_dialog.dart';
import '../../../core/helpers/state.dart';
import '../../../data/model/category.dart';
import '../../../viewmodels/category_vm.dart';
import '../../../viewmodels/customer_vm.dart';
import '../../../viewmodels/invoice_vm.dart';
import '../../home/views/home_page.dart';
import '../views/print_vouncher_page.dart';
import '../views/sales_page.dart';

class SalesController extends GetxController {
  RxInt totalCharges = RxInt(0);
  RxInt totalItem = RxInt(0);
  RxBool isSearch = RxBool(false);
  TextEditingController searchItemController = TextEditingController();
  RxList<Item> itemList = RxList();
  Rxn<User> currentUser = Rxn<User>();
  Rxn<Employee> currentEMP = Rxn<Employee>();
  Rxn<Customer> selectedCustomer = Rxn<Customer>();
  Rxn<Item> existingItem = Rxn<Item>();
  RxList<Item> selectedItemList = RxList();
  Rxn<Sale> completedSale = Rxn<Sale>();
  RxList<Customer> customerList = RxList();

  RxList<Category> categoryList = RxList();

  RxBool isCredit = RxBool(false);
  RxInt totalDiscount = RxInt(0);
  RxInt creditAmount = RxInt(0);

  RxBool isLoading = RxBool(false);
  RxnString error = RxnString();
  RxBool isShowCustomerData = RxBool(false);

  RxList<String> itemFilter = RxList();
  Rxn<Category> selectedCategory = Rxn<Category>();

  final ScrollController itemScrollController = ScrollController();
  final TextEditingController payAmountController = TextEditingController();
  final ScreenshotController screenshotController = ScreenshotController();

  final ItemViewModel itemVM = Get.find();
  final ProfileViewModel profileVM = Get.find();
  final SaleViewModel saleVM = Get.find();
  final CustomerViewModel customerVM = Get.find();
  final InvoiceViewModel invoiceVM = Get.find();
  final CategoryViewModel categoryViewModel = Get.find();
  late AudioPlayer player;

  @override
  void onInit() {
    player = AudioPlayer();
    _subscribeCurrentUser();
    _subscribeItems();
    _subscribeSale();
    _subscribeCustomer();
    _subscribeCategories();
    fetchItem(0);
    fetchCustomer(0);
    fetchCategory(0);
    // initAudio();
    itemScrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = itemList.length ~/ 10;
        if (selectedCategory.value != null) {
          fetchItem(page, categoryId: selectedCategory.value?.id);
        } else {
          fetchItem(page);
        }
      }
    });

    super.onInit();
  }

  Future initAudio() async {
    await player.setAsset('assets/sound/beep.mp3');
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  generateItemFilter() {
    if (itemFilter.isNotEmpty) {
      itemFilter.clear();
    }
    itemFilter.add("All");
    for (var c in categoryList) {
      itemFilter.add(c.name ?? "");
    }
  }

  getSelectedCategory(String cateName) {
    selectedCategory.value = null;
    if (cateName != "All") {
      var data =
          categoryList.singleWhere((element) => element.name == cateName);
      selectedCategory.value = data;
    }
  }

  _subscribeCurrentUser() {
    currentUser.value = profileVM.currentUser;
    currentEMP.value = profileVM.currentEMP;
  }

  Future fetchItem(int page, {String? categoryId}) async {
    await itemVM.fetchItem(page, currentUser.value?.id ?? "",
        categoryId: categoryId);
  }

  Future fetchInvoice(int page) async {
    await invoiceVM.fetchInvoice(page, currentUser.value?.id ?? "");
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

  void _subscribeCategories() {
    categoryViewModel.fetchCategoryStream.listen((event) {
      isLoading.value = event is StateLoading<List<Category>>;
      if (event is StateSuccess<List<Category>>) {
        categoryList.value = event.data;
        generateItemFilter();
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

  clearCart() {
    selectedItemList.clear();
    totalCharges.value = 0;
    totalItem.value = 0;
  }

  addItemtoCart(Item item) async {
    var index = selectedItemList.indexWhere((element) => element.id == item.id);
    if (index != -1) {
      var newItem = selectedItemList[index]
          .copyWith(count: (selectedItemList[index].count ?? 0) + 1);
      selectedItemList[index] = newItem;
    } else {
      var newItem = item.copyWith(count: (item.count ?? 0) + 1);
      selectedItemList.add(newItem);
    }
    totalCharges.value = 0;
    totalDiscount.value = 0;
    for (var i in selectedItemList) {
      if (i.isDiscount == "yes") {
        if (i.discountType == "amount") {
          totalCharges.value +=
              ((i.price ?? 0) - (i.discount ?? 0)) * (i.count ?? 0);
          totalDiscount += i.discount ?? 0;
        } else {
          var discountAmount =
              ((i.price ?? 0) - ((i.price ?? 0) * ((i.discount ?? 0) / 100)));
          totalCharges.value += discountAmount.toInt() * (i.count ?? 0);
          totalDiscount += ((i.price ?? 0) * ((i.discount ?? 0) / 100)).toInt();
        }
      } else {
        totalCharges.value += (i.price ?? 0) * (i.count ?? 1);
      }
    }
    totalItem.value = selectedItemList.length;
    await player.setAsset('assets/sound/beep.mp3');
    player.play();
  }

  removeFromCart(Item item) {
    var index = selectedItemList.indexWhere((element) => element.id == item.id);

    var newItem = selectedItemList[index]
        .copyWith(count: (selectedItemList[index].count ?? 0) - 1);
    if (newItem.count == 0) {
      selectedItemList.remove(item);
    } else {
      selectedItemList[index] = newItem;
    }

    totalCharges.value = 0;
    totalDiscount.value = 0;
    for (var i in selectedItemList) {
      if (i.isDiscount == "yes") {
        if (i.discountType == "amount") {
          totalCharges.value +=
              ((i.price ?? 0) - (i.discount ?? 0)) * (i.count ?? 0);
          totalDiscount += i.discount ?? 0;
        } else {
          var discountAmount =
              ((i.price ?? 0) - ((i.price ?? 0) * ((i.discount ?? 0) / 100)));
          totalCharges.value += discountAmount.toInt() * (i.count ?? 0);
          totalDiscount += ((i.price ?? 0) * ((i.discount ?? 0) / 100)).toInt();
        }
      } else {
        totalCharges.value += (i.price ?? 0) * (i.count ?? 1);
      }
    }
    totalItem.value = selectedItemList.length;
  }

  addToSale() async {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_confirm_sale".tr,
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: () => Get.back(),
            child: Text("cancel".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              saleVM.addNewSale(
                  currentUser.value?.id ?? "",
                  currentEMP.value?.id ?? "",
                  selectedCustomer.value?.id,
                  totalDiscount.value,
                  isCredit.value ? "yes" : "no",
                  creditAmount.value,
                  totalCharges.value,
                  "epay",
                  "completed",
                  selectedItemList);
            },
            child: Text("confirm".tr.toUpperCase())),
      ],
    ));
  }

  StreamSubscription<MyState<Sale?>>? _saleStateSubscription;
  void _subscribeSale() {
    _saleStateSubscription?.cancel();
    _saleStateSubscription =
        showStateableDialog<Sale?>(saleVM.addSaleStream, (event) async {
      completedSale.value = event;
      fetchItem(0);
      fetchInvoice(0);
      Get.toNamed(HomePage.route + SalesPage.route + PrintVouncherPage.route);
    });
  }

  void _subscribeCustomer() {
    customerVM.fetchCustomerStream.listen((event) {
      isLoading.value = event is StateLoading<List<Customer>>;
      if (event is StateSuccess<List<Customer>>) {
        customerList.value = event.data;
      }
      if (event is StateError<List<Customer>>) {
        //error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchCustomer(int page) async {
    await customerVM.fetchCustomer(page, currentUser.value?.id ?? "");
  }

  chooseCustomer(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text("Choose Customer"),
          children: [
            ...customerList.map((value) {
              return SimpleDialogOption(
                child: Text("${value.name} (${value.desc})"),
                onPressed: () {
                  selectedCustomer.value = value;
                  Get.back(closeOverlays: true);
                },
              );
            }),
          ],
        );
      },
    );
  }

  goCredit(BuildContext context) {
    if (selectedCustomer.value == null) {
      isShowCustomerData.value = true;
      Get.showSnackbar(const GetSnackBar(message: "Please add customer data"));
    } else {
      Get.bottomSheet(
          SizedBox(
            width: Get.width,
            height: Get.height * 0.33,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Credit Information",
                    style: TextStyle(
                        color: POSColor.primaryColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total Amount",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Obx(() => Text(
                            "MMK ${totalCharges.value.toCurrencyFormat()}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: normalInputDecoration(
                        hinttext: "Enter customer paid amount"),
                    controller: payAmountController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    cursorColor: POSColor.primaryColorDark,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GradientButton(
                      gradient: POSColor.primaryGradientColorLR,
                      radius: BorderRadius.circular(10),
                      height: 40,
                      width: Get.width,
                      child: Text(
                        "done".toUpperCase(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      onTap: () {
                        Get.back();
                        isCredit.value = true;
                        creditAmount.value = totalCharges.value -
                            int.parse(payAmountController.text.trim());
                        addToSale();
                        payAmountController.clear();
                      }),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white);
    }
  }

  saveToGallery() async {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          CircularProgressIndicator(),
        ],
      ),
    ));
    final directory = (await getApplicationDocumentsDirectory()).path;
    String fileName = DateTime.now().microsecondsSinceEpoch.toString();
    var path = directory;

    screenshotController
        .captureAndSave(path,
            fileName: "${currentUser.value?.shop?.name}-$fileName.jpg")
        .then((value) {
      Get.back();
      Get.dialog(AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        alignment: Alignment.center,
        title: const Text(
          "Saved",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: POSColor.primaryColorDark),
        ),
        content: Text(
          "Saved in $value",
        ),
        actions: [
          TextButton(
              onPressed: () {
                Get.back();
                OpenFile.open(value);
              },
              child: Text(
                "open".tr.toUpperCase(),
                style: const TextStyle(color: POSColor.primaryColorDark),
              ))
        ],
      ));
    });
  }

  shareToOther() async {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          CircularProgressIndicator(),
        ],
      ),
    ));
    await screenshotController
        .capture(delay: const Duration(milliseconds: 10))
        .then((image) async {
      Get.back();
      if (image != null) {
        final directory = await getApplicationDocumentsDirectory();
        final imagePath = await File(
                '${directory.path}/${currentUser.value?.shop?.name}-${completedSale.value?.code}.png')
            .create();
        await imagePath.writeAsBytes(image);

        await Share.shareXFiles([XFile(imagePath.path)],
            text:
                "${currentUser.value?.shop?.name}-${completedSale.value?.code}.png");
      }
    });
  }
}
