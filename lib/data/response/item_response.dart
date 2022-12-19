// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/item.dart';

part 'item_response.freezed.dart';
part 'item_response.g.dart';

@Freezed(unionKey: "status")
class ItemAddResponse with _$ItemAddResponse {
  const factory ItemAddResponse.FAIL(String status, String? message) =
      ItemAddResponseFail;
  const factory ItemAddResponse.ERROR(String status, String? message) =
      ItemAddResponseError;
  const factory ItemAddResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") ItemRes item,
  ) = ItemAddResponseSuccess;
  factory ItemAddResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemAddResponseFromJson(json);
}

@Freezed(unionKey: "status")
class ItemListResponse with _$ItemListResponse {
  const factory ItemListResponse.FAIL(
    String status,
    String? message,
    @JsonKey(name: "data") List<Item> itemList,
  ) = ItemListResponseFail;
  const factory ItemListResponse.ERROR(String status, String? message) =
      ItemListResponseError;
  const factory ItemListResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") List<Item> itemList,
  ) = ItemListResponseSuccess;
  factory ItemListResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemListResponseFromJson(json);
}

@Freezed(unionKey: "status")
class ItemDeleteResponse with _$ItemDeleteResponse {
  const factory ItemDeleteResponse.FAIL(String status, String? message) =
      ItemDeleteResponseFail;
  const factory ItemDeleteResponse.ERROR(String status, String? message) =
      ItemDeleteResponseError;
  const factory ItemDeleteResponse.SUCCESS(
    String status,
    String? message,
  ) = ItemDeleteResponseSuccess;
  factory ItemDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemDeleteResponseFromJson(json);
}
