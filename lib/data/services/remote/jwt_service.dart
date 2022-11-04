import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'jwt_service.g.dart';

@retrofit.RestApi()
abstract class JWTService {
  factory JWTService(Dio dio) = _JWTService;

  @retrofit.POST("/d-mar/u-bar")
  Future<Map<String, String>> generateToken(@retrofit.Body() String body);
}
