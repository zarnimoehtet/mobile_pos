import 'package:dio/dio.dart';
import 'package:mobile_pos/data/request/employee_add_request.dart';
import 'package:mobile_pos/data/response/category_response.dart';
import 'package:mobile_pos/data/response/employee_response.dart';
import 'package:mobile_pos/data/response/item_response.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

import '../../request/category_add_request.dart';
import '../../request/item_add_request.dart';
import '../../response/user_response.dart';
part 'api_service.g.dart';

@retrofit.RestApi()
abstract class APIService {
  factory APIService(Dio dio) = _APIService;

  @retrofit.POST("/api/login")
  Future<UserResponse> login(@retrofit.Body() Map<String, dynamic> body);

  @retrofit.GET("/api/product_categories")
  Future<CategoryListResponse> loadCategoryList({
    @retrofit.Query("status") bool? status = true,
    @retrofit.Query("ownerid") String? ownerid,
  });

  @retrofit.POST("/api/product_category")
  Future<CategoryAddResponse> addCategory(
      @retrofit.Body() CategoryAddRequest body);

  @retrofit.POST("/api/product_category/{id}")
  Future<CategoryUpdateResponse> updateCategory(
      @retrofit.Path() String id, @retrofit.Body() CategoryAddRequest body);

  @retrofit.DELETE("/api/product_category/{id}")
  Future<CategoryDeleteResponse> deleteCategory(@retrofit.Path() String id);

  @retrofit.GET("/api/employees")
  Future<EmployeeListResponse> loadEmplyeeList({
    @retrofit.Query("status") bool? status = true,
    @retrofit.Query("ownerid") String? ownerid,
  });

  @retrofit.POST("/api/employee")
  Future<EmployeeAddResponse> addEmployee(
      @retrofit.Body() EmployeeRequest body);

  @retrofit.POST("/api/employee/{id}")
  Future<EmployeeAddResponse> updateEmployee(
      @retrofit.Path() String id, @retrofit.Body() EmployeeRequest body);

  @retrofit.DELETE("/api/employee/{id}")
  Future<EmployeeDeleteResponse> deleteEmployee(@retrofit.Path() String id);

  @retrofit.GET("/api/product_item")
  Future<ItemListResponse> loadItemList({
    @retrofit.Query("status") bool? status = true,
    @retrofit.Query("ownerid") String? ownerid,
    @retrofit.Query("limit") int? limit = 10,
    @retrofit.Query("skip") int? skip,
    @retrofit.Query("search") String? search,
  });

  @retrofit.POST("/api/product_item")
  Future<ItemAddResponse> addItem(@retrofit.Body() ItemAddRequest body);

  @retrofit.POST("/api/product_item/{id}")
  Future<ItemAddResponse> updateItem(
      @retrofit.Path() String id, @retrofit.Body() ItemAddRequest body);

  @retrofit.DELETE("/api/product_item/{id}")
  Future<ItemDeleteResponse> deleteItem(@retrofit.Path() String id);
}
