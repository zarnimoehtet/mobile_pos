// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/category.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

@Freezed(unionKey: "status")
class CategoryListResponse with _$CategoryListResponse {
  const factory CategoryListResponse.FAIL(
    String status,
    String? message,
    @JsonKey(name: "data") List<Category> categoryList,
  ) = CategoryListResponseFail;
  const factory CategoryListResponse.ERROR(
    String status,
    String? message,
  ) = CategoryListResponseError;
  const factory CategoryListResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") List<Category> categoryList,
  ) = CategoryListResponseSuccess;
  factory CategoryListResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryListResponseFromJson(json);
}

@Freezed(unionKey: "status")
class CategoryAddResponse with _$CategoryAddResponse {
  const factory CategoryAddResponse.FAIL(
    String status,
    String? message,
  ) = CategoryAddResponseFail;
  const factory CategoryAddResponse.ERROR(
    String status,
    String? message,
  ) = CategoryAddResponseError;
  const factory CategoryAddResponse.SUCCESS(String status, String? message,
          @JsonKey(name: "data") CategoryItem category) =
      CategoryAddResponseSuccess;
  factory CategoryAddResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryAddResponseFromJson(json);
}

@Freezed(unionKey: "status")
class CategoryUpdateResponse with _$CategoryUpdateResponse {
  const factory CategoryUpdateResponse.FAIL(
    String status,
    String? message,
  ) = CategoryUpdateResponseFail;
  const factory CategoryUpdateResponse.ERROR(
    String status,
    String? message,
  ) = CategoryUpdateResponseError;
  const factory CategoryUpdateResponse.SUCCESS(String status, String? message,
          @JsonKey(name: "data") CategoryItem category) =
      CategoryUpdateResponseSuccess;
  factory CategoryUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpdateResponseFromJson(json);
}

@Freezed(unionKey: "status")
class CategoryDeleteResponse with _$CategoryDeleteResponse {
  const factory CategoryDeleteResponse.FAIL(
    String status,
    String? message,
  ) = CategoryDeleteResponseFail;
  const factory CategoryDeleteResponse.ERROR(
    String status,
    String? message,
  ) = CategoryDeleteResponseError;
  const factory CategoryDeleteResponse.SUCCESS(
    String status,
    String? message,
  ) = CategoryDeleteResponseSuccess;
  factory CategoryDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryDeleteResponseFromJson(json);
}
