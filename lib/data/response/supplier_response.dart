// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/supplier.dart';

part 'supplier_response.freezed.dart';
part 'supplier_response.g.dart';

@Freezed(unionKey: 'status')
class SupplierListResponse with _$SupplierListResponse {
  const factory SupplierListResponse.FAIL(
    String status,
    String? message,
    @JsonKey(name: "data") List<Supplier> supplierList,
  ) = SupplierListResponseFail;
  const factory SupplierListResponse.ERROR(
    String status,
    String? message,
  ) = SupplierListResponseError;
  const factory SupplierListResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") List<Supplier> supplierList,
  ) = SupplierListResponseSuccess;
  factory SupplierListResponse.fromJson(Map<String, dynamic> json) =>
      _$SupplierListResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class SupplierAddResponse with _$SupplierAddResponse {
  const factory SupplierAddResponse.FAIL(
    String status,
    String? message,
  ) = SupplierAddResponseFail;
  const factory SupplierAddResponse.ERROR(
    String status,
    String? message,
  ) = SupplierAddResponseError;
  const factory SupplierAddResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") SupplierItem supplier,
  ) = SupplierAddResponseSuccess;
  factory SupplierAddResponse.fromJson(Map<String, dynamic> json) =>
      _$SupplierAddResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class SupplierDeleteResponse with _$SupplierDeleteResponse {
  const factory SupplierDeleteResponse.FAIL(
    String status,
    String? message,
  ) = SupplierDeleteResponseFail;
  const factory SupplierDeleteResponse.ERROR(
    String status,
    String? message,
  ) = SupplierDeleteResponseError;
  const factory SupplierDeleteResponse.SUCCESS(
    String status,
    String? message,
  ) = SupplierDeleteResponseSuccess;
  factory SupplierDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$SupplierDeleteResponseFromJson(json);
}
