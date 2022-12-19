import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/repositories/category_repo.dart';
import 'package:mobile_pos/data/request/category_add_request.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';

class CategoryViewModel {
  static final CategoryViewModel _singleton = CategoryViewModel._internal();
  factory CategoryViewModel() => _singleton;
  CategoryViewModel._internal() {
    addCategoryStream = _addCategoryStateController.stream;
    categoryListStream = _categoryListController.stream;
    fetchCategoryStream = _fetchCategoryController.stream;
    editCategoryStream = _editCategoryStateController.stream;
    deleteCategoryStateStream = _deleteCategoryStateController.stream;
  }

  final CategoryRepository _categoryRepository = Get.find();

//LISTING
  final StreamController<List<Category>> _categoryListController =
      StreamController<List<Category>>.broadcast();
  late Stream<List<Category>> categoryListStream;

  StreamSubscription? categoryListSubscription;
  void subscribeCategory() {
    categoryListSubscription?.cancel();
    categoryListSubscription = _categoryRepository
        .subscribeCategory()
        .handleError(_categoryListController.sink.addError)
        .listen(_categoryListController.sink.add);
  }

  final StreamController<MyState<List<Category>>> _fetchCategoryController =
      StreamController<MyState<List<Category>>>.broadcast();
  late Stream<MyState<List<Category>>> fetchCategoryStream;

  Future fetchCategories(int page, String id) async {
    try {
      _fetchCategoryController.sink.add(MyState.loading());
      var list = await _categoryRepository.fetchCategoryList(page, id);
      throwif(list.isEmpty, "no_category_found".tr);
      _fetchCategoryController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchCategoryController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchCategoryController.sink.add(MyState.failed(e));
    }
  }

  //ADD NEW
  final StreamController<MyState<CategoryItem>> _addCategoryStateController =
      StreamController<MyState<CategoryItem>>.broadcast();
  late Stream<MyState<CategoryItem>> addCategoryStream;
  StreamSubscription? _addCategorySubscription;

  void addNewCategory(String ownerId, String name, String desc, String color,
      bool status) async {
    _addCategoryStateController.sink.add(MyState.loading());

    if (name.isEmpty) {
      _addCategoryStateController.sink
          .add(MyState.failed("enter_category_name".tr));
    } else {
      try {
        var addNewCategory =
            CategoryAddRequest(ownerId, name, color, desc, status);
        _addCategorySubscription?.cancel();
        _addCategorySubscription = _categoryRepository
            .addCategory(addNewCategory)
            .handleError(
                (e) => _addCategoryStateController.sink.add(MyState.failed(e)))
            .listen((cate) =>
                _addCategoryStateController.sink.add(MyState.success(cate)));
      } on DioError catch (e) {
        _addCategoryStateController.sink.add(MyState.failed(e.message));
      } catch (e) {
        _addCategoryStateController.sink.add(MyState.failed(e));
      }
    }
  }

//UPDATE
  final StreamController<MyState<CategoryItem>> _editCategoryStateController =
      StreamController<MyState<CategoryItem>>.broadcast();
  late Stream<MyState<CategoryItem>> editCategoryStream;
  StreamSubscription? _editCategorySubscription;

  void editCategory(String id, String ownerId, String name, String desc,
      String color, bool status) async {
    var req = CategoryAddRequest(ownerId, name, color, desc, status);
    try {
      _editCategoryStateController.sink.add(MyState.loading());
      await _editCategorySubscription?.cancel();
      _editCategorySubscription = _categoryRepository
          .updateCategory(id, req)
          .handleError((error) =>
              _editCategoryStateController.sink.add(MyState.failed(error)))
          .listen((cate) =>
              _editCategoryStateController.sink.add(MyState.success(cate)));
    } catch (e) {
      _editCategoryStateController.sink.add(MyState.failed(e));
    }
  }

//DELETE
  final StreamController<MyState<bool>> _deleteCategoryStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> deleteCategoryStateStream;

  void deleteCategory(String id) {
    _deleteCategoryStateController.sink.add(MyState.loading());
    _categoryRepository.deleteCategory(id).then((_) {
      _deleteCategoryStateController.sink.add(MyState.success(true));
    }).catchError((e) {
      if (e is DioError) {
        _deleteCategoryStateController.sink.add(MyState.failed(e.message));
      } else {
        _deleteCategoryStateController.sink.add(MyState.failed(e.toString()));
      }
    });
  }
}
