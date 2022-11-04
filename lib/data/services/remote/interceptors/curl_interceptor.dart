import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../../../core/helpers/curl_generator.dart';

class CURLInterceptor extends Interceptor {
  var logger = Logger(printer: PrettyPrinter(methodCount: 0));
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i(CURLGenerator.getCURLFromRequest(options));
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.wtf(response.data);
    return super.onResponse(response, handler);
  }
}
