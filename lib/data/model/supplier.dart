// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'category.dart';

part 'supplier.freezed.dart';
part 'supplier.g.dart';

@freezed
class Supplier with _$Supplier {
  @HiveType(typeId: 13)
  const factory Supplier(
    @JsonKey(name: "name") @HiveField(0) String? name,
    @JsonKey(name: "email") @HiveField(1) String? email,
    @JsonKey(name: "phone") @HiveField(2) String? phone,
    @JsonKey(name: "description") @HiveField(3) String? desc,
    @JsonKey(name: "status") @HiveField(4) bool? status,
    @JsonKey(name: "_id") @HiveField(5) String? id,
    @JsonKey(name: "ownerid") @HiveField(6) Owner? owner,
    @JsonKey(name: "address") @HiveField(7) String? address,
    @JsonKey(name: "created_at") @HiveField(8) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(9) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(10) int? version,
  ) = _Supplier;
  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
}

@freezed
class SupplierItem with _$SupplierItem {
  @HiveType(typeId: 14)
  const factory SupplierItem(
    @JsonKey(name: "name") @HiveField(0) String? name,
    @JsonKey(name: "email") @HiveField(1) String? email,
    @JsonKey(name: "phone") @HiveField(2) String? phone,
    @JsonKey(name: "description") @HiveField(3) String? desc,
    @JsonKey(name: "status") @HiveField(4) bool? status,
    @JsonKey(name: "_id") @HiveField(5) String? id,
    @JsonKey(name: "ownerid") @HiveField(6) String? ownerid,
    @JsonKey(name: "address") @HiveField(7) String? address,
    @JsonKey(name: "created_at") @HiveField(8) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(9) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(10) int? version,
  ) = _SupplierItem;
  factory SupplierItem.fromJson(Map<String, dynamic> json) =>
      _$SupplierItemFromJson(json);
}
