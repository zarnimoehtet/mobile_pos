import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/repositories/auth_repo.dart';
import 'package:mobile_pos/data/repositories/category_repo.dart';
import 'package:mobile_pos/data/repositories/employee_repo.dart';
import 'package:mobile_pos/data/repositories/profile_repo.dart';
import 'package:mobile_pos/data/services/local/local_category_service.dart';
import 'package:mobile_pos/data/services/local/local_employee_service.dart';
import 'package:mobile_pos/data/services/local/local_user_service.dart';
import 'package:mobile_pos/viewmodels/auth_vm.dart';
import 'package:mobile_pos/viewmodels/category_vm.dart';
import 'package:mobile_pos/viewmodels/employee_vm.dart';
import 'package:mobile_pos/viewmodels/profile_vm.dart';

import 'core/constants/config.dart';
import 'data/model/user.dart';
import 'data/services/local/local_employee_list_service.dart';
import 'data/services/remote/api_service.dart';
import 'data/services/remote/interceptors/curl_interceptor.dart';
import 'data/services/remote/interceptors/jwt_interceptor.dart';
import 'data/services/remote/jwt_service.dart';

Future initInjection() async {
  await _initOpenBox();
  _injectRemoteService();
  _injectLocalService();
  _injectRepository();
  _injectViewModels();
  _injectNotification();
}

void _injectRemoteService() {
  final options = BaseOptions(
    baseUrl: Config.host,
    connectTimeout: 5000,
    receiveTimeout: 10000,
    contentType: "application/json",
  );
  var dio = Dio(options)
    ..interceptors.addAll([
      JwtIntercetor(JWTService(Dio(options))),
      CURLInterceptor(),
    ]);
  Get.put<APIService>(APIService(dio));
  // Get.put<MediaService>(MediaService(dio));
}

void _injectLocalService() {
  Get.put<LocalUserService>(LocalUserServiceImpl());
  Get.put<LocalEmployeeService>(LocalEmployeeServiceImpl());
  Get.put<LocalCategoryService>(LocalCategoryServiceImpl());
  Get.put<LocalEmployeeListService>(LocalEmployeeListServiceImpl());
}

void _injectRepository() {
  Get.put<AuthRepository>(AuthRepositoryImpl());
  Get.put<ProfileRepository>(ProfileRepositoryImpl());
  Get.put<CategoryRepository>(CategoryRepositoryImpl());
  Get.put<EmployeeRepository>(EmployeeRepositoryImpl());
}

void _injectViewModels() {
  Get.put(AuthViewModel());
  Get.put(ProfileViewModel());
  Get.put(CategoryViewModel());
  Get.put(EmployeeViewModel());
}

void _injectNotification() {
  // Get.put<MessagingHandlerDelegate>(FirebaseMessagingHandler());
  // Get.put<MessagingService>(FirebaseMessageService());
}

Future _initOpenBox() async {
  return Future.wait([
    Hive.openBox<User>("user"),
    Hive.openBox<Employee>("emp"),
    Hive.openBox<Category>("category"),
    Hive.openBox<Category>("employee")
  ]);
}
