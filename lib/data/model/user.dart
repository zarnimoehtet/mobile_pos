// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @HiveType(typeId: 0)
  const factory User(
    @JsonKey(name: "theme") @HiveField(0) String? theme,
    @JsonKey(name: "employees") @HiveField(1) List<Employee>? employees,
    @JsonKey(name: "status") @HiveField(2) bool? status,
    @JsonKey(name: "_id") @HiveField(3) String? id,
    @JsonKey(name: "logo") @HiveField(4) String? logo,
    @JsonKey(name: "username") @HiveField(5) String? userName,
    @JsonKey(name: "password") @HiveField(6) String? password,
    @JsonKey(name: "mobile_password") @HiveField(7) String? mobilePassword,
    @JsonKey(name: "role") @HiveField(8) String? role,
    @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(11) int? version,
    @JsonKey(name: "shop") @HiveField(12) Shop? shop,
    @JsonKey(name: "address") @HiveField(13) String? address,
    @JsonKey(name: "cityid") @HiveField(14) String? cityId,
    @JsonKey(name: "email") @HiveField(15) String? email,
    @JsonKey(name: "ownertype") @HiveField(16) String? ownerType,
    @JsonKey(name: "phone") @HiveField(17) String? phone,
  ) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Employee with _$Employee {
  @HiveType(typeId: 1)
  const factory Employee(
    @JsonKey(name: "name") @HiveField(0) String? name,
    @JsonKey(name: "email") @HiveField(1) String? email,
    @JsonKey(name: "phone") @HiveField(2) String? phone,
    @JsonKey(name: "role") @HiveField(3) String? role,
    @JsonKey(name: "description") @HiveField(4) String? description,
    @JsonKey(name: "status") @HiveField(5) bool? status,
    @JsonKey(name: "_id") @HiveField(6) String? id,
    @JsonKey(name: "ownerid") @HiveField(7) String? ownerId,
    @JsonKey(name: "pincode") @HiveField(8) String? pincode,
    @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(11) int? version,
  ) = _Employee;
  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}

@freezed
class Shop with _$Shop {
  @HiveType(typeId: 2)
  const factory Shop(
    @JsonKey(name: "name") @HiveField(0) String? name,
    @JsonKey(name: "address") @HiveField(1) String? address,
    @JsonKey(name: "description") @HiveField(2) String? description,
    @JsonKey(name: "status") @HiveField(3) bool? status,
    @JsonKey(name: "_id") @HiveField(4) String? id,
    @JsonKey(name: "ownerid") @HiveField(5) String? ownerId,
    @JsonKey(name: "phone") @HiveField(6) String? phone,
    @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(9) int? version,
  ) = _Shop;
  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}
