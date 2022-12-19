// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sku_response.freezed.dart';
part 'sku_response.g.dart';

@Freezed(unionKey: 'status')
class SKUResponse with _$SKUResponse {
  const factory SKUResponse.FAIL(String status, String? message) =
      SKUResponseFail;
  const factory SKUResponse.ERROR(String status, String? message) =
      SKUResponseError;
  const factory SKUResponse.success(String status, String? data) =
      SKUResponseSuccess;
  factory SKUResponse.fromJson(Map<String, dynamic> json) =>
      _$SKUResponseFromJson(json);
}
