// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/unit.dart';

part 'unit_response.freezed.dart';
part 'unit_response.g.dart';

@Freezed(unionKey: "status")
class UnitListResponse with _$UnitListResponse {
  const factory UnitListResponse.FAIL(
    String status,
    String? message,
    @JsonKey(name: "data") List<Unit> unitList,
  ) = UnitListResponseFail;
  const factory UnitListResponse.ERROR(String status, String? message) =
      UnitListResponseError;
  const factory UnitListResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") List<Unit> unitList,
  ) = UnitListResponseSuccess;
  factory UnitListResponse.fromJson(Map<String, dynamic> json) =>
      _$UnitListResponseFromJson(json);
}

@Freezed(unionKey: "status")
class UnitAddResponse with _$UnitAddResponse {
  const factory UnitAddResponse.FAIL(
    String status,
    String? message,
  ) = UnitAddResponseFail;
  const factory UnitAddResponse.ERROR(
    String status,
    String? message,
  ) = UnitAddResponseError;
  const factory UnitAddResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") UnitItem unit,
  ) = UnitAddResponseSuccess;
  factory UnitAddResponse.fromJson(Map<String, dynamic> json) =>
      _$UnitAddResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class UnitDeleteResponse with _$UnitDeleteResponse {
  const factory UnitDeleteResponse.FAIL(
    String status,
    String? message,
  ) = UnitDeleteResponseFail;
  const factory UnitDeleteResponse.ERROR(
    String status,
    String? message,
  ) = UnitDeleteResponseError;
  const factory UnitDeleteResponse.SUCCESS(
    String status,
    String? message,
  ) = UnitDeleteResponseSuccess;
  factory UnitDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$UnitDeleteResponseFromJson(json);
}
