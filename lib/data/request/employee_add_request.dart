// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_add_request.freezed.dart';
part 'employee_add_request.g.dart';

@freezed
class EmployeeRequest with _$EmployeeRequest {
  const factory EmployeeRequest(
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "ownerid") String? ownerId,
    @JsonKey(name: "pincode") String? pincode,
    @JsonKey(name: "nrc") String? nrc,
    @JsonKey(name: "father_name") String? fatherName,
    @JsonKey(name: "dob") String? dob,
    @JsonKey(name: "daily_percent") int? dailyPercentage,
    @JsonKey(name: "salary") int? salary,
  ) = _EmployeeRequest;
  factory EmployeeRequest.fromJson(Map<String, dynamic> json) =>
      _$EmployeeRequestFromJson(json);
}
