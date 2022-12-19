import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/expense.dart';
import 'package:mobile_pos/data/repositories/expense_title_repo.dart';
import 'package:mobile_pos/data/request/expense_add_request.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';

class ExpenseTitleViewModel {
  static final ExpenseTitleViewModel _singleton =
      ExpenseTitleViewModel._internal();
  factory ExpenseTitleViewModel() => _singleton;
  ExpenseTitleViewModel._internal() {
    addExpenseTitleStream = _addExpenseTitleStateController.stream;
    expenseTitleListStream = _expenseTitleListController.stream;
    fetchExpenseTitleStream = _fetchExpenseTitleController.stream;
    editExpenseTitleStream = _editExpenseTitleStateController.stream;
    deleteExpenseTitleStateStream = _deleteExpenseTitleStateController.stream;
  }

  final ExpenseTitleRepository _expenseTitleRepository = Get.find();

//LISTING
  final StreamController<List<ExpenseTitle>> _expenseTitleListController =
      StreamController<List<ExpenseTitle>>.broadcast();
  late Stream<List<ExpenseTitle>> expenseTitleListStream;

  StreamSubscription? expenseTitleListSubscription;
  void subscribeExpenseTitle() {
    expenseTitleListSubscription?.cancel();
    expenseTitleListSubscription = _expenseTitleRepository
        .subscribeExpenseTitle()
        .handleError(_expenseTitleListController.sink.addError)
        .listen(_expenseTitleListController.sink.add);
  }

  final StreamController<MyState<List<ExpenseTitle>>>
      _fetchExpenseTitleController =
      StreamController<MyState<List<ExpenseTitle>>>.broadcast();
  late Stream<MyState<List<ExpenseTitle>>> fetchExpenseTitleStream;

  Future fetchExpenseTitle(int page, String id) async {
    try {
      _fetchExpenseTitleController.sink.add(MyState.loading());
      var list = await _expenseTitleRepository.fetchExpenseTitleList(page, id);
      throwif(list.isEmpty, "no_expensetitle_found".tr);
      _fetchExpenseTitleController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchExpenseTitleController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchExpenseTitleController.sink.add(MyState.failed(e));
    }
  }

  //ADD NEW
  final StreamController<MyState<ExpenseTitleItem>>
      _addExpenseTitleStateController =
      StreamController<MyState<ExpenseTitleItem>>.broadcast();
  late Stream<MyState<ExpenseTitleItem>> addExpenseTitleStream;
  StreamSubscription? _addExpenseTitleSubscription;

  void addNewExpenseTitle(String ownerId, String name, String status) async {
    _addExpenseTitleStateController.sink.add(MyState.loading());

    if (name.isEmpty) {
      _addExpenseTitleStateController.sink
          .add(MyState.failed("enter_expensetitle_name".tr));
    } else {
      try {
        var addNewExpenseTitle = ExpenseTitleRequest(ownerId, name, status);
        _addExpenseTitleSubscription?.cancel();
        _addExpenseTitleSubscription = _expenseTitleRepository
            .addExpenseTitle(addNewExpenseTitle)
            .handleError((e) =>
                _addExpenseTitleStateController.sink.add(MyState.failed(e)))
            .listen((cate) => _addExpenseTitleStateController.sink
                .add(MyState.success(cate)));
      } on DioError catch (e) {
        _addExpenseTitleStateController.sink.add(MyState.failed(e.message));
      } catch (e) {
        _addExpenseTitleStateController.sink.add(MyState.failed(e));
      }
    }
  }

//UPDATE
  final StreamController<MyState<ExpenseTitleItem>>
      _editExpenseTitleStateController =
      StreamController<MyState<ExpenseTitleItem>>.broadcast();
  late Stream<MyState<ExpenseTitleItem>> editExpenseTitleStream;
  StreamSubscription? _editExpenseTitleSubscription;

  void editExpenseTitle(
    String id,
    String ownerId,
    String name,
    String status,
  ) async {
    var req = ExpenseTitleRequest(ownerId, name, status);
    try {
      _editExpenseTitleStateController.sink.add(MyState.loading());
      await _editExpenseTitleSubscription?.cancel();
      _editExpenseTitleSubscription = _expenseTitleRepository
          .updateExpenseTitle(id, req)
          .handleError((error) =>
              _editExpenseTitleStateController.sink.add(MyState.failed(error)))
          .listen((cate) =>
              _editExpenseTitleStateController.sink.add(MyState.success(cate)));
    } catch (e) {
      _editExpenseTitleStateController.sink.add(MyState.failed(e));
    }
  }

//DELETE
  final StreamController<MyState<bool>> _deleteExpenseTitleStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> deleteExpenseTitleStateStream;

  void deleteExpenseTitle(String id) {
    _deleteExpenseTitleStateController.sink.add(MyState.loading());
    _expenseTitleRepository.deleteExpenseTitle(id).then((_) {
      _deleteExpenseTitleStateController.sink.add(MyState.success(true));
    }).catchError((e) {
      if (e is DioError) {
        _deleteExpenseTitleStateController.sink.add(MyState.failed(e.message));
      } else {
        _deleteExpenseTitleStateController.sink
            .add(MyState.failed(e.toString()));
      }
    });
  }
}
