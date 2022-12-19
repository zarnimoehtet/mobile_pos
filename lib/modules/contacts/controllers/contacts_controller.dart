import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
import 'package:mobile_pos/data/model/supplier.dart';
import 'package:mobile_pos/viewmodels/customer_vm.dart';
import 'package:mobile_pos/viewmodels/supplier_vm.dart';

import '../../../../core/custom/state_dialog.dart';
import '../../../../core/helpers/state.dart';
import '../../../../data/model/customer.dart';
import '../../../../data/model/user.dart';
import '../../../../viewmodels/profile_vm.dart';

class ContactsController extends GetxController {
  var tabIndex = 0.obs;
  late PageController pageController;

  //Supplier
  TextEditingController supplierNameController = TextEditingController();
  TextEditingController supplierPhoneController = TextEditingController();
  TextEditingController supplierEmailController = TextEditingController();
  TextEditingController supplierAddressController = TextEditingController();
  TextEditingController supplierDescController = TextEditingController();
  Rxn<Supplier> editSupplier = Rxn<Supplier>();
  RxList<Supplier> supplierList = RxList();
  RxBool supplierStatus = RxBool(true);
  RxBool isEditSupplier = RxBool(false);

  //Customer
  TextEditingController customerNameController = TextEditingController();
  TextEditingController customerPhoneController = TextEditingController();
  TextEditingController customerEmailController = TextEditingController();
  TextEditingController customerAddressController = TextEditingController();
  TextEditingController customerDescController = TextEditingController();
  Rxn<Customer> editCustomer = Rxn<Customer>();
  RxList<Customer> customerList = RxList();
  RxBool customerStatus = RxBool(true);
  RxBool isEditCustomer = RxBool(false);

  RxBool isLoading = RxBool(false);
  RxnString error = RxnString();

  final SupplierViewModel supplierVM = Get.find();
  final ProfileViewModel profileVM = Get.find();
  final CustomerViewModel customerVM = Get.find();

  Rxn<User> currentUser = Rxn<User>();

  final ScrollController customerScrollController = ScrollController();
  final ScrollController supplierScrollController = ScrollController();

