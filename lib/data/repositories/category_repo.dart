import 'package:get/get.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/request/category_add_request.dart';
import 'package:mobile_pos/data/response/category_response.dart';
import 'package:mobile_pos/data/services/local/local_category_service.dart';

import '../services/remote/api_service.dart';

abstract class CategoryRepository {
  Stream<CategoryItem> addCategory(CategoryAddRequest request);

  Stream<List<Category>> subscribeCategory();
  Future<List<Category>> fetchCategoryList(int page, String ownerId);
  Stream<CategoryItem> updateCategory(
      String categoryId, CategoryAddRequest request);
  Future deleteCategory(String id);
}

class CategoryRepositoryImpl implements CategoryRepository {
  static final CategoryRepositoryImpl _singleton =
      CategoryRepositoryImpl._internal();
  CategoryRepositoryImpl._internal();
  factory CategoryRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalCategoryService local = Get.find();
  @override
  Stream<CategoryItem> addCategory(CategoryAddRequest request) async* {
    var response = await remote.addCategory(request);
    if (response is CategoryAddResponseSuccess) {
      yield response.category;
    }
    if (response is CategoryAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is CategoryAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future<List<Category>> fetchCategoryList(int page, String ownerId) async {
    var response = await remote.loadCategoryList(ownerid: ownerId);
    if (response is CategoryListResponseSuccess) {
      if (page == 0) {
        await local.clearCategory();
      }
      await local.saveCategory(response.categoryList);
      return local.getAllCategory(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<Category>> subscribeCategory() {
    return local.subscribeCategory();
  }

  @override
  Stream<CategoryItem> updateCategory(
      String categoryId, CategoryAddRequest request) async* {
    var response = await remote.updateCategory(categoryId, request);
    if (response is CategoryUpdateResponseSuccess) {
      yield response.category;
    }
    if (response is CategoryUpdateResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is CategoryUpdateResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future deleteCategory(String id) async {
    var response = await remote.deleteCategory(id);
    if (response is CategoryDeleteResponseSuccess) {
      await local.deleteCategory(id);
    } else {
      throw response.message ?? "Something is wrong";
    }
  }
}
