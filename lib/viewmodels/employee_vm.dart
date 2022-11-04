import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/employee.dart';
import 'package:mobile_pos/data/repositories/employee_repo.dart';
import 'package:mobile_pos/data/request/employee_add_request.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';
import '../data/model/user.dart';

class EmployeeViewModel {
  static final EmployeeViewModel _singleton = EmployeeViewModel._internal();
  factory EmployeeViewModel() => _singleton;
  EmployeeViewModel._internal() {
    addEmployeeStream = _addEmployeeStateController.stream;
    employeeListStream = _employeeListController.stream;
    fetchEmployeeStream = _fetchEmployeeController.stream;
    editEmployeeStream = _editEmployeeStateController.stream;
    deleteEmployeeStateStream = _deleteEmployeeStateController.stream;
  }

  final EmployeeRepository _employeeRepository = Get.find();

//LISTING
  final StreamController<List<EmployeeItem>> _employeeListController =
      StreamController<List<EmployeeItem>>.broadcast();
  late Stream<List<EmployeeItem>> employeeListStream;

  StreamSubscription? employeeListSubscription;
  void subscribeEmployee() {
    employeeListSubscription?.cancel();
    employeeListSubscription = _employeeRepository
        .subscribeEmployee()
        .handleError(_employeeListController.sink.addError)
        .listen(_employeeListController.sink.add);
  }

  final StreamController<MyState<List<EmployeeItem>>> _fetchEmployeeController =
      StreamController<MyState<List<EmployeeItem>>>.broadcast();
  late Stream<MyState<List<EmployeeItem>>> fetchEmployeeStream;

  Future fetchEmployees(int page, String id) async {
    try {
      _fetchEmployeeController.sink.add(MyState.loading());
      var list = await _employeeRepository.fetchEmployeeList(page, id);
      throwif(list.isEmpty, "no_employee_found".tr);
      _fetchEmployeeController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchEmployeeController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchEmployeeController.sink.add(MyState.failed(e));
    }
  }

  //ADD NEW
  final StreamController<MyState<Employee>> _addEmployeeStateController =
      StreamController<MyState<Employee>>.broadcast();
  late Stream<MyState<Employee>> addEmployeeStream;
  StreamSubscription? _addEmployeeSubscription;

  void addNewEmployee(String ownerId, String name, String desc, String email,
      String phone, String role, String status, String pincode) async {
    _addEmployeeStateController.sink.add(MyState.loading());

    if (name.isEmpty) {
      _addEmployeeStateController.sink
          .add(MyState.failed("enter_Employee_name".tr));
    } else {
      try {
        var addNewEmployee = EmployeeRequest(
            name, email, phone, role, desc, status, ownerId, pincode);
        _addEmployeeSubscription?.cancel();
        _addEmployeeSubscription = _employeeRepository
            .addEmployee(addNewEmployee)
            .handleError(
                (e) => _addEmployeeStateController.sink.add(MyState.failed(e)))
            .listen((trans) =>
                _addEmployeeStateController.sink.add(MyState.success(trans)));
      } on DioError catch (e) {
        _addEmployeeStateController.sink.add(MyState.failed(e.message));
      } catch (e) {
        _addEmployeeStateController.sink.add(MyState.failed(e));
      }
    }
  }

//UPDATE
  final StreamController<MyState<Employee>> _editEmployeeStateController =
      StreamController<MyState<Employee>>.broadcast();
  late Stream<MyState<Employee>> editEmployeeStream;
  StreamSubscription? _editEmployeeSubscription;

  void editEmployee(
      String id,
      String ownerId,
      String name,
      String desc,
      String email,
      String phone,
      String role,
      String status,
      String pincode) async {
    var req = EmployeeRequest(
        name, email, phone, role, desc, status, ownerId, pincode);
    try {
      _editEmployeeStateController.sink.add(MyState.loading());
      await _editEmployeeSubscription?.cancel();
      _editEmployeeSubscription = _employeeRepository
          .updateEmployee(id, req)
          .handleError((error) =>
              _editEmployeeStateController.sink.add(MyState.failed(error)))
          .listen((emp) =>
              _editEmployeeStateController.sink.add(MyState.success(emp)));
    } catch (e) {
      _editEmployeeStateController.sink.add(MyState.failed(e));
    }
  }

//DELETE
  final StreamController<MyState<bool>> _deleteEmployeeStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> deleteEmployeeStateStream;

  void deleteEmployee(String id) {
    _deleteEmployeeStateController.sink.add(MyState.loading());
    _employeeRepository.deleteEmployee(id).then((_) {
      _deleteEmployeeStateController.sink.add(MyState.success(true));
    }).catchError((e) {
      if (e is DioError) {
        _deleteEmployeeStateController.sink.add(MyState.failed(e.message));
      } else {
        _deleteEmployeeStateController.sink.add(MyState.failed(e.toString()));
      }
    });
  }
}
