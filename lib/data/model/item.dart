// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/model/unit.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  @HiveType(typeId: 7)
  const factory Item(
    @JsonKey(name: "presentation") @HiveField(0) Presentation? presentation,
    @JsonKey(name: "price") @HiveField(1) int? price,
    @JsonKey(name: "cost") @HiveField(2) int? cost,
    @JsonKey(name: "stock") @HiveField(3) int? stock,
    @JsonKey(name: "description") @HiveField(4) String? desc,
    @JsonKey(name: "is_discount") @HiveField(5) String? isDiscount,
    @JsonKey(name: "discount_type") @HiveField(6) String? discountType,
    @JsonKey(name: "discount") @HiveField(7) int? discount,
    @JsonKey(name: "status") @HiveField(8) bool? status,
    @JsonKey(name: "_id") @HiveField(9) String? id,
    @JsonKey(name: "ownerid") @HiveField(10) Owner? owner,
    @JsonKey(name: "name") @HiveField(11) String? name,
    @JsonKey(name: "categoryid") @HiveField(12) CategoryItem? category,
    @JsonKey(name: "sku") @HiveField(13) String? sku,
    @JsonKey(name: "barcode") @HiveField(14) String? barcode,
    @JsonKey(name: "variant") @HiveField(15) List<Varient>? variant,
    @JsonKey(name: "created_at") @HiveField(16) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(17) String? updatedAt,
    @JsonKey(name: "expired_date") @HiveField(18) String? expDate,
    @JsonKey(name: "unitid") @HiveField(19) UnitItem? unit,
    @JsonKey(name: "__v") @HiveField(20) int? version,
    @JsonKey(name: "is_stock") @HiveField(21) String? isStock,
    @HiveField(22) int? count,
  ) = _Item;
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Presentation with _$Presentation {
  @HiveType(typeId: 8)
  const factory Presentation(
    @JsonKey(name: "present_type") @HiveField(0) String? presentType,
    @JsonKey(name: "present_image") @HiveField(1) List<String>? images,
    @JsonKey(name: "present_color") @HiveField(2) List<String>? color,
  ) = _Presentation;
  factory Presentation.fromJson(Map<String, dynamic> json) =>
      _$PresentationFromJson(json);
}

@freezed
class ItemRes with _$ItemRes {
  @HiveType(typeId: 9)
  const factory ItemRes(
    @JsonKey(name: "presentation") @HiveField(0) Presentation? presentation,
    @JsonKey(name: "price") @HiveField(1) int? price,
    @JsonKey(name: "cost") @HiveField(2) int? cost,
    @JsonKey(name: "stock") @HiveField(3) int? stock,
    @JsonKey(name: "description") @HiveField(4) String? desc,
    @JsonKey(name: "is_discount") @HiveField(5) String? isDiscount,
    @JsonKey(name: "discount_type") @HiveField(6) String? discountType,
    @JsonKey(name: "discount") @HiveField(7) int? discount,
    @JsonKey(name: "status") @HiveField(8) bool? status,
    @JsonKey(name: "_id") @HiveField(9) String? id,
    @JsonKey(name: "ownerid") @HiveField(10) String? ownerid,
    @JsonKey(name: "name") @HiveField(11) String? name,
    @JsonKey(name: "categoryid") @HiveField(12) String? categoryId,
    @JsonKey(name: "sku") @HiveField(13) String? sku,
    @JsonKey(name: "barcode") @HiveField(14) String? barcode,
    @JsonKey(name: "variant") @HiveField(15) List<Varient>? variant,
    @JsonKey(name: "created_at") @HiveField(16) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(17) String? updatedAt,
    @JsonKey(name: "expired_date") @HiveField(18) String? expDate,
    @JsonKey(name: "unitid") @HiveField(19) String? unitId,
    @JsonKey(name: "__v") @HiveField(20) int? version,
    @JsonKey(name: "is_stock") @HiveField(21) String? isStock,
  ) = _ItemRes;
  factory ItemRes.fromJson(Map<String, dynamic> json) =>
      _$ItemResFromJson(json);
}

@freezed
class Varient with _$Varient {
  @HiveType(typeId: 12)
  const factory Varient(
    @JsonKey(name: "option_name") @HiveField(0) String? name,
    @JsonKey(name: "option_value") @HiveField(1) String? value,
    @JsonKey(name: "_id") @HiveField(2) String? id,
  ) = _Varient;
  factory Varient.fromJson(Map<String, dynamic> json) =>
      _$VarientFromJson(json);
}
