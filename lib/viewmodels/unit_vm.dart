import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/unit.dart';
import 'package:mobile_pos/data/repositories/unit_repo.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';

class UnitViewModel {
  static final UnitViewModel _singleton = UnitViewModel._internal();
  factory UnitViewModel() => _singleton;
  UnitViewModel._internal() {
    // addCategoryStream = _addCategoryStateController.stream;
    unitListStream = _unitListController.stream;
    fetchUnitStream = _fetchUnitController.stream;
    // editCategoryStream = _editCategoryStateController.stream;
    // deleteCategoryStateStream = _deleteCategoryStateController.stream;
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

//   //ADD NEW
//   final StreamController<MyState<CategoryItem>> _addCategoryStateController =
//       StreamController<MyState<CategoryItem>>.broadcast();
//   late Stream<MyState<CategoryItem>> addCategoryStream;
//   StreamSubscription? _addCategorySubscription;

//   void addNewCategory(
//       String ownerId, String name, String desc, String color) async {
//     _addCategoryStateController.sink.add(MyState.loading());

//     if (name.isEmpty) {
//       _addCategoryStateController.sink
//           .add(MyState.failed("enter_category_name".tr));
//     } else {
//       try {
//         var addNewCategory =
//             CategoryAddRequest(ownerId, name, color, desc, true);
//         _addCategorySubscription?.cancel();
//         _addCategorySubscription = _categoryRepository
//             .addCategory(addNewCategory)
//             .handleError(
//                 (e) => _addCategoryStateController.sink.add(MyState.failed(e)))
//             .listen((cate) =>
//                 _addCategoryStateController.sink.add(MyState.success(cate)));
//       } on DioError catch (e) {
//         _addCategoryStateController.sink.add(MyState.failed(e.message));
//       } catch (e) {
//         _addCategoryStateController.sink.add(MyState.failed(e));
//       }
//     }
//   }

// //UPDATE
//   final StreamController<MyState<CategoryItem>> _editCategoryStateController =
//       StreamController<MyState<CategoryItem>>.broadcast();
//   late Stream<MyState<CategoryItem>> editCategoryStream;
//   StreamSubscription? _editCategorySubscription;

//   void editCategory(
//       String id, String ownerId, String name, String desc, String color) async {
//     var req = CategoryAddRequest(ownerId, name, color, desc, true);
//     try {
//       _editCategoryStateController.sink.add(MyState.loading());
//       await _editCategorySubscription?.cancel();
//       _editCategorySubscription = _categoryRepository
//           .updateCategory(id, req)
//           .handleError((error) =>
//               _editCategoryStateController.sink.add(MyState.failed(error)))
//           .listen((cate) =>
//               _editCategoryStateController.sink.add(MyState.success(cate)));
//     } catch (e) {
//       _editCategoryStateController.sink.add(MyState.failed(e));
//     }
//   }

// //DELETE
//   final StreamController<MyState<bool>> _deleteCategoryStateController =
//       StreamController<MyState<bool>>.broadcast();
//   late Stream<MyState<bool>> deleteCategoryStateStream;

//   void deleteCategory(String id) {
//     _deleteCategoryStateController.sink.add(MyState.loading());
//     _categoryRepository.deleteCategory(id).then((_) {
//       _deleteCategoryStateController.sink.add(MyState.success(true));
//     }).catchError((e) {
//       if (e is DioError) {
//         _deleteCategoryStateController.sink.add(MyState.failed(e.message));
//       } else {
//         _deleteCategoryStateController.sink.add(MyState.failed(e.toString()));
//       }
//     });
//   }
}
