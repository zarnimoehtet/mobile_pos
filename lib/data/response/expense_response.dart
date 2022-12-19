// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_pos/data/model/expense.dart';

part 'expense_response.freezed.dart';
part 'expense_response.g.dart';

@Freezed(unionKey: 'status')
class ExpenseTitleListResponse with _$ExpenseTitleListResponse {
  const factory ExpenseTitleListResponse.FAIL(
    String status,
    String? message,
    @JsonKey(name: "data") List<ExpenseTitle> titleList,
  ) = ExpenseTitleListResponseFail;
  const factory ExpenseTitleListResponse.ERROR(
    String status,
    String? message,
  ) = ExpenseTitleListResponseError;
  const factory ExpenseTitleListResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") List<ExpenseTitle> titleList,
  ) = ExpenseTitleListResponseSuccess;
  factory ExpenseTitleListResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseTitleListResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class ExpenseTitleAddResponse with _$ExpenseTitleAddResponse {
  const factory ExpenseTitleAddResponse.FAIL(
    String status,
    String? message,
  ) = ExpenseTitleAddResponseFail;
  const factory ExpenseTitleAddResponse.ERROR(
    String status,
    String? message,
  ) = ExpenseTitleAddResponseError;
  const factory ExpenseTitleAddResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") ExpenseTitleItem titleItem,
  ) = ExpenseTitleAddResponseSuccess;
  factory ExpenseTitleAddResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseTitleAddResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class ExpenseTitleDeleteResponse with _$ExpenseTitleDeleteResponse {
  const factory ExpenseTitleDeleteResponse.FAIL(
    String status,
    String? message,
  ) = ExpenseTitleDeleteResponseFail;
  const factory ExpenseTitleDeleteResponse.ERROR(
    String status,
    String? message,
  ) = ExpenseTitleDeleteResponseError;
  const factory ExpenseTitleDeleteResponse.SUCCESS(
    String status,
    String? message,
  ) = ExpenseTitleDeleteResponseSuccess;
  factory ExpenseTitleDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseTitleDeleteResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class ExpenseListResponse with _$ExpenseListResponse {
  const factory ExpenseListResponse.FAIL(
    String status,
    String? message,
    @JsonKey(name: "data") List<Expense> expenseList,
  ) = ExpenseListResponseFail;
  const factory ExpenseListResponse.ERROR(
    String status,
    String? message,
  ) = ExpenseListResponseError;
  const factory ExpenseListResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") List<Expense> expenseList,
  ) = ExpenseListResponseSuccess;
  factory ExpenseListResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseListResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class ExpenseAddResponse with _$ExpenseAddResponse {
  const factory ExpenseAddResponse.FAIL(
    String status,
    String? message,
  ) = ExpenseAddResponseFail;
  const factory ExpenseAddResponse.ERROR(
    String status,
    String? message,
  ) = ExpenseAddResponseError;
  const factory ExpenseAddResponse.SUCCESS(
    String status,
    String? message,
    @JsonKey(name: "data") ExpenseItem expenseItem,
  ) = ExpenseAddResponseSuccess;
  factory ExpenseAddResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseAddResponseFromJson(json);
}

@Freezed(unionKey: 'status')
class ExpenseDeleteResponse with _$ExpenseDeleteResponse {
  const factory ExpenseDeleteResponse.FAIL(
    String status,
    String? message,
  ) = ExpenseDeleteResponseFail;
  const factory ExpenseDeleteResponse.ERROR(
    String status,
    String? message,
  ) = ExpenseDeleteResponseError;
  const factory ExpenseDeleteResponse.SUCCESS(
    String status,
    String? message,
  ) = ExpenseDeleteResponseSuccess;
  factory ExpenseDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseDeleteResponseFromJson(json);
}
