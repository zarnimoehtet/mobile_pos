// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_add_request.freezed.dart';
part 'expense_add_request.g.dart';

@freezed
class ExpenseTitleRequest with _$ExpenseTitleRequest {
  const factory ExpenseTitleRequest(
    @JsonKey(name: "ownerid") String? ownerId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "status") String? status,
  ) = _ExpenseTitleRequest;
  factory ExpenseTitleRequest.fromJson(Map<String, dynamic> json) =>
      _$ExpenseTitleRequestFromJson(json);
}

@freezed
class ExpenseRequest with _$ExpenseRequest {
  const factory ExpenseRequest(
    @JsonKey(name: "ownerid") String? ownerId,
    @JsonKey(name: "titleid") String? titleId,
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "description") String? desc,
    @JsonKey(name: "status") String? status,
  ) = _ExpenseRequest;
  factory ExpenseRequest.fromJson(Map<String, dynamic> json) =>
      _$ExpenseRequestFromJson(json);
}
