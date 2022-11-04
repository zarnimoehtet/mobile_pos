import 'package:get/get.dart';
import 'package:mobile_pos/data/services/local/local_employee_service.dart';

import '../model/user.dart';
import '../services/local/local_user_service.dart';
import '../services/remote/api_service.dart';

abstract class ProfileRepository {
  Stream<User?> getLoginedUser();
  Stream<Employee?> getLoginedEmployee();
  Future<User?> updateUser(User owner);
}

class ProfileRepositoryImpl implements ProfileRepository {
  static final ProfileRepositoryImpl _singleton =
      ProfileRepositoryImpl._internal();
  ProfileRepositoryImpl._internal();
  factory ProfileRepositoryImpl() => _singleton;

  final APIService remote = Get.find();
  final LocalUserService local = Get.find();
  final LocalEmployeeService emplocal = Get.find();
  @override
  Stream<User?> getLoginedUser() async* {
    var user = await local.getCurrentUser();
    yield user;
  }

  @override
  Future<User?> updateUser(User owner) {
    throw UnimplementedError();
  }

  @override
  Stream<Employee?> getLoginedEmployee() async* {
    var emp = await emplocal.getCurrentEmployee();
    yield emp;
  }
}
