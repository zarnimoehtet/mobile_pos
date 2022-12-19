// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_add_resquest.freezed.dart';
part 'unit_add_resquest.g.dart';

@freezed
class UnitAddRequest with _$UnitAddRequest {
  const factory UnitAddRequest(
    @JsonKey(name: "ownerid") String? ownerId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "status") String? status,
  ) = _UnitAddRequest;
  factory UnitAddRequest.fromJson(Map<String, dynamic> json) =>
      _$UnitAddRequestFromJson(json);
}
