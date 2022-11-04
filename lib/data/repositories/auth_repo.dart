import 'package:get/get.dart';

import '../model/user.dart';
import '../response/user_response.dart';
import '../services/local/local_employee_list_service.dart';
import '../services/local/local_employee_service.dart';
import '../services/local/local_user_service.dart';
import '../services/remote/api_service.dart';

abstract class AuthRepository {
  Stream<User> login(String username, String password);
  Stream<Employee?> empLogin(String passcode);
  Stream<bool> logout();
  Stream<bool> empLogout();
}

class AuthRepositoryImpl extends AuthRepository {
  static final AuthRepositoryImpl _singleton = AuthRepositoryImpl._internal();
  AuthRepositoryImpl._internal();
  factory AuthRepositoryImpl() => _singleton;

  final APIService remote = Get.find();
  final LocalUserService local = Get.find();
  final LocalEmployeeService emplocal = Get.find();
  final LocalEmployeeListService empListLocal = Get.find();
  @override
  Stream<User> login(String username, String password) async* {
    var requestBody = {
      "username": username,
      "password": password,
    };
    var response = await remote.login(requestBody);
    if (response is UserResponseSuccess) {
      //Save To Local
      var user = response.users.first;
      if (!(user.status ?? false)) {
        throw "account_inactive".tr;
      }
      local.saveUser(user);
      //Get From Local
      yield (await local.getCurrentUser())!;
    } else {
      throw response.message ?? "Error";
    }
  }

  @override
  Stream<bool> logout() async* {
    await local.deleteCurrentUser();
    yield true;
  }

  @override
  Stream<Employee?> empLogin(String passcode) async* {
    var user = await local.getCurrentUser();
    var empList = await empListLocal.getAllEmployeeItem(user?.id ?? "");
    for (var data in empList) {
      if (data.pincode == passcode) {
        var empData = Employee(
            data.name,
            data.email,
            data.phone,
            data.role,
            data.description,
            data.status,
            data.id,
            data.owner?.id,
            data.pincode,
            data.createdAt,
            data.updatedAt,
            data.version);
        emplocal.saveEmployee(empData);
      }
    }

    yield (await emplocal.getCurrentEmployee());
  }

  @override
  Stream<bool> empLogout() async* {
    await emplocal.deleteCurrentEmployee();
    yield true;
  }
}
