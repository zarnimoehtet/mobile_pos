import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/constants/config.dart';
import '../../../../core/exception/api_error.dart';
import '../jwt_service.dart';

int _latestTokenTime = 0;
String? _lastToken;

void _setLastToken(String token) {
  _lastToken = token;
  _latestTokenTime = DateTime.now().millisecondsSinceEpoch;
}

class JwtIntercetor extends Interceptor {
  final JWTService tokenService;
  JwtIntercetor(this.tokenService);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    int currentTime = DateTime.now().millisecondsSinceEpoch;

    if (_lastToken == null ||
        currentTime - _latestTokenTime >= (1000 * 60 * 10)) {
      // Token refresh every 10 minutes
      try {
        Map<String, String> body = {
          "username": Config.userName,
          "password": Config.password,
        };
        var data = await tokenService.generateToken(json.encode(body));
        if (data.containsKey("token") && data["token"] != null) {
          String token = data["token"]!;

          _setLastToken(token);
        }
      } catch (e) {
        // Press Token generator when no internet
      }
    }
    if (_lastToken != null) {
      options.headers.addAll({
        "Authorization": "Bearer $_lastToken",
      });
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.isNoInternet) {
      throw NoInternetError(requestOptions: err.requestOptions);
    } else if (err.isConnectionTimeOut) {
      throw "Time of connect to server is too long.";
    } else if (err.isHttpStatusError) {
      throw "Http status error";
    } else if (err.isConnectionClose) {
      throw "Server connection is stopped. Please try again.";
    } else {
      throw err.message;
    }
  }
}

extension DioExtension on DioError {
  bool get isConnectionTimeOut => type == DioErrorType.connectTimeout;

  bool get isConnectionClose =>
      type == DioErrorType.other &&
      message.startsWith(
          "HttpException: Connection closed before full header was received");

  bool get isHttpStatusError => type == DioErrorType.response;

  bool get isNoInternet =>
      type == DioErrorType.other &&
          message.startsWith("SocketException: Connection failed") ||
      message.startsWith("SocketException: Failed host lookup");
}
