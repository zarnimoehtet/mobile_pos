import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
import 'package:mobile_pos/data/model/expense.dart';
import 'package:mobile_pos/viewmodels/expense_title_vm.dart';
import 'package:mobile_pos/viewmodels/expense_vm.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../core/custom/state_dialog.dart';
import '../../../../core/helpers/state.dart';
import '../../../../data/model/user.dart';
import '../../../../viewmodels/profile_vm.dart';

class ExpenseController extends GetxController {
  DateRangePickerController datePickerController = DateRangePickerController();
  var fromDate = "".obs;
  var toDate = "".obs;
  RxList<String> itemFilter = RxList();
  var selectedFilter = "All".obs;

  //Expense Title
  TextEditingController expenseTitleNameController = TextEditingController();

  RxList<ExpenseTitle> titleList = RxList();
  Rxn<ExpenseTitle> editExpenseTitle = Rxn<ExpenseTitle>();
  RxBool isEditExpenseTitle = RxBool(false);
  RxBool expenseTitleActiveStatus = RxBool(true);

  //Expense List
  TextEditingController expenseDescController = TextEditingController();
  TextEditingController expenseAmountController = TextEditingController();
  RxList<Expense> expenseList = RxList();
  Rxn<Expense> editExpense = Rxn<Expense>();
  Rxn<ExpenseTitle> selectedTitle = Rxn<ExpenseTitle>();
  RxBool isEditExpense = RxBool(false);
  RxBool expenseActiveStatus = RxBool(true);

  RxBool isLoading = RxBool(false);
  RxnString error = RxnString();

  Rxn<User> currentUser = Rxn<User>();

  final ScrollController titleScrollController = ScrollController();
  final ScrollController listScrollController = ScrollController();

  final ExpenseTitleViewModel expenseTitleVM = Get.find();
  final ProfileViewModel profileVM = Get.find();
  final ExpenseViewModel expenseVM = Get.find();

