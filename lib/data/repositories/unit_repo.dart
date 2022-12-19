import 'package:get/get.dart';
import 'package:mobile_pos/data/model/unit.dart';
import 'package:mobile_pos/data/request/unit_add_resquest.dart';
import 'package:mobile_pos/data/response/unit_response.dart';
import 'package:mobile_pos/data/services/local/local_unit_service.dart';

import '../services/remote/api_service.dart';

abstract class UnitRepository {
  Stream<UnitItem> addUnit(UnitAddRequest request);

  Stream<List<Unit>> subscribeUnit();
  Future<List<Unit>> fetchUnitList(int page, String ownerId);
  Stream<UnitItem> updateUnit(String unitId, UnitAddRequest request);
  Future deleteUnit(String id);
}

class UnitRepositoryImpl implements UnitRepository {
  static final UnitRepositoryImpl _singleton = UnitRepositoryImpl._internal();
  UnitRepositoryImpl._internal();
  factory UnitRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalUnitService local = Get.find();
  @override
  Stream<UnitItem> addUnit(UnitAddRequest request) async* {
    var response = await remote.addUnits(request);
    if (response is UnitAddResponseSuccess) {
      yield response.unit;
    }
    if (response is UnitAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is UnitAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future<List<Unit>> fetchUnitList(int page, String ownerId) async {
    var response = await remote.loadUnitList(ownerid: ownerId);
    if (response is UnitListResponseSuccess) {
      if (page == 0) {
        await local.clearUnit();
      }
      await local.saveUnit(response.unitList);
      return local.getAllUnit(ownerId);
    } else if (response is UnitListResponseFail) {
      if (response.unitList.isEmpty) {
        await local.clearUnit();
      }
      await local.saveUnit(response.unitList);
      return local.getAllUnit(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<Unit>> subscribeUnit() {
    return local.subscribeUnit();
  }

  @override
  Stream<UnitItem> updateUnit(String unitId, UnitAddRequest request) async* {
    var response = await remote.updateUnits(unitId, request);
    if (response is UnitAddResponseSuccess) {
      yield response.unit;
    }
    if (response is UnitAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is UnitAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future deleteUnit(String id) async {
    var response = await remote.deleteUnit(id);
    if (response is UnitDeleteResponseSuccess) {
      await local.deleteUnit(id);
    } else {
      throw response.message ?? "Something is wrong";
    }
  }
}
