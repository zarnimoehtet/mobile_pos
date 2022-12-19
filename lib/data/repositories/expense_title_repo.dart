import 'package:get/get.dart';
import 'package:mobile_pos/data/response/expense_response.dart';
import '../model/expense.dart';
import '../request/expense_add_request.dart';
import '../services/local/local_expense_title_service.dart';
import '../services/remote/api_service.dart';

abstract class ExpenseTitleRepository {
  Stream<ExpenseTitleItem> addExpenseTitle(ExpenseTitleRequest request);

  Stream<List<ExpenseTitle>> subscribeExpenseTitle();
  Future<List<ExpenseTitle>> fetchExpenseTitleList(int page, String ownerId);
  Stream<ExpenseTitleItem> updateExpenseTitle(
      String expenseTitleId, ExpenseTitleRequest request);
  Future deleteExpenseTitle(String id);
}

class ExpenseTitleRepositoryImpl implements ExpenseTitleRepository {
  static final ExpenseTitleRepositoryImpl _singleton =
      ExpenseTitleRepositoryImpl._internal();
  ExpenseTitleRepositoryImpl._internal();
  factory ExpenseTitleRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalExpenseTitleService local = Get.find();
  @override
  Stream<ExpenseTitleItem> addExpenseTitle(ExpenseTitleRequest request) async* {
    var response = await remote.addExpenseTitle(request);
    if (response is ExpenseTitleAddResponseSuccess) {
      yield response.titleItem;
    }
    if (response is ExpenseTitleAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is ExpenseTitleAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future<List<ExpenseTitle>> fetchExpenseTitleList(
      int page, String ownerId) async {
    var response = await remote.loadExpenseTitleList(ownerid: ownerId);
    if (response is ExpenseTitleListResponseSuccess) {
      if (page == 0) {
        await local.clearExpenseTitle();
      }
      await local.saveExpenseTitle(response.titleList);
      return local.getAllExpenseTitle(ownerId);
    } else if (response is ExpenseTitleListResponseFail) {
      if (response.titleList.isEmpty) {
        await local.clearExpenseTitle();
      }
      await local.saveExpenseTitle(response.titleList);
      return local.getAllExpenseTitle(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<ExpenseTitle>> subscribeExpenseTitle() {
    return local.subscribeExpenseTitle();
  }

  @override
  Stream<ExpenseTitleItem> updateExpenseTitle(
      String expenseTitleId, ExpenseTitleRequest request) async* {
    var response = await remote.updateExpenseTitle(expenseTitleId, request);
    if (response is ExpenseTitleAddResponseSuccess) {
      yield response.titleItem;
    }
    if (response is ExpenseTitleAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is ExpenseTitleAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future deleteExpenseTitle(String id) async {
    var response = await remote.deleteExpenseTitle(id);
    if (response is ExpenseTitleDeleteResponseSuccess) {
      await local.deleteExpenseTitle(id);
    } else {
      throw response.message ?? "Something is wrong";
    }
  }
}
