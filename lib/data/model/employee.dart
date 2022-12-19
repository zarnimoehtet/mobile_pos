// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'category.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class EmployeeItem with _$EmployeeItem {
  @HiveType(typeId: 6)
  const factory EmployeeItem(
    @JsonKey(name: "name") @HiveField(0) String? name,
    @JsonKey(name: "email") @HiveField(1) String? email,
    @JsonKey(name: "phone") @HiveField(2) String? phone,
    @JsonKey(name: "role") @HiveField(3) String? role,
    @JsonKey(name: "description") @HiveField(4) String? description,
    @JsonKey(name: "status") @HiveField(5) bool? status,
    @JsonKey(name: "_id") @HiveField(6) String? id,
    @JsonKey(name: "ownerid") @HiveField(7) Owner? owner,
    @JsonKey(name: "pincode") @HiveField(8) String? pincode,
    @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
    @JsonKey(name: "father_name") @HiveField(11) String? fatherName,
    @JsonKey(name: "nrc") @HiveField(12) String? nrc,
    @JsonKey(name: "salary") @HiveField(13) String? salary,
    @JsonKey(name: "daily_percent") @HiveField(14) int? dailyPercent,
    @JsonKey(name: "dob") @HiveField(15) String? dob,
    @JsonKey(name: "__v") @HiveField(16) int? version,
  ) = _EmployeeItem;
  factory EmployeeItem.fromJson(Map<String, dynamic> json) =>
      _$EmployeeItemFromJson(json);
}
