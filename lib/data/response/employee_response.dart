// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/employee.dart';
import 'package:mobile_pos/data/model/user.dart';

part 'employee_response.freezed.dart';
part 'employee_response.g.dart';

@Freezed(unionKey: "status")
class EmployeeListResponse with _$EmployeeListResponse {
  const factory EmployeeListResponse.FAIL(String status, String? message) =
      EmployeeListResponseFail;
  const factory EmployeeListResponse.ERROR(String status, String? message) =
      EmployeeListResponseError;
  const factory EmployeeListResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") List<EmployeeItem> empList,
  ) = EmployeeListResponseSuccess;
  factory EmployeeListResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeListResponseFromJson(json);
}

@Freezed(unionKey: "status")
class EmployeeAddResponse with _$EmployeeAddResponse {
  const factory EmployeeAddResponse.FAIL(String status, String? message) =
      EmployeeAddResponseFail;
  const factory EmployeeAddResponse.ERROR(String status, String? message) =
      EmployeeAddResponseError;
  const factory EmployeeAddResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") Employee employee,
  ) = EmployeeAddResponseSuccess;
  factory EmployeeAddResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeAddResponseFromJson(json);
}

@Freezed(unionKey: "status")
class EmployeeDeleteResponse with _$EmployeeDeleteResponse {
  const factory EmployeeDeleteResponse.FAIL(
    String status,
    String? message,
  ) = EmployeeDeleteResponseFail;
  const factory EmployeeDeleteResponse.ERROR(
    String status,
    String? message,
  ) = EmployeeDeleteResponseError;
  const factory EmployeeDeleteResponse.SUCCESS(
    String status,
    String? message,
  ) = EmployeeDeleteResponseSuccess;
  factory EmployeeDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDeleteResponseFromJson(json);
}
