import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/unit.dart';
import 'package:mobile_pos/data/repositories/unit_repo.dart';
import 'package:mobile_pos/data/request/unit_add_resquest.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';

class UnitViewModel {
  static final UnitViewModel _singleton = UnitViewModel._internal();
  factory UnitViewModel() => _singleton;
  UnitViewModel._internal() {
    addUnitStream = _addUnitStateController.stream;
    unitListStream = _unitListController.stream;
    fetchUnitStream = _fetchUnitController.stream;
    editUnitStream = _editUnitStateController.stream;
    deleteUnitStateStream = _deleteUnitStateController.stream;
  }

  final UnitRepository _unitRepository = Get.find();

//LISTING
  final StreamController<List<Unit>> _unitListController =
      StreamController<List<Unit>>.broadcast();
  late Stream<List<Unit>> unitListStream;

  StreamSubscription? unitListSubscription;
  void subscribeUnit() {
    unitListSubscription?.cancel();
    unitListSubscription = _unitRepository
        .subscribeUnit()
        .handleError(_unitListController.sink.addError)
        .listen(_unitListController.sink.add);
  }

  final StreamController<MyState<List<Unit>>> _fetchUnitController =
      StreamController<MyState<List<Unit>>>.broadcast();
  late Stream<MyState<List<Unit>>> fetchUnitStream;

  Future fetchUnit(int page, String id) async {
    try {
      _fetchUnitController.sink.add(MyState.loading());
      var list = await _unitRepository.fetchUnitList(page, id);
      throwif(list.isEmpty, "no_unit_found".tr);
      _fetchUnitController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchUnitController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchUnitController.sink.add(MyState.failed(e));
    }
  }

  //ADD NEW
  final StreamController<MyState<UnitItem>> _addUnitStateController =
      StreamController<MyState<UnitItem>>.broadcast();
  late Stream<MyState<UnitItem>> addUnitStream;
  StreamSubscription? _addUnitSubscription;

  void addNewUnit(
      String ownerId, String name, String desc, String status) async {
    _addUnitStateController.sink.add(MyState.loading());

    if (name.isEmpty) {
      _addUnitStateController.sink.add(MyState.failed("enter_unit_name".tr));
    } else {
      try {
        var addNewUnit = UnitAddRequest(ownerId, name, desc, status);
        _addUnitSubscription?.cancel();
        _addUnitSubscription = _unitRepository
            .addUnit(addNewUnit)
            .handleError(
                (e) => _addUnitStateController.sink.add(MyState.failed(e)))
            .listen((cate) =>
                _addUnitStateController.sink.add(MyState.success(cate)));
      } on DioError catch (e) {
        _addUnitStateController.sink.add(MyState.failed(e.message));
      } catch (e) {
        _addUnitStateController.sink.add(MyState.failed(e));
      }
    }
  }

//UPDATE
  final StreamController<MyState<UnitItem>> _editUnitStateController =
      StreamController<MyState<UnitItem>>.broadcast();
  late Stream<MyState<UnitItem>> editUnitStream;
  StreamSubscription? _editUnitSubscription;

  void editUnit(
    String id,
    String ownerId,
    String name,
    String desc,
    String status,
  ) async {
    var req = UnitAddRequest(ownerId, name, desc, status);
    try {
      _editUnitStateController.sink.add(MyState.loading());
      await _editUnitSubscription?.cancel();
      _editUnitSubscription = _unitRepository
          .updateUnit(id, req)
          .handleError((error) =>
              _editUnitStateController.sink.add(MyState.failed(error)))
          .listen((cate) =>
              _editUnitStateController.sink.add(MyState.success(cate)));
    } catch (e) {
      _editUnitStateController.sink.add(MyState.failed(e));
    }
  }

//DELETE
  final StreamController<MyState<bool>> _deleteUnitStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> deleteUnitStateStream;

  void deleteUnit(String id) {
    _deleteUnitStateController.sink.add(MyState.loading());
    _unitRepository.deleteUnit(id).then((_) {
      _deleteUnitStateController.sink.add(MyState.success(true));
    }).catchError((e) {
      if (e is DioError) {
        _deleteUnitStateController.sink.add(MyState.failed(e.message));
      } else {
        _deleteUnitStateController.sink.add(MyState.failed(e.toString()));
      }
    });
  }
}
