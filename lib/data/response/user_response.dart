// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/user.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@Freezed(unionKey: "status")
class UserResponse with _$UserResponse {
  const factory UserResponse.fail(
    String status,
    String? message,
  ) = UserResponseFail;

  const factory UserResponse.error(
    String status,
    String? message,
  ) = UserResponseError;

  const factory UserResponse.success(
    String status,
    String? message,
    @JsonKey(name: "data") List<User> users,
  ) = UserResponseSuccess;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
