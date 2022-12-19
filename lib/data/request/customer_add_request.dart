// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_add_request.freezed.dart';
part 'customer_add_request.g.dart';

@freezed
class CustomerRequest with _$CustomerRequest {
  const factory CustomerRequest(
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "description") String? desc,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "ownerid") String? ownerId,
    @JsonKey(name: "address") String? address,
  ) = _CustomerRequest;
  factory CustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestFromJson(json);
}
