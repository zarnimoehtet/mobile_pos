import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';
import '../data/model/customer.dart';
import '../data/repositories/customer_repo.dart';
import '../data/request/customer_add_request.dart';

class CustomerViewModel {
  static final CustomerViewModel _singleton = CustomerViewModel._internal();
  factory CustomerViewModel() => _singleton;
  CustomerViewModel._internal() {
    addCustomerStream = _addCustomerStateController.stream;
    customerListStream = _customerListController.stream;
    fetchCustomerStream = _fetchCustomerController.stream;
    editCustomerStream = _editCustomerStateController.stream;
    deleteCustomerStateStream = _deleteCustomerStateController.stream;
  }

  final CustomerRepository _customerRepository = Get.find();

//LISTING
  final StreamController<List<Customer>> _customerListController =
      StreamController<List<Customer>>.broadcast();
  late Stream<List<Customer>> customerListStream;

  StreamSubscription? customerListSubscription;
  void subscribeCustomer() {
    customerListSubscription?.cancel();
    customerListSubscription = _customerRepository
        .subscribeCustomer()
        .handleError(_customerListController.sink.addError)
        .listen(_customerListController.sink.add);
  }

  final StreamController<MyState<List<Customer>>> _fetchCustomerController =
      StreamController<MyState<List<Customer>>>.broadcast();
  late Stream<MyState<List<Customer>>> fetchCustomerStream;

  Future fetchCustomer(int page, String id) async {
    try {
      _fetchCustomerController.sink.add(MyState.loading());
      var list = await _customerRepository.fetchCustomerList(page, id);
      throwif(list.isEmpty, "no_customer_found".tr);
      _fetchCustomerController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchCustomerController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchCustomerController.sink.add(MyState.failed(e));
    }
  }

  //ADD NEW
  final StreamController<MyState<CustomerItem>> _addCustomerStateController =
      StreamController<MyState<CustomerItem>>.broadcast();
  late Stream<MyState<CustomerItem>> addCustomerStream;
  StreamSubscription? _addCustomerSubscription;

  void addNewCustomer(String name, String email, String phone, String desc,
      String ownerId, String address, String status) async {
    _addCustomerStateController.sink.add(MyState.loading());

    if (name.isEmpty) {
      _addCustomerStateController.sink
          .add(MyState.failed("enter_customer_name".tr));
    } else {
      try {
        var addNewCustomer = CustomerRequest(
          name,
          email,
          phone,
          desc,
          status,
          ownerId,
          address,
        );
        _addCustomerSubscription?.cancel();
        _addCustomerSubscription = _customerRepository
            .addCustomer(addNewCustomer)
            .handleError(
                (e) => _addCustomerStateController.sink.add(MyState.failed(e)))
            .listen((cate) =>
                _addCustomerStateController.sink.add(MyState.success(cate)));
      } on DioError catch (e) {
        _addCustomerStateController.sink.add(MyState.failed(e.message));
      } catch (e) {
        _addCustomerStateController.sink.add(MyState.failed(e));
      }
    }
  }

//UPDATE
  final StreamController<MyState<CustomerItem>> _editCustomerStateController =
      StreamController<MyState<CustomerItem>>.broadcast();
  late Stream<MyState<CustomerItem>> editCustomerStream;
  StreamSubscription? _editCustomerSubscription;

  void editCustomer(
    String id,
    String name,
    String email,
    String phone,
    String desc,
    String ownerId,
    String address,
    String status,
  ) async {
    var req = CustomerRequest(
      name,
      email,
      phone,
      desc,
      status,
      ownerId,
      address,
    );
    try {
      _editCustomerStateController.sink.add(MyState.loading());
      await _editCustomerSubscription?.cancel();
      _editCustomerSubscription = _customerRepository
          .updateCustomer(id, req)
          .handleError((error) =>
              _editCustomerStateController.sink.add(MyState.failed(error)))
          .listen((cate) =>
              _editCustomerStateController.sink.add(MyState.success(cate)));
    } catch (e) {
      _editCustomerStateController.sink.add(MyState.failed(e));
    }
  }

//DELETE
  final StreamController<MyState<bool>> _deleteCustomerStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> deleteCustomerStateStream;

  void deleteCustomer(String id) {
    _deleteCustomerStateController.sink.add(MyState.loading());
    _customerRepository.deleteCustomer(id).then((_) {
      _deleteCustomerStateController.sink.add(MyState.success(true));
    }).catchError((e) {
      if (e is DioError) {
        _deleteCustomerStateController.sink.add(MyState.failed(e.message));
      } else {
        _deleteCustomerStateController.sink.add(MyState.failed(e.toString()));
      }
    });
  }
}
