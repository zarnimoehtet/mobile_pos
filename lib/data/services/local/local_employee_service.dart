import 'package:hive/hive.dart';

import '../../model/user.dart';

abstract class LocalEmployeeService {
  Future saveEmployee(Employee emp);

  Future<Employee?> getCurrentEmployee();
  Future deleteCurrentEmployee();
}

class LocalEmployeeServiceImpl implements LocalEmployeeService {
  static final LocalEmployeeServiceImpl _singleton =
      LocalEmployeeServiceImpl._internal();
  LocalEmployeeServiceImpl._internal();
  factory LocalEmployeeServiceImpl() => _singleton;

  var box = Hive.box<Employee>("emp");

  @override
  Future<Employee?> getCurrentEmployee() async {
    var emp = box.get("login-emp");
    return emp;
  }

  @override
  Future saveEmployee(Employee emp) async {
    await box.put("login-emp", emp);
  }

  @override
  Future deleteCurrentEmployee() async {
    await box.clear();
  }
}
