import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';
import '../data/model/user.dart';
import '../data/repositories/auth_repo.dart';

class AuthViewModel {
  static final AuthViewModel _singleton = AuthViewModel._internal();
  factory AuthViewModel() => _singleton;
  AuthViewModel._internal() {
    loginStream = _loginStateController.stream;
    empLoginStream = _empLoginStateController.stream;
    logoutStream = _logoutStateController.stream;
    emplogoutStream = _emplogoutStateController.stream;
  }

  final AuthRepository _authRepo = Get.find();

  final StreamController<MyState<User>> _loginStateController =
      StreamController<MyState<User>>.broadcast();
  late Stream<MyState<User>> loginStream;
  StreamSubscription? _loginSubscription;

  void login(String username, String password) async {
    await _loginSubscription?.cancel();
    try {
      throwif(username.isEmpty, "enter_username".tr);
      throwif(password.isEmpty, "enter_password".tr);
    } catch (e) {
      _loginStateController.sink.add(MyState.failed(e));
      return;
    }
    _loginStateController.sink.add(MyState.loading());
    _loginSubscription = _authRepo
        .login(username, password)
        .handleError((e) => _loginStateController.sink
            .add(MyState.failed(e is DioError ? e.message : e)))
        .listen(
            (user) => _loginStateController.sink.add(MyState.success(user)));
  }

  final StreamController<MyState<Employee>> _empLoginStateController =
      StreamController<MyState<Employee>>.broadcast();
  late Stream<MyState<Employee>> empLoginStream;
  StreamSubscription? _empLoginSubscription;

  void empLogin(String pincode) async {
    await _empLoginSubscription?.cancel();
    try {
      throwif(pincode.isEmpty, "enter_pincode".tr);
    } catch (e) {
      _empLoginStateController.sink.add(MyState.failed(e));
      return;
    }
    _empLoginStateController.sink.add(MyState.loading());
    _empLoginSubscription = _authRepo
        .empLogin(pincode)
        .handleError((e) => _empLoginStateController.sink
            .add(MyState.failed(e is DioError ? e.message : e)))
        .listen((emp) => (emp == null)
            ? _empLoginStateController.sink
                .add(MyState.failed("pincode_wrong".tr))
            : _empLoginStateController.sink.add(MyState.success(emp)));
  }

  final StreamController<MyState<bool>> _logoutStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> logoutStream;
  StreamSubscription? _logoutSubscription;

  void logout() async {
    await _logoutSubscription?.cancel();
    _logoutStateController.sink.add(MyState.loading());
    _logoutSubscription = _authRepo
        .logout()
        .handleError((e) => _logoutStateController.sink.add(MyState.failed(e)))
        .listen((b) => _logoutStateController.sink.add(MyState.success(b)));
  }

  final StreamController<MyState<bool>> _emplogoutStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> emplogoutStream;
  StreamSubscription? _emplogoutSubscription;

  void empLogout() async {
    await _emplogoutSubscription?.cancel();
    _emplogoutStateController.sink.add(MyState.loading());
    _emplogoutSubscription = _authRepo
        .empLogout()
        .handleError(
            (e) => _emplogoutStateController.sink.add(MyState.failed(e)))
        .listen((b) => _emplogoutStateController.sink.add(MyState.success(b)));
  }
}
