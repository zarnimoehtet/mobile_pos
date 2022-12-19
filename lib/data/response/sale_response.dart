// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/sale.dart';

part 'sale_response.freezed.dart';
part 'sale_response.g.dart';

@Freezed(unionKey: 'status')
class SaleResponse with _$SaleResponse {
  const factory SaleResponse.FAIL(
    String status,
    String? message,
  ) = SaleResponseFail;
  const factory SaleResponse.ERROR(
    String status,
    String? message,
  ) = SaleResponseError;
  const factory SaleResponse.SUCCESS(String status, String? message,
      @JsonKey(name: "data") Sale? saleData) = SaleResponseSuccess;
  factory SaleResponse.fromJson(Map<String, dynamic> json) =>
      _$SaleResponseFromJson(json);
}
