import 'package:get/get.dart';
import 'package:mobile_pos/data/model/employee.dart';
import 'package:mobile_pos/data/request/employee_add_request.dart';
import 'package:mobile_pos/data/response/employee_response.dart';
import 'package:mobile_pos/data/services/local/local_employee_list_service.dart';

import '../model/user.dart';
import '../services/remote/api_service.dart';

abstract class EmployeeRepository {
  Stream<Employee> addEmployee(EmployeeRequest request);

  Stream<List<EmployeeItem>> subscribeEmployee();
  Future<List<EmployeeItem>> fetchEmployeeList(int page, String ownerId);
  Stream<Employee> updateEmployee(String empid, EmployeeRequest request);
  Future deleteEmployee(String id);
}

class EmployeeRepositoryImpl implements EmployeeRepository {
  static final EmployeeRepositoryImpl _singleton =
      EmployeeRepositoryImpl._internal();
  EmployeeRepositoryImpl._internal();
  factory EmployeeRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalEmployeeListService local = Get.find();
  @override
  Stream<Employee> addEmployee(EmployeeRequest request) async* {
    var response = await remote.addEmployee(request);
    if (response is EmployeeAddResponseSuccess) {
      yield response.employee;
    }
    if (response is EmployeeAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is EmployeeAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future<List<EmployeeItem>> fetchEmployeeList(int page, String ownerId) async {
    var response = await remote.loadEmplyeeList(ownerid: ownerId);
    if (response is EmployeeListResponseSuccess) {
      if (page == 0) {
        await local.clearEmployeeItem();
      }
      await local.saveEmployeeItem(response.empList);
      return local.getAllEmployeeItem(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<EmployeeItem>> subscribeEmployee() {
    return local.subscribeEmployeeItem();
  }

  @override
  Stream<Employee> updateEmployee(
      String empId, EmployeeRequest request) async* {
    var response = await remote.updateEmployee(empId, request);
    if (response is EmployeeAddResponseSuccess) {
      yield response.employee;
    }
    if (response is EmployeeAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is EmployeeAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future deleteEmployee(String id) async {
    var response = await remote.deleteEmployee(id);
    if (response is EmployeeDeleteResponseSuccess) {
      await local.deleteEmployeeItem(id);
    } else {
      throw response.message ?? "Something is wrong";
    }
  }
}
