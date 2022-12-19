// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_request.freezed.dart';
part 'sale_request.g.dart';

@freezed
class SalesRequest with _$SalesRequest {
  const factory SalesRequest(
    @JsonKey(name: "ownerid") String? ownerId,
    @JsonKey(name: "employeeid") String? empId,
    @JsonKey(name: "customerid") String? customerId,
    @JsonKey(name: "reduce_price") int? reducePrice,
    @JsonKey(name: "has_credit") String? hasCredit,
    @JsonKey(name: "credit_amount") int? creditAmount,
    @JsonKey(name: "total_amount") int? totalAmount,
    @JsonKey(name: "payment_type") String? paymentType,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "items") List<SaleReqItem> saleItems,
  ) = _SalesRequest;
  factory SalesRequest.fromJson(Map<String, dynamic> json) =>
      _$SalesRequestFromJson(json);
}

@freezed
class SaleReqItem with _$SaleReqItem {
  const factory SaleReqItem(
    @JsonKey(name: "productid") String? productId,
    @JsonKey(name: "is_stock") String? isStock,
    @JsonKey(name: "is_discount") String? isDiscount,
    @JsonKey(name: "quantity") int? qty,
    @JsonKey(name: "discount_type") String? discountType,
    @JsonKey(name: "discount") int? discount,
    @JsonKey(name: "discount_price") int? discountPrice,
    @JsonKey(name: "sale_price") int? salePrice,
    @JsonKey(name: "origin_price") int? originPrice,
  ) = _SaleReqItem;
  factory SaleReqItem.fromJson(Map<String, dynamic> json) =>
      _$SaleReqItemFromJson(json);
}
