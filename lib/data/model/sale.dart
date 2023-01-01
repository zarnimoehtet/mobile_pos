// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/model/customer.dart';
import 'package:mobile_pos/data/model/item.dart';
import 'package:mobile_pos/data/model/user.dart';

part 'sale.freezed.dart';
part 'sale.g.dart';

@freezed
class Sale with _$Sale {
  @HiveType(typeId: 22)
  const factory Sale(
    @JsonKey(name: "total_amount") @HiveField(0) int? totalAmount,
    @JsonKey(name: "reduce_price") @HiveField(1) int? reducePrice,
    @JsonKey(name: "description") @HiveField(2) String? desc,
    @JsonKey(name: "payment_type") @HiveField(3) String? paymentType,
    @JsonKey(name: "has_credit") @HiveField(4) String? hasCredit,
    @JsonKey(name: "credit_amount") @HiveField(5) int? creditAmount,
    @JsonKey(name: "status") @HiveField(6) String? status,
    @JsonKey(name: "_id") @HiveField(7) String? id,
    @JsonKey(name: "ownerid") @HiveField(8) Owner? owner,
    @JsonKey(name: "employeeid") @HiveField(9) Employee? emp,
    @JsonKey(name: "customerid") @HiveField(10) CustomerItem? customer,
    @JsonKey(name: "items") @HiveField(11) List<SaleItem> itemList,
    @JsonKey(name: "code") @HiveField(12) String? code,
    @JsonKey(name: "created_at") @HiveField(13) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(14) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(15) int? version,
  ) = _Sale;
  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);
}

@freezed
class SaleItem with _$SaleItem {
  @HiveType(typeId: 23)
  const factory SaleItem(
    @JsonKey(name: "quantity") @HiveField(0) int? qty,
    @JsonKey(name: "discount_type") @HiveField(1) String? discountType,
    @JsonKey(name: "discount") @HiveField(2) int? discount,
    @JsonKey(name: "discount_price") @HiveField(3) int? discountPrice,
    @JsonKey(name: "sale_price") @HiveField(4) int? salePrice,
    @JsonKey(name: "origin_price") @HiveField(5) int? originPrice,
    @JsonKey(name: "_id") @HiveField(6) String? id,
    @JsonKey(name: "productid") @HiveField(7) ItemRes? item,
  ) = _SaleItem;
  factory SaleItem.fromJson(Map<String, dynamic> json) =>
      _$SaleItemFromJson(json);
}

@freezed
class Invoice with _$Invoice {
  @HiveType(typeId: 24)
  const factory Invoice(
    @JsonKey(name: "total_amount") @HiveField(0) int? totalAmount,
    @JsonKey(name: "reduce_price") @HiveField(1) int? reducePrice,
    @JsonKey(name: "description") @HiveField(2) String? desc,
    @JsonKey(name: "payment_type") @HiveField(3) String? paymentType,
    @JsonKey(name: "has_credit") @HiveField(4) String? hasCredit,
    @JsonKey(name: "credit_amount") @HiveField(5) int? creditAmount,
    @JsonKey(name: "status") @HiveField(6) String? status,
    @JsonKey(name: "_id") @HiveField(7) String? id,
    @JsonKey(name: "ownerid") @HiveField(8) Owner? owner,
    @JsonKey(name: "employeeid") @HiveField(9) String? emp,
    @JsonKey(name: "customerid") @HiveField(10) String? customer,
    @JsonKey(name: "items") @HiveField(11) List<SaleInvoiceItem> itemList,
    @JsonKey(name: "code") @HiveField(12) String? code,
    @JsonKey(name: "created_at") @HiveField(13) String? createdAt,
    @JsonKey(name: "updated_at") @HiveField(14) String? updatedAt,
    @JsonKey(name: "__v") @HiveField(15) int? version,
  ) = _Invoice;
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}

@freezed
class SaleInvoiceItem with _$SaleInvoiceItem {
  @HiveType(typeId: 25)
  const factory SaleInvoiceItem(
    @JsonKey(name: "quantity") @HiveField(0) int? qty,
    @JsonKey(name: "discount_type") @HiveField(1) String? discountType,
    @JsonKey(name: "discount") @HiveField(2) int? discount,
    @JsonKey(name: "discount_price") @HiveField(3) int? discountPrice,
    @JsonKey(name: "sale_price") @HiveField(4) int? salePrice,
    @JsonKey(name: "origin_price") @HiveField(5) int? originPrice,
    @JsonKey(name: "_id") @HiveField(6) String? id,
    @JsonKey(name: "productid") @HiveField(7) String? itemId,
  ) = _SaleInvoiceItem;
  factory SaleInvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$SaleInvoiceItemFromJson(json);
}