  @override
  void onInit() {
    pageController =
        PageController(initialPage: tabIndex.value, keepPage: true);

    _subscribeCurrentUser();
    _subscribeSupplier();
    _subscribeAddSupplierState();
    _subscribeEditSupplierState();
    _subscribeDeleteSupplierState();
    _subscribeCustomer();
    _subscribeAddCustomerState();
    _subscribeEditCustomerState();
    _subscribeDeleteCustomerState();
    fetchCustomer(0);
    fetchSupplier(0);
    customerScrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = customerList.length ~/ 10;
        fetchCustomer(page);
      }
    });
    supplierScrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = supplierList.length ~/ 10;
        fetchSupplier(page);
      }
    });
    super.onInit();
  }

  changePage(int index) {
    tabIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  _subscribeCurrentUser() {
    currentUser.value = profileVM.currentUser;
  }

  void _subscribeSupplier() {
    supplierVM.fetchSupplierStream.listen((event) {
      isLoading.value = event is StateLoading<List<Supplier>>;
      if (event is StateSuccess<List<Supplier>>) {
        supplierList.value = event.data;
      }
      if (event is StateError<List<Supplier>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchSupplier(int page) async {
    await supplierVM.fetchSupplier(page, currentUser.value?.id ?? "");
  }

  setupEditSupplier() {
    if (isEditSupplier.value) {
      supplierNameController.text = editSupplier.value?.name ?? "";
      supplierPhoneController.text = editSupplier.value?.phone ?? "";
      supplierEmailController.text = editSupplier.value?.email ?? "";
      supplierAddressController.text = editSupplier.value?.address ?? "";
      supplierDescController.text = editSupplier.value?.desc ?? "";
      supplierStatus.value = editSupplier.value?.status ?? false;
    } else {
      supplierNameController.clear();
      supplierPhoneController.clear();
      supplierEmailController.clear();
      supplierAddressController.clear();
      supplierDescController.clear();
    }
  }

  addNewSupplier() {
    supplierVM.addNewSupplier(
        supplierNameController.text.trim(),
        supplierEmailController.text.trim(),
        supplierPhoneController.text.trim(),
        supplierDescController.text.trim(),
        currentUser.value?.id ?? "",
        supplierAddressController.text.trim(),
        supplierStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<SupplierItem>>? _addSupplierStateSubscription;
  void _subscribeAddSupplierState() {
    _addSupplierStateSubscription?.cancel();
    _addSupplierStateSubscription = showStateableDialog<SupplierItem>(
        supplierVM.addSupplierStream, (trans) {
      fetchSupplier(0);
      supplierNameController.clear();
      supplierPhoneController.clear();
      supplierEmailController.clear();
      supplierAddressController.clear();
      supplierDescController.clear();

      Get.back();
    });
  }

  updateSupplier() {
    supplierVM.editSupplier(
        editSupplier.value?.id ?? "",
        supplierNameController.text.trim(),
        supplierEmailController.text.trim(),
        supplierPhoneController.text.trim(),
        supplierDescController.text.trim(),
        currentUser.value?.id ?? "",
        supplierAddressController.text.trim(),
        supplierStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<SupplierItem>>? _editSupplierStateSubscription;
  void _subscribeEditSupplierState() {
    _editSupplierStateSubscription?.cancel();
    _editSupplierStateSubscription = showStateableDialog<SupplierItem>(
        supplierVM.editSupplierStream, (trans) {
      fetchSupplier(0);
      supplierNameController.clear();
      supplierPhoneController.clear();
      supplierEmailController.clear();
      supplierAddressController.clear();
      supplierDescController.clear();
      isEditSupplier.value = false;
      editSupplier.value = null;
      Get.back();
    });
  }

  StreamSubscription? _deleteSupplierStateSubscription;
  void _subscribeDeleteSupplierState() {
    _deleteSupplierStateSubscription?.cancel();
    _deleteSupplierStateSubscription =
        showStateableDialog<bool>(supplierVM.deleteSupplierStateStream, (_) {
      fetchSupplier(0);
      supplierNameController.clear();
      supplierPhoneController.clear();
      supplierEmailController.clear();
      supplierAddressController.clear();
      supplierDescController.clear();
      isEditSupplier.value = false;
      editSupplier.value = null;
      Get.back();
    });
  }

  void onClickDeleteSupplier() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete".trParams({"value": editSupplier.value?.name ?? ""}),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: Get.back, child: Text("no_delete".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              supplierVM.deleteSupplier(editSupplier.value?.id ?? "");
            },
            child: Text("delete".tr.toUpperCase())),
      ],
    ));
  }

  void _subscribeCustomer() {
    customerVM.fetchCustomerStream.listen((event) {
      isLoading.value = event is StateLoading<List<Customer>>;
      if (event is StateSuccess<List<Customer>>) {
        customerList.value = event.data;
      }
      if (event is StateError<List<Customer>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchCustomer(int page) async {
    await customerVM.fetchCustomer(page, currentUser.value?.id ?? "");
  }

  setupEditCustomer() {
    if (isEditCustomer.value) {
      customerNameController.text = editCustomer.value?.name ?? "";
      customerPhoneController.text = editCustomer.value?.phone ?? "";
      customerEmailController.text = editCustomer.value?.email ?? "";
      customerAddressController.text = editCustomer.value?.address ?? "";
      customerDescController.text = editCustomer.value?.desc ?? "";
      customerStatus.value = editCustomer.value?.status ?? false;
    } else {
      customerNameController.clear();
      customerPhoneController.clear();
      customerEmailController.clear();
      customerAddressController.clear();
      customerDescController.clear();
    }
  }

  addNewCustomer() {
    customerVM.addNewCustomer(
        customerNameController.text.trim(),
        customerEmailController.text.trim(),
        customerPhoneController.text.trim(),
        customerDescController.text.trim(),
        currentUser.value?.id ?? "",
        customerAddressController.text.trim(),
        customerStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<CustomerItem>>? _addCustomerStateSubscription;
  void _subscribeAddCustomerState() {
    _addCustomerStateSubscription?.cancel();
    _addCustomerStateSubscription = showStateableDialog<CustomerItem>(
        customerVM.addCustomerStream, (trans) {
      fetchCustomer(0);
      customerNameController.clear();
      customerPhoneController.clear();
      customerEmailController.clear();
      customerAddressController.clear();
      customerDescController.clear();

      Get.back();
    });
  }

  updateCustomer() {
    customerVM.editCustomer(
        editCustomer.value?.id ?? "",
        customerNameController.text.trim(),
        customerEmailController.text.trim(),
        customerPhoneController.text.trim(),
        customerDescController.text.trim(),
        currentUser.value?.id ?? "",
        customerAddressController.text.trim(),
        customerStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<CustomerItem>>? _editCustomerStateSubscription;
  void _subscribeEditCustomerState() {
    _editCustomerStateSubscription?.cancel();
    _editCustomerStateSubscription = showStateableDialog<CustomerItem>(
        customerVM.editCustomerStream, (trans) {
      fetchCustomer(0);
      customerNameController.clear();
      customerPhoneController.clear();
      customerEmailController.clear();
      customerAddressController.clear();
      customerDescController.clear();
      isEditCustomer.value = false;
      editCustomer.value = null;
      Get.back();
    });
  }

  StreamSubscription? _deleteCustomerStateSubscription;
  void _subscribeDeleteCustomerState() {
    _deleteCustomerStateSubscription?.cancel();
    _deleteCustomerStateSubscription =
        showStateableDialog<bool>(customerVM.deleteCustomerStateStream, (_) {
      fetchCustomer(0);
      customerNameController.clear();
      customerPhoneController.clear();
      customerEmailController.clear();
      customerAddressController.clear();
      customerDescController.clear();
      isEditCustomer.value = false;
      editCustomer.value = null;
      Get.back();
    });
  }

  void onClickDeleteCustomer() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete".trParams({"value": editCustomer.value?.name ?? ""}),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: Get.back, child: Text("no_delete".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              customerVM.deleteCustomer(editCustomer.value?.id ?? "");
            },
            child: Text("delete".tr.toUpperCase())),
      ],
    ));
  }

  @override
  void dispose() {
    _addSupplierStateSubscription?.cancel();
    _editSupplierStateSubscription?.cancel();
    _deleteSupplierStateSubscription?.cancel();
    _addCustomerStateSubscription?.cancel();
    _editCustomerStateSubscription?.cancel();
    _deleteCustomerStateSubscription?.cancel();
    super.dispose();
  }
}
