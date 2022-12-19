import 'package:get/get.dart';
import 'package:mobile_pos/data/model/supplier.dart';
import 'package:mobile_pos/data/response/supplier_response.dart';
import 'package:mobile_pos/data/services/local/local_supplier_service.dart';

import '../request/supplier_add_request.dart';
import '../services/remote/api_service.dart';

abstract class SupplierRepository {
  Stream<SupplierItem> addSupplier(SupplierRequest request);

  Stream<List<Supplier>> subscribeSupplier();
  Future<List<Supplier>> fetchSupplierList(int page, String ownerId);
  Stream<SupplierItem> updateSupplier(
      String supplierId, SupplierRequest request);
  Future deleteSupplier(String id);
}

class SupplierRepositoryImpl implements SupplierRepository {
  static final SupplierRepositoryImpl _singleton =
      SupplierRepositoryImpl._internal();
  SupplierRepositoryImpl._internal();
  factory SupplierRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalSupplierService local = Get.find();
  @override
  Stream<SupplierItem> addSupplier(SupplierRequest request) async* {
    var response = await remote.addSupplier(request);
    if (response is SupplierAddResponseSuccess) {
      yield response.supplier;
    }
    if (response is SupplierAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is SupplierAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future<List<Supplier>> fetchSupplierList(int page, String ownerId) async {
    var response = await remote.loadSupplierList(ownerid: ownerId);
    if (response is SupplierListResponseSuccess) {
      if (page == 0) {
        await local.clearSupplier();
      }
      await local.saveSupplier(response.supplierList);
      return local.getAllSupplier(ownerId);
    } else if (response is SupplierListResponseFail) {
      if (response.supplierList.isEmpty) {
        await local.clearSupplier();
      }
      await local.saveSupplier(response.supplierList);
      return local.getAllSupplier(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<Supplier>> subscribeSupplier() {
    return local.subscribeSupplier();
  }

  @override
  Stream<SupplierItem> updateSupplier(
      String supplierId, SupplierRequest request) async* {
    var response = await remote.updateSupplier(supplierId, request);
    if (response is SupplierAddResponseSuccess) {
      yield response.supplier;
    }
    if (response is SupplierAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is SupplierAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future deleteSupplier(String id) async {
    var response = await remote.deleteSupplier(id);
    if (response is SupplierDeleteResponseSuccess) {
      await local.deleteSupplier(id);
    } else {
      throw response.message ?? "Something is wrong";
    }
  }
}
