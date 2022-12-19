import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/expense.dart';
import 'package:mobile_pos/data/request/expense_add_request.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';
import '../data/repositories/expense_repo.dart';

class ExpenseViewModel {
  static final ExpenseViewModel _singleton = ExpenseViewModel._internal();
  factory ExpenseViewModel() => _singleton;
  ExpenseViewModel._internal() {
    addExpenseStream = _addExpenseStateController.stream;
    expenseListStream = _expenseListController.stream;
    fetchExpenseStream = _fetchExpenseController.stream;
    editExpenseStream = _editExpenseStateController.stream;
    deleteExpenseStateStream = _deleteExpenseStateController.stream;
  }

  final ExpenseRepository _expenseRepository = Get.find();

//LISTING
  final StreamController<List<Expense>> _expenseListController =
      StreamController<List<Expense>>.broadcast();
  late Stream<List<Expense>> expenseListStream;

  StreamSubscription? expenseListSubscription;
  void subscribeExpense() {
    expenseListSubscription?.cancel();
    expenseListSubscription = _expenseRepository
        .subscribeExpense()
        .handleError(_expenseListController.sink.addError)
        .listen(_expenseListController.sink.add);
  }

  final StreamController<MyState<List<Expense>>> _fetchExpenseController =
      StreamController<MyState<List<Expense>>>.broadcast();
  late Stream<MyState<List<Expense>>> fetchExpenseStream;

  Future fetchExpense(int page, String id) async {
    try {
      _fetchExpenseController.sink.add(MyState.loading());
      var list = await _expenseRepository.fetchExpenseList(page, id);
      throwif(list.isEmpty, "no_expense_found".tr);
      _fetchExpenseController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchExpenseController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchExpenseController.sink.add(MyState.failed(e));
    }
  }

  //ADD NEW
  final StreamController<MyState<ExpenseItem>> _addExpenseStateController =
      StreamController<MyState<ExpenseItem>>.broadcast();
  late Stream<MyState<ExpenseItem>> addExpenseStream;
  StreamSubscription? _addExpenseSubscription;

  void addNewExpense(String ownerId, String titleId, int amount, String desc,
      String status) async {
    _addExpenseStateController.sink.add(MyState.loading());

    if (amount == 0) {
      _addExpenseStateController.sink.add(MyState.failed("enter_amount".tr));
    } else {
      try {
        var addNewExpense =
            ExpenseRequest(ownerId, titleId, amount, desc, status);
        _addExpenseSubscription?.cancel();
        _addExpenseSubscription = _expenseRepository
            .addExpense(addNewExpense)
            .handleError(
                (e) => _addExpenseStateController.sink.add(MyState.failed(e)))
            .listen((cate) =>
                _addExpenseStateController.sink.add(MyState.success(cate)));
      } on DioError catch (e) {
        _addExpenseStateController.sink.add(MyState.failed(e.message));
      } catch (e) {
        _addExpenseStateController.sink.add(MyState.failed(e));
      }
    }
  }

//UPDATE
  final StreamController<MyState<ExpenseItem>> _editExpenseStateController =
      StreamController<MyState<ExpenseItem>>.broadcast();
  late Stream<MyState<ExpenseItem>> editExpenseStream;
  StreamSubscription? _editExpenseSubscription;

  void editExpense(String id, String ownerId, String titleId, int amount,
      String desc, String status) async {
    var req = ExpenseRequest(ownerId, titleId, amount, desc, status);
    if (amount == 0) {
      _addExpenseStateController.sink.add(MyState.failed("enter_amount".tr));
    } else {
      try {
        _editExpenseStateController.sink.add(MyState.loading());
        await _editExpenseSubscription?.cancel();
        _editExpenseSubscription = _expenseRepository
            .updateExpense(id, req)
            .handleError((error) =>
                _editExpenseStateController.sink.add(MyState.failed(error)))
            .listen((cate) =>
                _editExpenseStateController.sink.add(MyState.success(cate)));
      } catch (e) {
        _editExpenseStateController.sink.add(MyState.failed(e));
      }
    }
  }

//DELETE
  final StreamController<MyState<bool>> _deleteExpenseStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> deleteExpenseStateStream;

  void deleteExpense(String id) {
    _deleteExpenseStateController.sink.add(MyState.loading());
    _expenseRepository.deleteExpense(id).then((_) {
      _deleteExpenseStateController.sink.add(MyState.success(true));
    }).catchError((e) {
      if (e is DioError) {
        _deleteExpenseStateController.sink.add(MyState.failed(e.message));
      } else {
        _deleteExpenseStateController.sink.add(MyState.failed(e.toString()));
      }
    });
  }
}