  @override
  void onInit() {
    generateItemFilter();
    _subscribeCurrentUser();
    _subscribeExpenseTitle();
    _subscribeAddExpenseTitleState();
    _subscribeEditExpenseTitleState();
    _subscribeDeleteExpenseTitleState();
    _subscribeExpense();
    _subscribeAddExpenseState();
    _subscribeEditExpenseState();
    _subscribeDeleteExpenseState();
    fetchExpenseTitles(0);
    fetchExpenses(0);
    titleScrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = titleList.length ~/ 10;
        fetchExpenseTitles(page);
      }
    });
    listScrollController.onScrollEnd(() {
      if (!isLoading.value) {
        int page = expenseList.length ~/ 10;
        fetchExpenses(page);
      }
    });
    if (titleList.isNotEmpty) {
      selectedTitle.value = titleList.first;
    }

    super.onInit();
  }

  _subscribeCurrentUser() {
    currentUser.value = profileVM.currentUser;
  }

  resetDate() {
    DateTime now = DateTime.now();
    fromDate.value = DateFormat('dd - MM - yyyy').format(now);
    toDate.value = DateFormat('dd - MM - yyyy').format(now);
  }

  updateDate() {
    fromDate.value = DateFormat('dd - MM - yyyy')
        .format(datePickerController.selectedRange!.startDate!);
    toDate.value = DateFormat('dd - MM - yyyy')
        .format(datePickerController.selectedRange!.endDate!);
  }

  generateItemFilter() {
    itemFilter.clear();
    itemFilter.add("All");
    for (var c in titleList) {
      itemFilter.add(c.name ?? "");
    }
  }

  void _subscribeExpenseTitle() {
    expenseTitleVM.fetchExpenseTitleStream.listen((event) {
      isLoading.value = event is StateLoading<List<ExpenseTitle>>;
      if (event is StateSuccess<List<ExpenseTitle>>) {
        titleList.value = event.data;
      }
      if (event is StateError<List<ExpenseTitle>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchExpenseTitles(int page) async {
    await expenseTitleVM.fetchExpenseTitle(page, currentUser.value?.id ?? "");
  }

  setupExpenseTitleEdit() {
    if (isEditExpenseTitle.value) {
      expenseTitleNameController.text = editExpenseTitle.value?.name ?? "";

      expenseTitleActiveStatus.value = editExpenseTitle.value?.status ?? false;
    } else {
      expenseTitleNameController.clear();
    }
  }

  addNewExpenseTitle() {
    expenseTitleVM.addNewExpenseTitle(
        currentUser.value?.id ?? "",
        expenseTitleNameController.text.trim(),
        expenseTitleActiveStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<ExpenseTitleItem>>?
      _addExpenseTitleStateSubscription;
  void _subscribeAddExpenseTitleState() {
    _addExpenseTitleStateSubscription?.cancel();
    _addExpenseTitleStateSubscription = showStateableDialog<ExpenseTitleItem>(
        expenseTitleVM.addExpenseTitleStream, (trans) {
      fetchExpenseTitles(0);
      expenseTitleNameController.clear();

      Get.back();
    });
  }

  updateExpenseTitle() {
    expenseTitleVM.editExpenseTitle(
        editExpenseTitle.value?.id ?? "",
        currentUser.value?.id ?? "",
        expenseTitleNameController.text.trim(),
        expenseTitleActiveStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<ExpenseTitleItem>>?
      _editExpenseTitleStateSubscription;
  void _subscribeEditExpenseTitleState() {
    _editExpenseTitleStateSubscription?.cancel();
    _editExpenseTitleStateSubscription = showStateableDialog<ExpenseTitleItem>(
        expenseTitleVM.editExpenseTitleStream, (trans) {
      fetchExpenseTitles(0);
      expenseTitleNameController.clear();
      isEditExpenseTitle.value = false;
      editExpenseTitle.value = null;
      Get.back();
    });
  }

  StreamSubscription? _deleteExpenseTitleStateSubscription;
  void _subscribeDeleteExpenseTitleState() {
    _deleteExpenseTitleStateSubscription?.cancel();
    _deleteExpenseTitleStateSubscription = showStateableDialog<bool>(
        expenseTitleVM.deleteExpenseTitleStateStream, (_) {
      fetchExpenseTitles(0);
      expenseTitleNameController.clear();
      isEditExpenseTitle.value = false;
      editExpenseTitle.value = null;
      Get.back();
    });
  }

  void onClickDeleteExpenseTitle() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete".trParams({"value": editExpenseTitle.value?.name ?? ""}),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: Get.back, child: Text("no_delete".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              expenseTitleVM
                  .deleteExpenseTitle(editExpenseTitle.value?.id ?? "");
            },
            child: Text("delete".tr.toUpperCase())),
      ],
    ));
  }

  void _subscribeExpense() {
    expenseVM.fetchExpenseStream.listen((event) {
      isLoading.value = event is StateLoading<List<Expense>>;
      if (event is StateSuccess<List<Expense>>) {
        expenseList.value = event.data;
      }
      if (event is StateError<List<Expense>>) {
        error.value = event.error.toString();
      } else {
        error.value = null;
      }
    });
  }

  Future fetchExpenses(int page) async {
    await expenseVM.fetchExpense(page, currentUser.value?.id ?? "");
  }

  findSelectedExpenseTitle(String id) {
    selectedTitle.value =
        titleList[titleList.indexWhere((element) => element.id == id)];
  }

  setupExpenseEdit() {
    if (isEditExpense.value) {
      expenseDescController.text = editExpense.value?.desc ?? "";
      expenseAmountController.text = "${editExpense.value?.amount}";
      expenseActiveStatus.value = editExpense.value?.status ?? false;
      findSelectedExpenseTitle(editExpense.value?.title?.id ?? "");
    } else {
      expenseDescController.clear();
      expenseAmountController.clear();
      isEditExpense.value = false;
      editExpense.value = null;
      selectedTitle.value = null;
    }
  }

  addNewExpense() {
    expenseVM.addNewExpense(
        currentUser.value?.id ?? "",
        selectedTitle.value?.id ?? "",
        int.parse(expenseAmountController.text.trim()),
        expenseDescController.text.trim(),
        expenseActiveStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<ExpenseItem>>? _addExpenseStateSubscription;
  void _subscribeAddExpenseState() {
    _addExpenseStateSubscription?.cancel();
    _addExpenseStateSubscription =
        showStateableDialog<ExpenseItem>(expenseVM.addExpenseStream, (trans) {
      fetchExpenses(0);
      expenseDescController.clear();
      expenseAmountController.clear();
      isEditExpense.value = false;
      editExpense.value = null;
      selectedTitle.value = null;
      Get.back();
    });
  }

  updateExpense() {
    expenseVM.editExpense(
        editExpense.value?.id ?? "",
        currentUser.value?.id ?? "",
        selectedTitle.value?.id ?? "",
        int.parse(expenseAmountController.text.trim()),
        expenseDescController.text.trim(),
        expenseActiveStatus.value ? "1" : "0");
  }

  StreamSubscription<MyState<ExpenseItem>>? _editExpenseStateSubscription;
  void _subscribeEditExpenseState() {
    _editExpenseStateSubscription?.cancel();
    _editExpenseStateSubscription =
        showStateableDialog<ExpenseItem>(expenseVM.editExpenseStream, (trans) {
      fetchExpenses(0);
      expenseDescController.clear();
      expenseAmountController.clear();
      isEditExpense.value = false;
      editExpense.value = null;
      selectedTitle.value = null;
      Get.back();
    });
  }

  StreamSubscription? _deleteExpenseStateSubscription;
  void _subscribeDeleteExpenseState() {
    _deleteExpenseStateSubscription?.cancel();
    _deleteExpenseStateSubscription =
        showStateableDialog<bool>(expenseVM.deleteExpenseStateStream, (_) {
      fetchExpenses(0);
      expenseDescController.clear();
      expenseAmountController.clear();
      isEditExpense.value = false;
      editExpense.value = null;
      selectedTitle.value = null;
      Get.back();
    });
  }

  void onClickDeleteExpense() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Text(
        "ask_delete".trParams({"value": editExpense.value?.title?.name ?? ""}),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
            onPressed: Get.back, child: Text("no_delete".tr.toUpperCase())),
        TextButton(
            onPressed: () {
              Get.back();
              expenseVM.deleteExpense(editExpense.value?.id ?? "");
            },
            child: Text("delete".tr.toUpperCase())),
      ],
    ));
  }

  @override
  void dispose() {
    _addExpenseTitleStateSubscription?.cancel();
    _editExpenseTitleStateSubscription?.cancel();
    _deleteExpenseTitleStateSubscription?.cancel();
    _addExpenseStateSubscription?.cancel();
    _editExpenseStateSubscription?.cancel();
    _deleteExpenseStateSubscription?.cancel();
    super.dispose();
  }
}
