// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/item.dart';

part 'item_add_request.freezed.dart';
part 'item_add_request.g.dart';

@freezed
class ItemAddRequest with _$ItemAddRequest {
  const factory ItemAddRequest(
    @JsonKey(name: "presentation") PresentationRequest? presentation,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "cost") String? cost,
    @JsonKey(name: "stock") String? stock,
    @JsonKey(name: "description") String? desc,
    @JsonKey(name: "is_discount") String? isDiscount,
    @JsonKey(name: "discount_type") String? discountType,
    @JsonKey(name: "discount") String? discount,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "ownerid") String? ownerid,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "categoryid") String? categoryId,
    @JsonKey(name: "sku") String? sku,
    @JsonKey(name: "barcode") String? barcode,
    @JsonKey(name: "variant") List<Varient>? variant,
    @JsonKey(name: "expired_date") String? expDate,
    @JsonKey(name: "unitid") String? unitId,
    @JsonKey(name: "is_stock") String? isStock,
  ) = _ItemAddRequest;
  factory ItemAddRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemAddRequestFromJson(json);
}

@freezed
class PresentationRequest with _$PresentationRequest {
  const factory PresentationRequest(
    @JsonKey(name: "present_type") String? presentType,
    @JsonKey(name: "present_image") List<String>? images,
    @JsonKey(name: "present_color") List<String>? color,
  ) = _PresentationRequest;
  factory PresentationRequest.fromJson(Map<String, dynamic> json) =>
      _$PresentationRequestFromJson(json);
}
