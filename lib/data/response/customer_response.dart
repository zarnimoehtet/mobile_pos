// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/customer.dart';

part 'customer_response.freezed.dart';
part 'customer_response.g.dart';

@Freezed(unionKey: 'status')
class CustomerListResponse with _$CustomerListResponse {
  const factory CustomerListResponse.FAIL(
    String status,
    String? message,
    @JsonKey(name: "data") List<Customer> customerList,
  ) = CustomerListResponseFail;
  const factory CustomerListResponse.ERROR(
    String status,
    String? message,
  ) = CustomerListResponseError;
  const factory CustomerListResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") List<Customer> customerList,
  ) = CustomerListResponseSuccess;
  factory CustomerListResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerListResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class CustomerAddResponse with _$CustomerAddResponse {
  const factory CustomerAddResponse.FAIL(
    String status,
    String? message,
  ) = CustomerAddResponseFail;
  const factory CustomerAddResponse.ERROR(
    String status,
    String? message,
  ) = CustomerAddResponseError;
  const factory CustomerAddResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") CustomerItem customer,
  ) = CustomerAddResponseSuccess;
  factory CustomerAddResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class CustomerDeleteResponse with _$CustomerDeleteResponse {
  const factory CustomerDeleteResponse.FAIL(
    String status,
    String? message,
  ) = CustomerDeleteResponseFail;
  const factory CustomerDeleteResponse.ERROR(
    String status,
    String? message,
  ) = CustomerDeleteResponseError;
  const factory CustomerDeleteResponse.SUCCESS(
    String status,
    String? message,
  ) = CustomerDeleteResponseSuccess;
  factory CustomerDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerDeleteResponseFromJson(json);
}
