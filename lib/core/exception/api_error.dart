import 'package:dio/dio.dart';

class NoInternetError extends DioError {
  NoInternetError({required super.requestOptions});

  @override
  String get message => "No internet connection";

  @override
  String toString() => "No internet connection";
}

class InternalServerError extends DioError {
  InternalServerError({required super.requestOptions});

  @override
  String get message => "Internal Server error";

  @override
  String toString() => "Internal Server error";
}
