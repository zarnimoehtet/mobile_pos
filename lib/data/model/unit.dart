// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/category.dart';

part 'unit.freezed.dart';
part 'unit.g.dart';

@freezed
class Unit with _$Unit {
  @HiveType(typeId: 10)
  const factory Unit(
    @JsonKey(name: "status") @HiveField(0) bool? status,
    @JsonKey(name: "_id") @HiveField(1) String? id,
    @JsonKey(name: "ownerid") @HiveField(2) Owner? owner,
    @JsonKey(name: "name") @HiveField(3) String? name,
    @JsonKey(name: "description") @HiveField(4) String? desc,
    @JsonKey(name: "created_at") @HiveField(5) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(6) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(7) int? version,
  ) = _Unit;
  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}

@freezed
class UnitItem with _$UnitItem {
  @HiveType(typeId: 11)
  const factory UnitItem(
    @JsonKey(name: "status") @HiveField(0) bool? status,
    @JsonKey(name: "_id") @HiveField(1) String? id,
    @JsonKey(name: "ownerid") @HiveField(2) String? ownerid,
    @JsonKey(name: "name") @HiveField(3) String? name,
    @JsonKey(name: "description") @HiveField(4) String? desc,
    @JsonKey(name: "created_at") @HiveField(5) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(6) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(7) int? version,
  ) = _UnitItem;
  factory UnitItem.fromJson(Map<String, dynamic> json) =>
      _$UnitItemFromJson(json);
}
