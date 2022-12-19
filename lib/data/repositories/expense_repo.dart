import 'package:get/get.dart';
import 'package:mobile_pos/data/response/expense_response.dart';
import '../model/expense.dart';
import '../request/expense_add_request.dart';
import '../services/local/local_expense_service.dart';
import '../services/remote/api_service.dart';

abstract class ExpenseRepository {
  Stream<ExpenseItem> addExpense(ExpenseRequest request);

  Stream<List<Expense>> subscribeExpense();
  Future<List<Expense>> fetchExpenseList(int page, String ownerId);
  Stream<ExpenseItem> updateExpense(String expenseId, ExpenseRequest request);
  Future deleteExpense(String id);
}

class ExpenseRepositoryImpl implements ExpenseRepository {
  static final ExpenseRepositoryImpl _singleton =
      ExpenseRepositoryImpl._internal();
  ExpenseRepositoryImpl._internal();
  factory ExpenseRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalExpenseService local = Get.find();
  @override
  Stream<ExpenseItem> addExpense(ExpenseRequest request) async* {
    var response = await remote.addExpense(request);
    if (response is ExpenseAddResponseSuccess) {
      yield response.expenseItem;
    }
    if (response is ExpenseAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is ExpenseAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future<List<Expense>> fetchExpenseList(int page, String ownerId) async {
    var response = await remote.loadExpenseList(ownerid: ownerId);
    if (response is ExpenseListResponseSuccess) {
      if (page == 0) {
        await local.clearExpense();
      }
      await local.saveExpense(response.expenseList);
      return local.getAllExpense(ownerId);
    } else if (response is ExpenseListResponseFail) {
      if (response.expenseList.isEmpty) {
        await local.clearExpense();
      }
      await local.saveExpense(response.expenseList);
      return local.getAllExpense(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<Expense>> subscribeExpense() {
    return local.subscribeExpense();
  }

  @override
  Stream<ExpenseItem> updateExpense(
      String expenseId, ExpenseRequest request) async* {
    var response = await remote.updateExpense(expenseId, request);
    if (response is ExpenseAddResponseSuccess) {
      yield response.expenseItem;
    }
    if (response is ExpenseAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is ExpenseAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future deleteExpense(String id) async {
    var response = await remote.deleteExpense(id);
    if (response is ExpenseDeleteResponseSuccess) {
      await local.deleteExpense(id);
    } else {
      throw response.message ?? "Something is wrong";
    }
  }
}
