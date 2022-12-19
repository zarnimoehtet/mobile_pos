import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';
import '../data/model/supplier.dart';
import '../data/repositories/supplier_repo.dart';
import '../data/request/supplier_add_request.dart';

class SupplierViewModel {
  static final SupplierViewModel _singleton = SupplierViewModel._internal();
  factory SupplierViewModel() => _singleton;
  SupplierViewModel._internal() {
    addSupplierStream = _addSupplierStateController.stream;
    supplierListStream = _supplierListController.stream;
    fetchSupplierStream = _fetchSupplierController.stream;
    editSupplierStream = _editSupplierStateController.stream;
    deleteSupplierStateStream = _deleteSupplierStateController.stream;
  }

  final SupplierRepository _supplierRepository = Get.find();

//LISTING
  final StreamController<List<Supplier>> _supplierListController =
      StreamController<List<Supplier>>.broadcast();
  late Stream<List<Supplier>> supplierListStream;

  StreamSubscription? supplierListSubscription;
  void subscribeSupplier() {
    supplierListSubscription?.cancel();
    supplierListSubscription = _supplierRepository
        .subscribeSupplier()
        .handleError(_supplierListController.sink.addError)
        .listen(_supplierListController.sink.add);
  }

  final StreamController<MyState<List<Supplier>>> _fetchSupplierController =
      StreamController<MyState<List<Supplier>>>.broadcast();
  late Stream<MyState<List<Supplier>>> fetchSupplierStream;

  Future fetchSupplier(int page, String id) async {
    try {
      _fetchSupplierController.sink.add(MyState.loading());
      var list = await _supplierRepository.fetchSupplierList(page, id);
      throwif(list.isEmpty, "no_supplier_found".tr);
      _fetchSupplierController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchSupplierController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchSupplierController.sink.add(MyState.failed(e));
    }
  }

  //ADD NEW
  final StreamController<MyState<SupplierItem>> _addSupplierStateController =
      StreamController<MyState<SupplierItem>>.broadcast();
  late Stream<MyState<SupplierItem>> addSupplierStream;
  StreamSubscription? _addSupplierSubscription;

  void addNewSupplier(String name, String email, String phone, String desc,
      String ownerId, String address, String status) async {
    _addSupplierStateController.sink.add(MyState.loading());

    if (name.isEmpty) {
      _addSupplierStateController.sink
          .add(MyState.failed("enter_supplier_name".tr));
    } else {
      try {
        var addNewSupplier = SupplierRequest(
          name,
          email,
          phone,
          desc,
          status,
          ownerId,
          address,
        );
        _addSupplierSubscription?.cancel();
        _addSupplierSubscription = _supplierRepository
            .addSupplier(addNewSupplier)
            .handleError(
                (e) => _addSupplierStateController.sink.add(MyState.failed(e)))
            .listen((cate) =>
                _addSupplierStateController.sink.add(MyState.success(cate)));
      } on DioError catch (e) {
        _addSupplierStateController.sink.add(MyState.failed(e.message));
      } catch (e) {
        _addSupplierStateController.sink.add(MyState.failed(e));
      }
    }
  }

//UPDATE
  final StreamController<MyState<SupplierItem>> _editSupplierStateController =
      StreamController<MyState<SupplierItem>>.broadcast();
  late Stream<MyState<SupplierItem>> editSupplierStream;
  StreamSubscription? _editSupplierSubscription;

  void editSupplier(
    String id,
    String name,
    String email,
    String phone,
    String desc,
    String ownerId,
    String address,
    String status,
  ) async {
    var req = SupplierRequest(
      name,
      email,
      phone,
      desc,
      status,
      ownerId,
      address,
    );
    try {
      _editSupplierStateController.sink.add(MyState.loading());
      await _editSupplierSubscription?.cancel();
      _editSupplierSubscription = _supplierRepository
          .updateSupplier(id, req)
          .handleError((error) =>
              _editSupplierStateController.sink.add(MyState.failed(error)))
          .listen((cate) =>
              _editSupplierStateController.sink.add(MyState.success(cate)));
    } catch (e) {
      _editSupplierStateController.sink.add(MyState.failed(e));
    }
  }

//DELETE
  final StreamController<MyState<bool>> _deleteSupplierStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> deleteSupplierStateStream;

  void deleteSupplier(String id) {
    _deleteSupplierStateController.sink.add(MyState.loading());
    _supplierRepository.deleteSupplier(id).then((_) {
      _deleteSupplierStateController.sink.add(MyState.success(true));
    }).catchError((e) {
      if (e is DioError) {
        _deleteSupplierStateController.sink.add(MyState.failed(e.message));
      } else {
        _deleteSupplierStateController.sink.add(MyState.failed(e.toString()));
      }
    });
  }
}
