import 'package:dio/dio.dart';
import 'package:mobile_pos/data/request/customer_add_request.dart';
import 'package:mobile_pos/data/request/employee_add_request.dart';
import 'package:mobile_pos/data/request/expense_add_request.dart';
import 'package:mobile_pos/data/request/sale_request.dart';
import 'package:mobile_pos/data/request/supplier_add_request.dart';
import 'package:mobile_pos/data/response/category_response.dart';
import 'package:mobile_pos/data/response/customer_response.dart';
import 'package:mobile_pos/data/response/employee_response.dart';
import 'package:mobile_pos/data/response/expense_response.dart';
import 'package:mobile_pos/data/response/item_response.dart';
import 'package:mobile_pos/data/response/sale_response.dart';
import 'package:mobile_pos/data/response/sku_response.dart';
import 'package:mobile_pos/data/response/supplier_response.dart';
import 'package:mobile_pos/data/response/unit_response.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

import '../../request/category_add_request.dart';
import '../../request/item_add_request.dart';
import '../../request/unit_add_resquest.dart';
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

  @retrofit.GET("/api/generatesku")
  Future<SKUResponse> generateSKU({
    @retrofit.Query("ownerid") String? ownerid,
  });

  @retrofit.POST("/api/product_item")
  Future<ItemAddResponse> addItem(@retrofit.Body() ItemAddRequest body);

  @retrofit.POST("/api/product_item/{id}")
  Future<ItemAddResponse> updateItem(
      @retrofit.Path() String id, @retrofit.Body() ItemAddRequest body);

  @retrofit.DELETE("/api/product_item/{id}")
  Future<ItemDeleteResponse> deleteItem(@retrofit.Path() String id);

  @retrofit.GET("/api/units")
  Future<UnitListResponse> loadUnitList({
    @retrofit.Query("status") bool? status = true,
    @retrofit.Query("ownerid") String? ownerid,
  });

  @retrofit.POST("/api/unit")
  Future<UnitAddResponse> addUnits(@retrofit.Body() UnitAddRequest body);

  @retrofit.POST("/api/unit/{id}")
  Future<UnitAddResponse> updateUnits(
      @retrofit.Path() String id, @retrofit.Body() UnitAddRequest body);

  @retrofit.DELETE("/api/unit/{id}")
  Future<UnitDeleteResponse> deleteUnit(@retrofit.Path() String id);

  @retrofit.GET("/api/suppliers")
  Future<SupplierListResponse> loadSupplierList({
    @retrofit.Query("status") bool? status = true,
    @retrofit.Query("ownerid") String? ownerid,
  });

  @retrofit.POST("/api/supplier")
  Future<SupplierAddResponse> addSupplier(
      @retrofit.Body() SupplierRequest body);

  @retrofit.POST("/api/supplier/{id}")
  Future<SupplierAddResponse> updateSupplier(
      @retrofit.Path() String id, @retrofit.Body() SupplierRequest body);

  @retrofit.DELETE("/api/supplier/{id}")
  Future<SupplierDeleteResponse> deleteSupplier(@retrofit.Path() String id);

  @retrofit.GET("/api/customers")
  Future<CustomerListResponse> loadCustomerList({
    @retrofit.Query("status") bool? status = true,
    @retrofit.Query("ownerid") String? ownerid,
  });

  @retrofit.POST("/api/customer")
  Future<CustomerAddResponse> addCustomer(
      @retrofit.Body() CustomerRequest body);

  @retrofit.POST("/api/customer/{id}")
  Future<CustomerAddResponse> updateCustomer(
      @retrofit.Path() String id, @retrofit.Body() CustomerRequest body);

  @retrofit.DELETE("/api/customer/{id}")
  Future<CustomerDeleteResponse> deleteCustomer(@retrofit.Path() String id);

  @retrofit.GET("/api/expense_titles")
  Future<ExpenseTitleListResponse> loadExpenseTitleList({
    @retrofit.Query("status") bool? status = true,
    @retrofit.Query("ownerid") String? ownerid,
  });

  @retrofit.POST("/api/expense_title")
  Future<ExpenseTitleAddResponse> addExpenseTitle(
      @retrofit.Body() ExpenseTitleRequest body);

  @retrofit.POST("/api/expense_title/{id}")
  Future<ExpenseTitleAddResponse> updateExpenseTitle(
      @retrofit.Path() String id, @retrofit.Body() ExpenseTitleRequest body);

  @retrofit.DELETE("/api/expense_title/{id}")
  Future<ExpenseTitleDeleteResponse> deleteExpenseTitle(
      @retrofit.Path() String id);

  @retrofit.GET("/api/expenses")
  Future<ExpenseListResponse> loadExpenseList({
    @retrofit.Query("status") bool? status = true,
    @retrofit.Query("ownerid") String? ownerid,
  });

  @retrofit.POST("/api/expense")
  Future<ExpenseAddResponse> addExpense(@retrofit.Body() ExpenseRequest body);

  @retrofit.POST("/api/expense/{id}")
  Future<ExpenseAddResponse> updateExpense(
      @retrofit.Path() String id, @retrofit.Body() ExpenseRequest body);

  @retrofit.DELETE("/api/expense/{id}")
  Future<ExpenseDeleteResponse> deleteExpense(@retrofit.Path() String id);

  @retrofit.POST("/api/sale_invoice")
  Future<SaleResponse> addToSaleInvocie(@retrofit.Body() SalesRequest body);
}
