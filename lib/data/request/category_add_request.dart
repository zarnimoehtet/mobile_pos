// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_add_request.freezed.dart';
part 'category_add_request.g.dart';

@freezed
class CategoryAddRequest with _$CategoryAddRequest {
  const factory CategoryAddRequest(
    @JsonKey(name: "ownerid") String? ownerid,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "status") bool? status,
  ) = _CategoryAddRequest;
  factory CategoryAddRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryAddRequestFromJson(json);
}
