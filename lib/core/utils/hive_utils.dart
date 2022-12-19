import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/model/customer.dart';
import 'package:mobile_pos/data/model/employee.dart';
import 'package:mobile_pos/data/model/expense.dart';
import 'package:mobile_pos/data/model/item.dart';
import 'package:mobile_pos/data/model/media.dart';
import 'package:mobile_pos/data/model/sale.dart';
import 'package:mobile_pos/data/model/supplier.dart';
import 'package:mobile_pos/data/model/unit.dart';
import 'package:mobile_pos/data/model/user.dart';

class HiveUtils {
  static Future registerHive() async {
    await Hive.initFlutter();
    _register<User>(0, UserAdapter());
    _register<Employee>(1, EmployeeAdapter());
    _register<Shop>(2, ShopAdapter());
    _register<Category>(3, CategoryAdapter());
    _register<Owner>(4, OwnerAdapter());
    _register<CategoryItem>(5, CategoryItemAdapter());
    _register<EmployeeItem>(6, EmployeeItemAdapter());
    _register<Item>(7, ItemAdapter());
    _register<Presentation>(8, PresentationAdapter());
    _register<ItemRes>(9, ItemResAdapter());
    _register<Unit>(10, UnitAdapter());
    _register<UnitItem>(11, UnitItemAdapter());
    _register<Varient>(12, VarientAdapter());
    _register<Supplier>(13, SupplierAdapter());
    _register<SupplierItem>(14, SupplierItemAdapter());
    _register<Customer>(15, CustomerAdapter());
    _register<CustomerItem>(16, CustomerItemAdapter());
    _register<ExpenseTitle>(17, ExpenseTitleAdapter());
    _register<ExpenseTitleItem>(18, ExpenseTitleItemAdapter());
    _register<Expense>(19, ExpenseAdapter());
    _register<ExpenseItem>(20, ExpenseItemAdapter());
    _register<Media>(21, MediaAdapter());
    _register<Sale>(22, SaleAdapter());
  }
}

void _register<T>(int typeId, TypeAdapter<T> adapter) {
  if (!Hive.isAdapterRegistered(typeId)) {
    Hive.registerAdapter<T>(adapter);
  }
}
