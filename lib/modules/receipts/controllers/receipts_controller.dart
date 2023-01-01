import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
import 'package:mobile_pos/data/model/sale.dart';
import 'package:mobile_pos/viewmodels/invoice_vm.dart';

import '../../../core/helpers/state.dart';
import '../../../data/model/user.dart';
import '../../../viewmodels/profile_vm.dart';

class ReceiptsController extends GetxController {
  RxList<Invoice> invoiceList = RxList();

  RxBool isLoading = RxBool(false);
  RxnString error = RxnString();

  Rxn<User> currentUser = Rxn<User>();

  final InvoiceViewModel invoiceVM = Get.find();
  final ProfileViewModel profileVM = Get.find();

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    _subscribeCurrentUser();
    _subscribeInvoice();
    fetchInvoice(0);
    scrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = invoiceList.length ~/ 10;
        fetchInvoice(page);
      }
    });

    super.onInit();
  }

  _subscribeCurrentUser() {
    currentUser.value = profileVM.currentUser;
  }

  void _subscribeInvoice() {
    invoiceVM.fetchInvoiceStream.listen((event) {
      isLoading.value = event is StateLoading<List<Invoice>>;
      if (event is StateSuccess<List<Invoice>>) {
        invoiceList.value = event.data;
      }
      if (event is StateError<List<Invoice>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchInvoice(int page) async {
    await invoiceVM.fetchInvoice(page, currentUser.value?.id ?? "");
  }
}
