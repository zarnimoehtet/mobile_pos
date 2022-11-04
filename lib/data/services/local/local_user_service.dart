import 'package:hive/hive.dart';

import '../../model/user.dart';

abstract class LocalUserService {
  Future saveUser(User user);

  Future<User?> getCurrentUser();
  Future deleteCurrentUser();
}

class LocalUserServiceImpl implements LocalUserService {
  static final LocalUserServiceImpl _singleton =
      LocalUserServiceImpl._internal();
  LocalUserServiceImpl._internal();
  factory LocalUserServiceImpl() => _singleton;

  var box = Hive.box<User>("user");

  @override
  Future<User?> getCurrentUser() async {
    var user = box.get("login-user");
    return user;
  }

  @override
  Future saveUser(User user) async {
    await box.put("login-user", user);
  }

  @override
  Future deleteCurrentUser() async {
    await box.clear();
  }
}
