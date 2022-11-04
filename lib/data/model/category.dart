// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  @HiveType(typeId: 3)
  const factory Category(
    @JsonKey(name: "color") @HiveField(0) String? color,
    @JsonKey(name: "description") @HiveField(1) String? description,
    @JsonKey(name: "status") @HiveField(2) bool? status,
    @JsonKey(name: "_id") @HiveField(3) String? id,
    @JsonKey(name: "ownerid") @HiveField(4) Owner? owner,
    @JsonKey(name: "name") @HiveField(5) String? name,
    @JsonKey(name: "created_at") @HiveField(6) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(7) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(8) int? version,
  ) = _Category;
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Owner with _$Owner {
  @HiveType(typeId: 4)
  const factory Owner(
    @JsonKey(name: "_id") @HiveField(0) String? id,
    @JsonKey(name: "username") @HiveField(1) String? username,
  ) = _Owner;
  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@freezed
class CategoryItem with _$CategoryItem {
  @HiveType(typeId: 5)
  const factory CategoryItem(
    @JsonKey(name: "color") @HiveField(0) String? color,
    @JsonKey(name: "description") @HiveField(1) String? description,
    @JsonKey(name: "status") @HiveField(2) bool? status,
    @JsonKey(name: "_id") @HiveField(3) String? id,
    @JsonKey(name: "ownerid") @HiveField(4) String? owner,
    @JsonKey(name: "name") @HiveField(5) String? name,
    @JsonKey(name: "created_at") @HiveField(6) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(7) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(8) int? version,
  ) = _CategoryItem;
  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);
}
