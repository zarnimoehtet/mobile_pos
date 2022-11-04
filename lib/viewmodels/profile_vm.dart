import 'dart:async';

import 'package:get/get.dart';

import '../data/model/user.dart';
import '../data/repositories/profile_repo.dart';

class ProfileViewModel {
  static final ProfileViewModel _singleton = ProfileViewModel._internal();
  factory ProfileViewModel() => _singleton;
  ProfileViewModel._internal() {
    userStream = _userController.stream;
    userStream.handleError((e) {}).listen((user) => _currentUser = user);

    empStream = _empController.stream;
    empStream.handleError((e) {}).listen((emp) => _currentEMP = emp);
  }

  final ProfileRepository _profileRepo = Get.find();

  final StreamController<User?> _userController =
      StreamController<User?>.broadcast();
  late Stream<User?> userStream;
  StreamSubscription<User?>? _userSubcription;

  User? get currentUser => _currentUser;
  User? _currentUser;

  void getCurrentUser() async {
    await _userSubcription?.cancel();
    _userSubcription = _profileRepo
        .getLoginedUser()
        .handleError(_userController.sink.addError)
        .listen(_userController.sink.add);
  }

  final StreamController<Employee?> _empController =
      StreamController<Employee?>.broadcast();
  late Stream<Employee?> empStream;
  StreamSubscription<Employee?>? _empSubcription;

  Employee? get currentEMP => _currentEMP;
  Employee? _currentEMP;

  void getCurrentEmp() async {
    await _empSubcription?.cancel();
    _empSubcription = _profileRepo
        .getLoginedEmployee()
        .handleError(_empController.sink.addError)
        .listen(_empController.sink.add);
  }
}
