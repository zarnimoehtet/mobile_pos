// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/category.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

@freezed
class Expense with _$Expense {
  @HiveType(typeId: 19)
  const factory Expense(
    @JsonKey(name: "status") @HiveField(0) bool? status,
    @JsonKey(name: "_id") @HiveField(1) String? id,
    @JsonKey(name: "ownerid") @HiveField(2) Owner? owner,
    @JsonKey(name: "titleid") @HiveField(3) ExpenseTitle? title,
    @JsonKey(name: "amount") @HiveField(4) int? amount,
    @JsonKey(name: "description") @HiveField(6) String? desc,
    @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(9) int? version,
  ) = _Expense;
  factory Expense.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFromJson(json);
}

@freezed
class ExpenseItem with _$ExpenseItem {
  @HiveType(typeId: 20)
  const factory ExpenseItem(
    @JsonKey(name: "status") @HiveField(0) bool? status,
    @JsonKey(name: "_id") @HiveField(1) String? id,
    @JsonKey(name: "ownerid") @HiveField(2) String? ownerId,
    @JsonKey(name: "titleid") @HiveField(3) String? titleId,
    @JsonKey(name: "amount") @HiveField(4) int? amount,
    @JsonKey(name: "description") @HiveField(6) String? desc,
    @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(9) int? version,
  ) = _ExpenseItem;
  factory ExpenseItem.fromJson(Map<String, dynamic> json) =>
      _$ExpenseItemFromJson(json);
}

@freezed
class ExpenseTitle with _$ExpenseTitle {
  @HiveType(typeId: 17)
  const factory ExpenseTitle(
    @JsonKey(name: "status") @HiveField(0) bool? status,
    @JsonKey(name: "_id") @HiveField(1) String? id,
    @JsonKey(name: "ownerid") @HiveField(2) Owner? ownerId,
    @JsonKey(name: "name") @HiveField(3) String? name,
    @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(9) int? version,
  ) = _ExpenseTitle;
  factory ExpenseTitle.fromJson(Map<String, dynamic> json) =>
      _$ExpenseTitleFromJson(json);
}

@freezed
class ExpenseTitleItem with _$ExpenseTitleItem {
  @HiveType(typeId: 18)
  const factory ExpenseTitleItem(
    @JsonKey(name: "status") @HiveField(0) bool? status,
    @JsonKey(name: "_id") @HiveField(1) String? id,
    @JsonKey(name: "ownerid") @HiveField(2) String? ownerId,
    @JsonKey(name: "name") @HiveField(3) String? name,
    @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(9) int? version,
  ) = _ExpenseTitleItem;
  factory ExpenseTitleItem.fromJson(Map<String, dynamic> json) =>
      _$ExpenseTitleItemFromJson(json);
}
