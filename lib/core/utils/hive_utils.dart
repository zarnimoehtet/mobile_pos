import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/model/employee.dart';
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
  }
}

void _register<T>(int typeId, TypeAdapter<T> adapter) {
  if (!Hive.isAdapterRegistered(typeId)) {
    Hive.registerAdapter<T>(adapter);
  }
}
