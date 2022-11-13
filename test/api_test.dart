import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/config.dart';
import 'package:mobile_pos/data/request/category_add_request.dart';
import 'package:mobile_pos/data/services/remote/api_service.dart';
import 'package:mobile_pos/data/services/remote/interceptors/curl_interceptor.dart';
import 'package:mobile_pos/data/services/remote/interceptors/jwt_interceptor.dart';
import 'package:mobile_pos/data/services/remote/jwt_service.dart';

main() async {
  dotenv.testLoad(fileInput: File('.env').readAsStringSync());
  final options = BaseOptions(
    baseUrl: Config.host,
    connectTimeout: 5000,
    receiveTimeout: 10000,
    contentType: "application/json",
  );
  var dio = Dio(options)
    ..interceptors
        .addAll([JwtIntercetor(JWTService(Dio(options))), CURLInterceptor()]);
  Get.put<APIService>(APIService(dio));
  final APIService apiService = Get.find();

  test("Login Test", () async {
    var requestBody = {
      "username": "zarni",
      "password": "zarni",
    };
    await apiService.login(requestBody);
  });

  test("Category List Test", () async {
    await apiService.loadCategoryList(ownerid: "635abf9647b22b2bda690829");
  });

  test("Category Add Test", () async {
    var requestBody = const CategoryAddRequest(
        "635abf9647b22b2bda690829", "Soap", "#E2E2E2", "Soap", true);
    await apiService.addCategory(requestBody);
  });

  test("Category Delete Test", () async {
    await apiService.deleteCategory("635ca21247b22b2bda690f2a");
  });

  test("Unit List Test", () async {
    await apiService.loadUnitList(ownerid: "635abf9647b22b2bda690829");
  });
}
