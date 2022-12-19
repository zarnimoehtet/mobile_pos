// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expense_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpenseTitleListResponse _$ExpenseTitleListResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ExpenseTitleListResponseFail.fromJson(json);
    case 'ERROR':
      return ExpenseTitleListResponseError.fromJson(json);
    case 'SUCCESS':
      return ExpenseTitleListResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ExpenseTitleListResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ExpenseTitleListResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleListResponseFail value) FAIL,
    required TResult Function(ExpenseTitleListResponseError value) ERROR,
    required TResult Function(ExpenseTitleListResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleListResponseFail value)? FAIL,
    TResult Function(ExpenseTitleListResponseError value)? ERROR,
    TResult Function(ExpenseTitleListResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleListResponseFail value)? FAIL,
    TResult Function(ExpenseTitleListResponseError value)? ERROR,
    TResult Function(ExpenseTitleListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseTitleListResponseCopyWith<ExpenseTitleListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTitleListResponseCopyWith<$Res> {
  factory $ExpenseTitleListResponseCopyWith(ExpenseTitleListResponse value,
          $Res Function(ExpenseTitleListResponse) then) =
      _$ExpenseTitleListResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ExpenseTitleListResponseCopyWithImpl<$Res>
    implements $ExpenseTitleListResponseCopyWith<$Res> {
  _$ExpenseTitleListResponseCopyWithImpl(this._value, this._then);

  final ExpenseTitleListResponse _value;
  // ignore: unused_field
  final $Res Function(ExpenseTitleListResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$ExpenseTitleListResponseFailCopyWith<$Res>
    implements $ExpenseTitleListResponseCopyWith<$Res> {
  factory _$$ExpenseTitleListResponseFailCopyWith(
          _$ExpenseTitleListResponseFail value,
          $Res Function(_$ExpenseTitleListResponseFail) then) =
      __$$ExpenseTitleListResponseFailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<ExpenseTitle> titleList});
}

/// @nodoc
class __$$ExpenseTitleListResponseFailCopyWithImpl<$Res>
    extends _$ExpenseTitleListResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleListResponseFailCopyWith<$Res> {
  __$$ExpenseTitleListResponseFailCopyWithImpl(
      _$ExpenseTitleListResponseFail _value,
      $Res Function(_$ExpenseTitleListResponseFail) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleListResponseFail));

  @override
  _$ExpenseTitleListResponseFail get _value =>
      super._value as _$ExpenseTitleListResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? titleList = freezed,
  }) {
    return _then(_$ExpenseTitleListResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      titleList == freezed
          ? _value._titleList
          : titleList // ignore: cast_nullable_to_non_nullable
              as List<ExpenseTitle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleListResponseFail implements ExpenseTitleListResponseFail {
  const _$ExpenseTitleListResponseFail(this.status, this.message,
      @JsonKey(name: "data") final List<ExpenseTitle> titleList)
      : _titleList = titleList;

  factory _$ExpenseTitleListResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseTitleListResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<ExpenseTitle> _titleList;
  @override
  @JsonKey(name: "data")
  List<ExpenseTitle> get titleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titleList);
  }

  @override
  String toString() {
    return 'ExpenseTitleListResponse.FAIL(status: $status, message: $message, titleList: $titleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleListResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._titleList, _titleList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_titleList));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleListResponseFailCopyWith<_$ExpenseTitleListResponseFail>
      get copyWith => __$$ExpenseTitleListResponseFailCopyWithImpl<
          _$ExpenseTitleListResponseFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)
        SUCCESS,
  }) {
    return FAIL(status, message, titleList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message, titleList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message, titleList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleListResponseFail value) FAIL,
    required TResult Function(ExpenseTitleListResponseError value) ERROR,
    required TResult Function(ExpenseTitleListResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleListResponseFail value)? FAIL,
    TResult Function(ExpenseTitleListResponseError value)? ERROR,
    TResult Function(ExpenseTitleListResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleListResponseFail value)? FAIL,
    TResult Function(ExpenseTitleListResponseError value)? ERROR,
    TResult Function(ExpenseTitleListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleListResponseFailToJson(
      this,
    );
  }
}

abstract class ExpenseTitleListResponseFail
    implements ExpenseTitleListResponse {
  const factory ExpenseTitleListResponseFail(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<ExpenseTitle> titleList) =
      _$ExpenseTitleListResponseFail;

  factory ExpenseTitleListResponseFail.fromJson(Map<String, dynamic> json) =
      _$ExpenseTitleListResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<ExpenseTitle> get titleList;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleListResponseFailCopyWith<_$ExpenseTitleListResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseTitleListResponseErrorCopyWith<$Res>
    implements $ExpenseTitleListResponseCopyWith<$Res> {
  factory _$$ExpenseTitleListResponseErrorCopyWith(
          _$ExpenseTitleListResponseError value,
          $Res Function(_$ExpenseTitleListResponseError) then) =
      __$$ExpenseTitleListResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseTitleListResponseErrorCopyWithImpl<$Res>
    extends _$ExpenseTitleListResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleListResponseErrorCopyWith<$Res> {
  __$$ExpenseTitleListResponseErrorCopyWithImpl(
      _$ExpenseTitleListResponseError _value,
      $Res Function(_$ExpenseTitleListResponseError) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleListResponseError));

  @override
  _$ExpenseTitleListResponseError get _value =>
      super._value as _$ExpenseTitleListResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseTitleListResponseError(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleListResponseError implements ExpenseTitleListResponseError {
  const _$ExpenseTitleListResponseError(this.status, this.message);

  factory _$ExpenseTitleListResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseTitleListResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseTitleListResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleListResponseError &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleListResponseErrorCopyWith<_$ExpenseTitleListResponseError>
      get copyWith => __$$ExpenseTitleListResponseErrorCopyWithImpl<
          _$ExpenseTitleListResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleListResponseFail value) FAIL,
    required TResult Function(ExpenseTitleListResponseError value) ERROR,
    required TResult Function(ExpenseTitleListResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleListResponseFail value)? FAIL,
    TResult Function(ExpenseTitleListResponseError value)? ERROR,
    TResult Function(ExpenseTitleListResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleListResponseFail value)? FAIL,
    TResult Function(ExpenseTitleListResponseError value)? ERROR,
    TResult Function(ExpenseTitleListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleListResponseErrorToJson(
      this,
    );
  }
}

abstract class ExpenseTitleListResponseError
    implements ExpenseTitleListResponse {
  const factory ExpenseTitleListResponseError(
          final String status, final String? message) =
      _$ExpenseTitleListResponseError;

  factory ExpenseTitleListResponseError.fromJson(Map<String, dynamic> json) =
      _$ExpenseTitleListResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleListResponseErrorCopyWith<_$ExpenseTitleListResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseTitleListResponseSuccessCopyWith<$Res>
    implements $ExpenseTitleListResponseCopyWith<$Res> {
  factory _$$ExpenseTitleListResponseSuccessCopyWith(
          _$ExpenseTitleListResponseSuccess value,
          $Res Function(_$ExpenseTitleListResponseSuccess) then) =
      __$$ExpenseTitleListResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<ExpenseTitle> titleList});
}

/// @nodoc
class __$$ExpenseTitleListResponseSuccessCopyWithImpl<$Res>
    extends _$ExpenseTitleListResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleListResponseSuccessCopyWith<$Res> {
  __$$ExpenseTitleListResponseSuccessCopyWithImpl(
      _$ExpenseTitleListResponseSuccess _value,
      $Res Function(_$ExpenseTitleListResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleListResponseSuccess));

  @override
  _$ExpenseTitleListResponseSuccess get _value =>
      super._value as _$ExpenseTitleListResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? titleList = freezed,
  }) {
    return _then(_$ExpenseTitleListResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      titleList == freezed
          ? _value._titleList
          : titleList // ignore: cast_nullable_to_non_nullable
              as List<ExpenseTitle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleListResponseSuccess
    implements ExpenseTitleListResponseSuccess {
  const _$ExpenseTitleListResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<ExpenseTitle> titleList)
      : _titleList = titleList;

  factory _$ExpenseTitleListResponseSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$$ExpenseTitleListResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<ExpenseTitle> _titleList;
  @override
  @JsonKey(name: "data")
  List<ExpenseTitle> get titleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titleList);
  }

  @override
  String toString() {
    return 'ExpenseTitleListResponse.SUCCESS(status: $status, message: $message, titleList: $titleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleListResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._titleList, _titleList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_titleList));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleListResponseSuccessCopyWith<_$ExpenseTitleListResponseSuccess>
      get copyWith => __$$ExpenseTitleListResponseSuccessCopyWithImpl<
          _$ExpenseTitleListResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)
        SUCCESS,
  }) {
    return SUCCESS(status, message, titleList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, titleList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<ExpenseTitle> titleList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, titleList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleListResponseFail value) FAIL,
    required TResult Function(ExpenseTitleListResponseError value) ERROR,
    required TResult Function(ExpenseTitleListResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleListResponseFail value)? FAIL,
    TResult Function(ExpenseTitleListResponseError value)? ERROR,
    TResult Function(ExpenseTitleListResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleListResponseFail value)? FAIL,
    TResult Function(ExpenseTitleListResponseError value)? ERROR,
    TResult Function(ExpenseTitleListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleListResponseSuccessToJson(
      this,
    );
  }
}

abstract class ExpenseTitleListResponseSuccess
    implements ExpenseTitleListResponse {
  const factory ExpenseTitleListResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<ExpenseTitle> titleList) =
      _$ExpenseTitleListResponseSuccess;

  factory ExpenseTitleListResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$ExpenseTitleListResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<ExpenseTitle> get titleList;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleListResponseSuccessCopyWith<_$ExpenseTitleListResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

ExpenseTitleAddResponse _$ExpenseTitleAddResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ExpenseTitleAddResponseFail.fromJson(json);
    case 'ERROR':
      return ExpenseTitleAddResponseError.fromJson(json);
    case 'SUCCESS':
      return ExpenseTitleAddResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ExpenseTitleAddResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ExpenseTitleAddResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleAddResponseFail value) FAIL,
    required TResult Function(ExpenseTitleAddResponseError value) ERROR,
    required TResult Function(ExpenseTitleAddResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleAddResponseFail value)? FAIL,
    TResult Function(ExpenseTitleAddResponseError value)? ERROR,
    TResult Function(ExpenseTitleAddResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleAddResponseFail value)? FAIL,
    TResult Function(ExpenseTitleAddResponseError value)? ERROR,
    TResult Function(ExpenseTitleAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseTitleAddResponseCopyWith<ExpenseTitleAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTitleAddResponseCopyWith<$Res> {
  factory $ExpenseTitleAddResponseCopyWith(ExpenseTitleAddResponse value,
          $Res Function(ExpenseTitleAddResponse) then) =
      _$ExpenseTitleAddResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ExpenseTitleAddResponseCopyWithImpl<$Res>
    implements $ExpenseTitleAddResponseCopyWith<$Res> {
  _$ExpenseTitleAddResponseCopyWithImpl(this._value, this._then);

  final ExpenseTitleAddResponse _value;
  // ignore: unused_field
  final $Res Function(ExpenseTitleAddResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$ExpenseTitleAddResponseFailCopyWith<$Res>
    implements $ExpenseTitleAddResponseCopyWith<$Res> {
  factory _$$ExpenseTitleAddResponseFailCopyWith(
          _$ExpenseTitleAddResponseFail value,
          $Res Function(_$ExpenseTitleAddResponseFail) then) =
      __$$ExpenseTitleAddResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseTitleAddResponseFailCopyWithImpl<$Res>
    extends _$ExpenseTitleAddResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleAddResponseFailCopyWith<$Res> {
  __$$ExpenseTitleAddResponseFailCopyWithImpl(
      _$ExpenseTitleAddResponseFail _value,
      $Res Function(_$ExpenseTitleAddResponseFail) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleAddResponseFail));

  @override
  _$ExpenseTitleAddResponseFail get _value =>
      super._value as _$ExpenseTitleAddResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseTitleAddResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleAddResponseFail implements ExpenseTitleAddResponseFail {
  const _$ExpenseTitleAddResponseFail(this.status, this.message);

  factory _$ExpenseTitleAddResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseTitleAddResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseTitleAddResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleAddResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleAddResponseFailCopyWith<_$ExpenseTitleAddResponseFail>
      get copyWith => __$$ExpenseTitleAddResponseFailCopyWithImpl<
          _$ExpenseTitleAddResponseFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)
        SUCCESS,
  }) {
    return FAIL(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleAddResponseFail value) FAIL,
    required TResult Function(ExpenseTitleAddResponseError value) ERROR,
    required TResult Function(ExpenseTitleAddResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleAddResponseFail value)? FAIL,
    TResult Function(ExpenseTitleAddResponseError value)? ERROR,
    TResult Function(ExpenseTitleAddResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleAddResponseFail value)? FAIL,
    TResult Function(ExpenseTitleAddResponseError value)? ERROR,
    TResult Function(ExpenseTitleAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleAddResponseFailToJson(
      this,
    );
  }
}

abstract class ExpenseTitleAddResponseFail implements ExpenseTitleAddResponse {
  const factory ExpenseTitleAddResponseFail(
          final String status, final String? message) =
      _$ExpenseTitleAddResponseFail;

  factory ExpenseTitleAddResponseFail.fromJson(Map<String, dynamic> json) =
      _$ExpenseTitleAddResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleAddResponseFailCopyWith<_$ExpenseTitleAddResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseTitleAddResponseErrorCopyWith<$Res>
    implements $ExpenseTitleAddResponseCopyWith<$Res> {
  factory _$$ExpenseTitleAddResponseErrorCopyWith(
          _$ExpenseTitleAddResponseError value,
          $Res Function(_$ExpenseTitleAddResponseError) then) =
      __$$ExpenseTitleAddResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseTitleAddResponseErrorCopyWithImpl<$Res>
    extends _$ExpenseTitleAddResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleAddResponseErrorCopyWith<$Res> {
  __$$ExpenseTitleAddResponseErrorCopyWithImpl(
      _$ExpenseTitleAddResponseError _value,
      $Res Function(_$ExpenseTitleAddResponseError) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleAddResponseError));

  @override
  _$ExpenseTitleAddResponseError get _value =>
      super._value as _$ExpenseTitleAddResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseTitleAddResponseError(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleAddResponseError implements ExpenseTitleAddResponseError {
  const _$ExpenseTitleAddResponseError(this.status, this.message);

  factory _$ExpenseTitleAddResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseTitleAddResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseTitleAddResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleAddResponseError &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleAddResponseErrorCopyWith<_$ExpenseTitleAddResponseError>
      get copyWith => __$$ExpenseTitleAddResponseErrorCopyWithImpl<
          _$ExpenseTitleAddResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleAddResponseFail value) FAIL,
    required TResult Function(ExpenseTitleAddResponseError value) ERROR,
    required TResult Function(ExpenseTitleAddResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleAddResponseFail value)? FAIL,
    TResult Function(ExpenseTitleAddResponseError value)? ERROR,
    TResult Function(ExpenseTitleAddResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleAddResponseFail value)? FAIL,
    TResult Function(ExpenseTitleAddResponseError value)? ERROR,
    TResult Function(ExpenseTitleAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleAddResponseErrorToJson(
      this,
    );
  }
}

abstract class ExpenseTitleAddResponseError implements ExpenseTitleAddResponse {
  const factory ExpenseTitleAddResponseError(
          final String status, final String? message) =
      _$ExpenseTitleAddResponseError;

  factory ExpenseTitleAddResponseError.fromJson(Map<String, dynamic> json) =
      _$ExpenseTitleAddResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleAddResponseErrorCopyWith<_$ExpenseTitleAddResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseTitleAddResponseSuccessCopyWith<$Res>
    implements $ExpenseTitleAddResponseCopyWith<$Res> {
  factory _$$ExpenseTitleAddResponseSuccessCopyWith(
          _$ExpenseTitleAddResponseSuccess value,
          $Res Function(_$ExpenseTitleAddResponseSuccess) then) =
      __$$ExpenseTitleAddResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") ExpenseTitleItem titleItem});

  $ExpenseTitleItemCopyWith<$Res> get titleItem;
}

/// @nodoc
class __$$ExpenseTitleAddResponseSuccessCopyWithImpl<$Res>
    extends _$ExpenseTitleAddResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleAddResponseSuccessCopyWith<$Res> {
  __$$ExpenseTitleAddResponseSuccessCopyWithImpl(
      _$ExpenseTitleAddResponseSuccess _value,
      $Res Function(_$ExpenseTitleAddResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleAddResponseSuccess));

  @override
  _$ExpenseTitleAddResponseSuccess get _value =>
      super._value as _$ExpenseTitleAddResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? titleItem = freezed,
  }) {
    return _then(_$ExpenseTitleAddResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      titleItem == freezed
          ? _value.titleItem
          : titleItem // ignore: cast_nullable_to_non_nullable
              as ExpenseTitleItem,
    ));
  }

  @override
  $ExpenseTitleItemCopyWith<$Res> get titleItem {
    return $ExpenseTitleItemCopyWith<$Res>(_value.titleItem, (value) {
      return _then(_value.copyWith(titleItem: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleAddResponseSuccess
    implements ExpenseTitleAddResponseSuccess {
  const _$ExpenseTitleAddResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.titleItem);

  factory _$ExpenseTitleAddResponseSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$$ExpenseTitleAddResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final ExpenseTitleItem titleItem;

  @override
  String toString() {
    return 'ExpenseTitleAddResponse.SUCCESS(status: $status, message: $message, titleItem: $titleItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleAddResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.titleItem, titleItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(titleItem));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleAddResponseSuccessCopyWith<_$ExpenseTitleAddResponseSuccess>
      get copyWith => __$$ExpenseTitleAddResponseSuccessCopyWithImpl<
          _$ExpenseTitleAddResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)
        SUCCESS,
  }) {
    return SUCCESS(status, message, titleItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, titleItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseTitleItem titleItem)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, titleItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleAddResponseFail value) FAIL,
    required TResult Function(ExpenseTitleAddResponseError value) ERROR,
    required TResult Function(ExpenseTitleAddResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleAddResponseFail value)? FAIL,
    TResult Function(ExpenseTitleAddResponseError value)? ERROR,
    TResult Function(ExpenseTitleAddResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleAddResponseFail value)? FAIL,
    TResult Function(ExpenseTitleAddResponseError value)? ERROR,
    TResult Function(ExpenseTitleAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleAddResponseSuccessToJson(
      this,
    );
  }
}

abstract class ExpenseTitleAddResponseSuccess
    implements ExpenseTitleAddResponse {
  const factory ExpenseTitleAddResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final ExpenseTitleItem titleItem) =
      _$ExpenseTitleAddResponseSuccess;

  factory ExpenseTitleAddResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$ExpenseTitleAddResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  ExpenseTitleItem get titleItem;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleAddResponseSuccessCopyWith<_$ExpenseTitleAddResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

ExpenseTitleDeleteResponse _$ExpenseTitleDeleteResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ExpenseTitleDeleteResponseFail.fromJson(json);
    case 'ERROR':
      return ExpenseTitleDeleteResponseError.fromJson(json);
    case 'SUCCESS':
      return ExpenseTitleDeleteResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'status',
          'ExpenseTitleDeleteResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ExpenseTitleDeleteResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleDeleteResponseFail value) FAIL,
    required TResult Function(ExpenseTitleDeleteResponseError value) ERROR,
    required TResult Function(ExpenseTitleDeleteResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseTitleDeleteResponseError value)? ERROR,
    TResult Function(ExpenseTitleDeleteResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseTitleDeleteResponseError value)? ERROR,
    TResult Function(ExpenseTitleDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseTitleDeleteResponseCopyWith<ExpenseTitleDeleteResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTitleDeleteResponseCopyWith<$Res> {
  factory $ExpenseTitleDeleteResponseCopyWith(ExpenseTitleDeleteResponse value,
          $Res Function(ExpenseTitleDeleteResponse) then) =
      _$ExpenseTitleDeleteResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ExpenseTitleDeleteResponseCopyWithImpl<$Res>
    implements $ExpenseTitleDeleteResponseCopyWith<$Res> {
  _$ExpenseTitleDeleteResponseCopyWithImpl(this._value, this._then);

  final ExpenseTitleDeleteResponse _value;
  // ignore: unused_field
  final $Res Function(ExpenseTitleDeleteResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$ExpenseTitleDeleteResponseFailCopyWith<$Res>
    implements $ExpenseTitleDeleteResponseCopyWith<$Res> {
  factory _$$ExpenseTitleDeleteResponseFailCopyWith(
          _$ExpenseTitleDeleteResponseFail value,
          $Res Function(_$ExpenseTitleDeleteResponseFail) then) =
      __$$ExpenseTitleDeleteResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseTitleDeleteResponseFailCopyWithImpl<$Res>
    extends _$ExpenseTitleDeleteResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleDeleteResponseFailCopyWith<$Res> {
  __$$ExpenseTitleDeleteResponseFailCopyWithImpl(
      _$ExpenseTitleDeleteResponseFail _value,
      $Res Function(_$ExpenseTitleDeleteResponseFail) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleDeleteResponseFail));

  @override
  _$ExpenseTitleDeleteResponseFail get _value =>
      super._value as _$ExpenseTitleDeleteResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseTitleDeleteResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleDeleteResponseFail
    implements ExpenseTitleDeleteResponseFail {
  const _$ExpenseTitleDeleteResponseFail(this.status, this.message);

  factory _$ExpenseTitleDeleteResponseFail.fromJson(
          Map<String, dynamic> json) =>
      _$$ExpenseTitleDeleteResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseTitleDeleteResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleDeleteResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleDeleteResponseFailCopyWith<_$ExpenseTitleDeleteResponseFail>
      get copyWith => __$$ExpenseTitleDeleteResponseFailCopyWithImpl<
          _$ExpenseTitleDeleteResponseFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message) SUCCESS,
  }) {
    return FAIL(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
  }) {
    return FAIL?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleDeleteResponseFail value) FAIL,
    required TResult Function(ExpenseTitleDeleteResponseError value) ERROR,
    required TResult Function(ExpenseTitleDeleteResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseTitleDeleteResponseError value)? ERROR,
    TResult Function(ExpenseTitleDeleteResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseTitleDeleteResponseError value)? ERROR,
    TResult Function(ExpenseTitleDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleDeleteResponseFailToJson(
      this,
    );
  }
}

abstract class ExpenseTitleDeleteResponseFail
    implements ExpenseTitleDeleteResponse {
  const factory ExpenseTitleDeleteResponseFail(
          final String status, final String? message) =
      _$ExpenseTitleDeleteResponseFail;

  factory ExpenseTitleDeleteResponseFail.fromJson(Map<String, dynamic> json) =
      _$ExpenseTitleDeleteResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleDeleteResponseFailCopyWith<_$ExpenseTitleDeleteResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseTitleDeleteResponseErrorCopyWith<$Res>
    implements $ExpenseTitleDeleteResponseCopyWith<$Res> {
  factory _$$ExpenseTitleDeleteResponseErrorCopyWith(
          _$ExpenseTitleDeleteResponseError value,
          $Res Function(_$ExpenseTitleDeleteResponseError) then) =
      __$$ExpenseTitleDeleteResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseTitleDeleteResponseErrorCopyWithImpl<$Res>
    extends _$ExpenseTitleDeleteResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleDeleteResponseErrorCopyWith<$Res> {
  __$$ExpenseTitleDeleteResponseErrorCopyWithImpl(
      _$ExpenseTitleDeleteResponseError _value,
      $Res Function(_$ExpenseTitleDeleteResponseError) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleDeleteResponseError));

  @override
  _$ExpenseTitleDeleteResponseError get _value =>
      super._value as _$ExpenseTitleDeleteResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseTitleDeleteResponseError(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleDeleteResponseError
    implements ExpenseTitleDeleteResponseError {
  const _$ExpenseTitleDeleteResponseError(this.status, this.message);

  factory _$ExpenseTitleDeleteResponseError.fromJson(
          Map<String, dynamic> json) =>
      _$$ExpenseTitleDeleteResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseTitleDeleteResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleDeleteResponseError &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleDeleteResponseErrorCopyWith<_$ExpenseTitleDeleteResponseError>
      get copyWith => __$$ExpenseTitleDeleteResponseErrorCopyWithImpl<
          _$ExpenseTitleDeleteResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message) SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleDeleteResponseFail value) FAIL,
    required TResult Function(ExpenseTitleDeleteResponseError value) ERROR,
    required TResult Function(ExpenseTitleDeleteResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseTitleDeleteResponseError value)? ERROR,
    TResult Function(ExpenseTitleDeleteResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseTitleDeleteResponseError value)? ERROR,
    TResult Function(ExpenseTitleDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleDeleteResponseErrorToJson(
      this,
    );
  }
}

abstract class ExpenseTitleDeleteResponseError
    implements ExpenseTitleDeleteResponse {
  const factory ExpenseTitleDeleteResponseError(
          final String status, final String? message) =
      _$ExpenseTitleDeleteResponseError;

  factory ExpenseTitleDeleteResponseError.fromJson(Map<String, dynamic> json) =
      _$ExpenseTitleDeleteResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleDeleteResponseErrorCopyWith<_$ExpenseTitleDeleteResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseTitleDeleteResponseSuccessCopyWith<$Res>
    implements $ExpenseTitleDeleteResponseCopyWith<$Res> {
  factory _$$ExpenseTitleDeleteResponseSuccessCopyWith(
          _$ExpenseTitleDeleteResponseSuccess value,
          $Res Function(_$ExpenseTitleDeleteResponseSuccess) then) =
      __$$ExpenseTitleDeleteResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseTitleDeleteResponseSuccessCopyWithImpl<$Res>
    extends _$ExpenseTitleDeleteResponseCopyWithImpl<$Res>
    implements _$$ExpenseTitleDeleteResponseSuccessCopyWith<$Res> {
  __$$ExpenseTitleDeleteResponseSuccessCopyWithImpl(
      _$ExpenseTitleDeleteResponseSuccess _value,
      $Res Function(_$ExpenseTitleDeleteResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ExpenseTitleDeleteResponseSuccess));

  @override
  _$ExpenseTitleDeleteResponseSuccess get _value =>
      super._value as _$ExpenseTitleDeleteResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseTitleDeleteResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseTitleDeleteResponseSuccess
    implements ExpenseTitleDeleteResponseSuccess {
  const _$ExpenseTitleDeleteResponseSuccess(this.status, this.message);

  factory _$ExpenseTitleDeleteResponseSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$$ExpenseTitleDeleteResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseTitleDeleteResponse.SUCCESS(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTitleDeleteResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseTitleDeleteResponseSuccessCopyWith<
          _$ExpenseTitleDeleteResponseSuccess>
      get copyWith => __$$ExpenseTitleDeleteResponseSuccessCopyWithImpl<
          _$ExpenseTitleDeleteResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message) SUCCESS,
  }) {
    return SUCCESS(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
  }) {
    return SUCCESS?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseTitleDeleteResponseFail value) FAIL,
    required TResult Function(ExpenseTitleDeleteResponseError value) ERROR,
    required TResult Function(ExpenseTitleDeleteResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseTitleDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseTitleDeleteResponseError value)? ERROR,
    TResult Function(ExpenseTitleDeleteResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseTitleDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseTitleDeleteResponseError value)? ERROR,
    TResult Function(ExpenseTitleDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTitleDeleteResponseSuccessToJson(
      this,
    );
  }
}

abstract class ExpenseTitleDeleteResponseSuccess
    implements ExpenseTitleDeleteResponse {
  const factory ExpenseTitleDeleteResponseSuccess(
          final String status, final String? message) =
      _$ExpenseTitleDeleteResponseSuccess;

  factory ExpenseTitleDeleteResponseSuccess.fromJson(
      Map<String, dynamic> json) = _$ExpenseTitleDeleteResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTitleDeleteResponseSuccessCopyWith<
          _$ExpenseTitleDeleteResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

ExpenseListResponse _$ExpenseListResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ExpenseListResponseFail.fromJson(json);
    case 'ERROR':
      return ExpenseListResponseError.fromJson(json);
    case 'SUCCESS':
      return ExpenseListResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ExpenseListResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ExpenseListResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseListResponseFail value) FAIL,
    required TResult Function(ExpenseListResponseError value) ERROR,
    required TResult Function(ExpenseListResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseListResponseFail value)? FAIL,
    TResult Function(ExpenseListResponseError value)? ERROR,
    TResult Function(ExpenseListResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseListResponseFail value)? FAIL,
    TResult Function(ExpenseListResponseError value)? ERROR,
    TResult Function(ExpenseListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseListResponseCopyWith<ExpenseListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseListResponseCopyWith<$Res> {
  factory $ExpenseListResponseCopyWith(
          ExpenseListResponse value, $Res Function(ExpenseListResponse) then) =
      _$ExpenseListResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ExpenseListResponseCopyWithImpl<$Res>
    implements $ExpenseListResponseCopyWith<$Res> {
  _$ExpenseListResponseCopyWithImpl(this._value, this._then);

  final ExpenseListResponse _value;
  // ignore: unused_field
  final $Res Function(ExpenseListResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$ExpenseListResponseFailCopyWith<$Res>
    implements $ExpenseListResponseCopyWith<$Res> {
  factory _$$ExpenseListResponseFailCopyWith(_$ExpenseListResponseFail value,
          $Res Function(_$ExpenseListResponseFail) then) =
      __$$ExpenseListResponseFailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Expense> expenseList});
}

/// @nodoc
class __$$ExpenseListResponseFailCopyWithImpl<$Res>
    extends _$ExpenseListResponseCopyWithImpl<$Res>
    implements _$$ExpenseListResponseFailCopyWith<$Res> {
  __$$ExpenseListResponseFailCopyWithImpl(_$ExpenseListResponseFail _value,
      $Res Function(_$ExpenseListResponseFail) _then)
      : super(_value, (v) => _then(v as _$ExpenseListResponseFail));

  @override
  _$ExpenseListResponseFail get _value =>
      super._value as _$ExpenseListResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? expenseList = freezed,
  }) {
    return _then(_$ExpenseListResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      expenseList == freezed
          ? _value._expenseList
          : expenseList // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseListResponseFail implements ExpenseListResponseFail {
  const _$ExpenseListResponseFail(this.status, this.message,
      @JsonKey(name: "data") final List<Expense> expenseList)
      : _expenseList = expenseList;

  factory _$ExpenseListResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseListResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Expense> _expenseList;
  @override
  @JsonKey(name: "data")
  List<Expense> get expenseList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseList);
  }

  @override
  String toString() {
    return 'ExpenseListResponse.FAIL(status: $status, message: $message, expenseList: $expenseList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseListResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._expenseList, _expenseList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_expenseList));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseListResponseFailCopyWith<_$ExpenseListResponseFail> get copyWith =>
      __$$ExpenseListResponseFailCopyWithImpl<_$ExpenseListResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)
        SUCCESS,
  }) {
    return FAIL(status, message, expenseList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message, expenseList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message, expenseList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseListResponseFail value) FAIL,
    required TResult Function(ExpenseListResponseError value) ERROR,
    required TResult Function(ExpenseListResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseListResponseFail value)? FAIL,
    TResult Function(ExpenseListResponseError value)? ERROR,
    TResult Function(ExpenseListResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseListResponseFail value)? FAIL,
    TResult Function(ExpenseListResponseError value)? ERROR,
    TResult Function(ExpenseListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseListResponseFailToJson(
      this,
    );
  }
}

abstract class ExpenseListResponseFail implements ExpenseListResponse {
  const factory ExpenseListResponseFail(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Expense> expenseList) =
      _$ExpenseListResponseFail;

  factory ExpenseListResponseFail.fromJson(Map<String, dynamic> json) =
      _$ExpenseListResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Expense> get expenseList;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseListResponseFailCopyWith<_$ExpenseListResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseListResponseErrorCopyWith<$Res>
    implements $ExpenseListResponseCopyWith<$Res> {
  factory _$$ExpenseListResponseErrorCopyWith(_$ExpenseListResponseError value,
          $Res Function(_$ExpenseListResponseError) then) =
      __$$ExpenseListResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseListResponseErrorCopyWithImpl<$Res>
    extends _$ExpenseListResponseCopyWithImpl<$Res>
    implements _$$ExpenseListResponseErrorCopyWith<$Res> {
  __$$ExpenseListResponseErrorCopyWithImpl(_$ExpenseListResponseError _value,
      $Res Function(_$ExpenseListResponseError) _then)
      : super(_value, (v) => _then(v as _$ExpenseListResponseError));

  @override
  _$ExpenseListResponseError get _value =>
      super._value as _$ExpenseListResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseListResponseError(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseListResponseError implements ExpenseListResponseError {
  const _$ExpenseListResponseError(this.status, this.message);

  factory _$ExpenseListResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseListResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseListResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseListResponseError &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseListResponseErrorCopyWith<_$ExpenseListResponseError>
      get copyWith =>
          __$$ExpenseListResponseErrorCopyWithImpl<_$ExpenseListResponseError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseListResponseFail value) FAIL,
    required TResult Function(ExpenseListResponseError value) ERROR,
    required TResult Function(ExpenseListResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseListResponseFail value)? FAIL,
    TResult Function(ExpenseListResponseError value)? ERROR,
    TResult Function(ExpenseListResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseListResponseFail value)? FAIL,
    TResult Function(ExpenseListResponseError value)? ERROR,
    TResult Function(ExpenseListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseListResponseErrorToJson(
      this,
    );
  }
}

abstract class ExpenseListResponseError implements ExpenseListResponse {
  const factory ExpenseListResponseError(
      final String status, final String? message) = _$ExpenseListResponseError;

  factory ExpenseListResponseError.fromJson(Map<String, dynamic> json) =
      _$ExpenseListResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseListResponseErrorCopyWith<_$ExpenseListResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseListResponseSuccessCopyWith<$Res>
    implements $ExpenseListResponseCopyWith<$Res> {
  factory _$$ExpenseListResponseSuccessCopyWith(
          _$ExpenseListResponseSuccess value,
          $Res Function(_$ExpenseListResponseSuccess) then) =
      __$$ExpenseListResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Expense> expenseList});
}

/// @nodoc
class __$$ExpenseListResponseSuccessCopyWithImpl<$Res>
    extends _$ExpenseListResponseCopyWithImpl<$Res>
    implements _$$ExpenseListResponseSuccessCopyWith<$Res> {
  __$$ExpenseListResponseSuccessCopyWithImpl(
      _$ExpenseListResponseSuccess _value,
      $Res Function(_$ExpenseListResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ExpenseListResponseSuccess));

  @override
  _$ExpenseListResponseSuccess get _value =>
      super._value as _$ExpenseListResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? expenseList = freezed,
  }) {
    return _then(_$ExpenseListResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      expenseList == freezed
          ? _value._expenseList
          : expenseList // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseListResponseSuccess implements ExpenseListResponseSuccess {
  const _$ExpenseListResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<Expense> expenseList)
      : _expenseList = expenseList;

  factory _$ExpenseListResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseListResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Expense> _expenseList;
  @override
  @JsonKey(name: "data")
  List<Expense> get expenseList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseList);
  }

  @override
  String toString() {
    return 'ExpenseListResponse.SUCCESS(status: $status, message: $message, expenseList: $expenseList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseListResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._expenseList, _expenseList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_expenseList));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseListResponseSuccessCopyWith<_$ExpenseListResponseSuccess>
      get copyWith => __$$ExpenseListResponseSuccessCopyWithImpl<
          _$ExpenseListResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)
        SUCCESS,
  }) {
    return SUCCESS(status, message, expenseList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, expenseList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Expense> expenseList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, expenseList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseListResponseFail value) FAIL,
    required TResult Function(ExpenseListResponseError value) ERROR,
    required TResult Function(ExpenseListResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseListResponseFail value)? FAIL,
    TResult Function(ExpenseListResponseError value)? ERROR,
    TResult Function(ExpenseListResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseListResponseFail value)? FAIL,
    TResult Function(ExpenseListResponseError value)? ERROR,
    TResult Function(ExpenseListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseListResponseSuccessToJson(
      this,
    );
  }
}

abstract class ExpenseListResponseSuccess implements ExpenseListResponse {
  const factory ExpenseListResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Expense> expenseList) =
      _$ExpenseListResponseSuccess;

  factory ExpenseListResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$ExpenseListResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Expense> get expenseList;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseListResponseSuccessCopyWith<_$ExpenseListResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

ExpenseAddResponse _$ExpenseAddResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ExpenseAddResponseFail.fromJson(json);
    case 'ERROR':
      return ExpenseAddResponseError.fromJson(json);
    case 'SUCCESS':
      return ExpenseAddResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ExpenseAddResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ExpenseAddResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseAddResponseFail value) FAIL,
    required TResult Function(ExpenseAddResponseError value) ERROR,
    required TResult Function(ExpenseAddResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseAddResponseFail value)? FAIL,
    TResult Function(ExpenseAddResponseError value)? ERROR,
    TResult Function(ExpenseAddResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseAddResponseFail value)? FAIL,
    TResult Function(ExpenseAddResponseError value)? ERROR,
    TResult Function(ExpenseAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseAddResponseCopyWith<ExpenseAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseAddResponseCopyWith<$Res> {
  factory $ExpenseAddResponseCopyWith(
          ExpenseAddResponse value, $Res Function(ExpenseAddResponse) then) =
      _$ExpenseAddResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ExpenseAddResponseCopyWithImpl<$Res>
    implements $ExpenseAddResponseCopyWith<$Res> {
  _$ExpenseAddResponseCopyWithImpl(this._value, this._then);

  final ExpenseAddResponse _value;
  // ignore: unused_field
  final $Res Function(ExpenseAddResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$ExpenseAddResponseFailCopyWith<$Res>
    implements $ExpenseAddResponseCopyWith<$Res> {
  factory _$$ExpenseAddResponseFailCopyWith(_$ExpenseAddResponseFail value,
          $Res Function(_$ExpenseAddResponseFail) then) =
      __$$ExpenseAddResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseAddResponseFailCopyWithImpl<$Res>
    extends _$ExpenseAddResponseCopyWithImpl<$Res>
    implements _$$ExpenseAddResponseFailCopyWith<$Res> {
  __$$ExpenseAddResponseFailCopyWithImpl(_$ExpenseAddResponseFail _value,
      $Res Function(_$ExpenseAddResponseFail) _then)
      : super(_value, (v) => _then(v as _$ExpenseAddResponseFail));

  @override
  _$ExpenseAddResponseFail get _value =>
      super._value as _$ExpenseAddResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseAddResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseAddResponseFail implements ExpenseAddResponseFail {
  const _$ExpenseAddResponseFail(this.status, this.message);

  factory _$ExpenseAddResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseAddResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseAddResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseAddResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseAddResponseFailCopyWith<_$ExpenseAddResponseFail> get copyWith =>
      __$$ExpenseAddResponseFailCopyWithImpl<_$ExpenseAddResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)
        SUCCESS,
  }) {
    return FAIL(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseAddResponseFail value) FAIL,
    required TResult Function(ExpenseAddResponseError value) ERROR,
    required TResult Function(ExpenseAddResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseAddResponseFail value)? FAIL,
    TResult Function(ExpenseAddResponseError value)? ERROR,
    TResult Function(ExpenseAddResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseAddResponseFail value)? FAIL,
    TResult Function(ExpenseAddResponseError value)? ERROR,
    TResult Function(ExpenseAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseAddResponseFailToJson(
      this,
    );
  }
}

abstract class ExpenseAddResponseFail implements ExpenseAddResponse {
  const factory ExpenseAddResponseFail(
      final String status, final String? message) = _$ExpenseAddResponseFail;

  factory ExpenseAddResponseFail.fromJson(Map<String, dynamic> json) =
      _$ExpenseAddResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseAddResponseFailCopyWith<_$ExpenseAddResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseAddResponseErrorCopyWith<$Res>
    implements $ExpenseAddResponseCopyWith<$Res> {
  factory _$$ExpenseAddResponseErrorCopyWith(_$ExpenseAddResponseError value,
          $Res Function(_$ExpenseAddResponseError) then) =
      __$$ExpenseAddResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseAddResponseErrorCopyWithImpl<$Res>
    extends _$ExpenseAddResponseCopyWithImpl<$Res>
    implements _$$ExpenseAddResponseErrorCopyWith<$Res> {
  __$$ExpenseAddResponseErrorCopyWithImpl(_$ExpenseAddResponseError _value,
      $Res Function(_$ExpenseAddResponseError) _then)
      : super(_value, (v) => _then(v as _$ExpenseAddResponseError));

  @override
  _$ExpenseAddResponseError get _value =>
      super._value as _$ExpenseAddResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseAddResponseError(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseAddResponseError implements ExpenseAddResponseError {
  const _$ExpenseAddResponseError(this.status, this.message);

  factory _$ExpenseAddResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseAddResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseAddResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseAddResponseError &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseAddResponseErrorCopyWith<_$ExpenseAddResponseError> get copyWith =>
      __$$ExpenseAddResponseErrorCopyWithImpl<_$ExpenseAddResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseAddResponseFail value) FAIL,
    required TResult Function(ExpenseAddResponseError value) ERROR,
    required TResult Function(ExpenseAddResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseAddResponseFail value)? FAIL,
    TResult Function(ExpenseAddResponseError value)? ERROR,
    TResult Function(ExpenseAddResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseAddResponseFail value)? FAIL,
    TResult Function(ExpenseAddResponseError value)? ERROR,
    TResult Function(ExpenseAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseAddResponseErrorToJson(
      this,
    );
  }
}

abstract class ExpenseAddResponseError implements ExpenseAddResponse {
  const factory ExpenseAddResponseError(
      final String status, final String? message) = _$ExpenseAddResponseError;

  factory ExpenseAddResponseError.fromJson(Map<String, dynamic> json) =
      _$ExpenseAddResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseAddResponseErrorCopyWith<_$ExpenseAddResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseAddResponseSuccessCopyWith<$Res>
    implements $ExpenseAddResponseCopyWith<$Res> {
  factory _$$ExpenseAddResponseSuccessCopyWith(
          _$ExpenseAddResponseSuccess value,
          $Res Function(_$ExpenseAddResponseSuccess) then) =
      __$$ExpenseAddResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") ExpenseItem expenseItem});

  $ExpenseItemCopyWith<$Res> get expenseItem;
}

/// @nodoc
class __$$ExpenseAddResponseSuccessCopyWithImpl<$Res>
    extends _$ExpenseAddResponseCopyWithImpl<$Res>
    implements _$$ExpenseAddResponseSuccessCopyWith<$Res> {
  __$$ExpenseAddResponseSuccessCopyWithImpl(_$ExpenseAddResponseSuccess _value,
      $Res Function(_$ExpenseAddResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ExpenseAddResponseSuccess));

  @override
  _$ExpenseAddResponseSuccess get _value =>
      super._value as _$ExpenseAddResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? expenseItem = freezed,
  }) {
    return _then(_$ExpenseAddResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      expenseItem == freezed
          ? _value.expenseItem
          : expenseItem // ignore: cast_nullable_to_non_nullable
              as ExpenseItem,
    ));
  }

  @override
  $ExpenseItemCopyWith<$Res> get expenseItem {
    return $ExpenseItemCopyWith<$Res>(_value.expenseItem, (value) {
      return _then(_value.copyWith(expenseItem: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseAddResponseSuccess implements ExpenseAddResponseSuccess {
  const _$ExpenseAddResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.expenseItem);

  factory _$ExpenseAddResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseAddResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final ExpenseItem expenseItem;

  @override
  String toString() {
    return 'ExpenseAddResponse.SUCCESS(status: $status, message: $message, expenseItem: $expenseItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseAddResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.expenseItem, expenseItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(expenseItem));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseAddResponseSuccessCopyWith<_$ExpenseAddResponseSuccess>
      get copyWith => __$$ExpenseAddResponseSuccessCopyWithImpl<
          _$ExpenseAddResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)
        SUCCESS,
  }) {
    return SUCCESS(status, message, expenseItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, expenseItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ExpenseItem expenseItem)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, expenseItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseAddResponseFail value) FAIL,
    required TResult Function(ExpenseAddResponseError value) ERROR,
    required TResult Function(ExpenseAddResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseAddResponseFail value)? FAIL,
    TResult Function(ExpenseAddResponseError value)? ERROR,
    TResult Function(ExpenseAddResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseAddResponseFail value)? FAIL,
    TResult Function(ExpenseAddResponseError value)? ERROR,
    TResult Function(ExpenseAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseAddResponseSuccessToJson(
      this,
    );
  }
}

abstract class ExpenseAddResponseSuccess implements ExpenseAddResponse {
  const factory ExpenseAddResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final ExpenseItem expenseItem) =
      _$ExpenseAddResponseSuccess;

  factory ExpenseAddResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$ExpenseAddResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  ExpenseItem get expenseItem;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseAddResponseSuccessCopyWith<_$ExpenseAddResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

ExpenseDeleteResponse _$ExpenseDeleteResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ExpenseDeleteResponseFail.fromJson(json);
    case 'ERROR':
      return ExpenseDeleteResponseError.fromJson(json);
    case 'SUCCESS':
      return ExpenseDeleteResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ExpenseDeleteResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ExpenseDeleteResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseDeleteResponseFail value) FAIL,
    required TResult Function(ExpenseDeleteResponseError value) ERROR,
    required TResult Function(ExpenseDeleteResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseDeleteResponseError value)? ERROR,
    TResult Function(ExpenseDeleteResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseDeleteResponseError value)? ERROR,
    TResult Function(ExpenseDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseDeleteResponseCopyWith<ExpenseDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseDeleteResponseCopyWith<$Res> {
  factory $ExpenseDeleteResponseCopyWith(ExpenseDeleteResponse value,
          $Res Function(ExpenseDeleteResponse) then) =
      _$ExpenseDeleteResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ExpenseDeleteResponseCopyWithImpl<$Res>
    implements $ExpenseDeleteResponseCopyWith<$Res> {
  _$ExpenseDeleteResponseCopyWithImpl(this._value, this._then);

  final ExpenseDeleteResponse _value;
  // ignore: unused_field
  final $Res Function(ExpenseDeleteResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$ExpenseDeleteResponseFailCopyWith<$Res>
    implements $ExpenseDeleteResponseCopyWith<$Res> {
  factory _$$ExpenseDeleteResponseFailCopyWith(
          _$ExpenseDeleteResponseFail value,
          $Res Function(_$ExpenseDeleteResponseFail) then) =
      __$$ExpenseDeleteResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseDeleteResponseFailCopyWithImpl<$Res>
    extends _$ExpenseDeleteResponseCopyWithImpl<$Res>
    implements _$$ExpenseDeleteResponseFailCopyWith<$Res> {
  __$$ExpenseDeleteResponseFailCopyWithImpl(_$ExpenseDeleteResponseFail _value,
      $Res Function(_$ExpenseDeleteResponseFail) _then)
      : super(_value, (v) => _then(v as _$ExpenseDeleteResponseFail));

  @override
  _$ExpenseDeleteResponseFail get _value =>
      super._value as _$ExpenseDeleteResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseDeleteResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseDeleteResponseFail implements ExpenseDeleteResponseFail {
  const _$ExpenseDeleteResponseFail(this.status, this.message);

  factory _$ExpenseDeleteResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseDeleteResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseDeleteResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseDeleteResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseDeleteResponseFailCopyWith<_$ExpenseDeleteResponseFail>
      get copyWith => __$$ExpenseDeleteResponseFailCopyWithImpl<
          _$ExpenseDeleteResponseFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message) SUCCESS,
  }) {
    return FAIL(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
  }) {
    return FAIL?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseDeleteResponseFail value) FAIL,
    required TResult Function(ExpenseDeleteResponseError value) ERROR,
    required TResult Function(ExpenseDeleteResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseDeleteResponseError value)? ERROR,
    TResult Function(ExpenseDeleteResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseDeleteResponseError value)? ERROR,
    TResult Function(ExpenseDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseDeleteResponseFailToJson(
      this,
    );
  }
}

abstract class ExpenseDeleteResponseFail implements ExpenseDeleteResponse {
  const factory ExpenseDeleteResponseFail(
      final String status, final String? message) = _$ExpenseDeleteResponseFail;

  factory ExpenseDeleteResponseFail.fromJson(Map<String, dynamic> json) =
      _$ExpenseDeleteResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseDeleteResponseFailCopyWith<_$ExpenseDeleteResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseDeleteResponseErrorCopyWith<$Res>
    implements $ExpenseDeleteResponseCopyWith<$Res> {
  factory _$$ExpenseDeleteResponseErrorCopyWith(
          _$ExpenseDeleteResponseError value,
          $Res Function(_$ExpenseDeleteResponseError) then) =
      __$$ExpenseDeleteResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseDeleteResponseErrorCopyWithImpl<$Res>
    extends _$ExpenseDeleteResponseCopyWithImpl<$Res>
    implements _$$ExpenseDeleteResponseErrorCopyWith<$Res> {
  __$$ExpenseDeleteResponseErrorCopyWithImpl(
      _$ExpenseDeleteResponseError _value,
      $Res Function(_$ExpenseDeleteResponseError) _then)
      : super(_value, (v) => _then(v as _$ExpenseDeleteResponseError));

  @override
  _$ExpenseDeleteResponseError get _value =>
      super._value as _$ExpenseDeleteResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseDeleteResponseError(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseDeleteResponseError implements ExpenseDeleteResponseError {
  const _$ExpenseDeleteResponseError(this.status, this.message);

  factory _$ExpenseDeleteResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseDeleteResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseDeleteResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseDeleteResponseError &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseDeleteResponseErrorCopyWith<_$ExpenseDeleteResponseError>
      get copyWith => __$$ExpenseDeleteResponseErrorCopyWithImpl<
          _$ExpenseDeleteResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message) SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseDeleteResponseFail value) FAIL,
    required TResult Function(ExpenseDeleteResponseError value) ERROR,
    required TResult Function(ExpenseDeleteResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseDeleteResponseError value)? ERROR,
    TResult Function(ExpenseDeleteResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseDeleteResponseError value)? ERROR,
    TResult Function(ExpenseDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseDeleteResponseErrorToJson(
      this,
    );
  }
}

abstract class ExpenseDeleteResponseError implements ExpenseDeleteResponse {
  const factory ExpenseDeleteResponseError(
          final String status, final String? message) =
      _$ExpenseDeleteResponseError;

  factory ExpenseDeleteResponseError.fromJson(Map<String, dynamic> json) =
      _$ExpenseDeleteResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseDeleteResponseErrorCopyWith<_$ExpenseDeleteResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseDeleteResponseSuccessCopyWith<$Res>
    implements $ExpenseDeleteResponseCopyWith<$Res> {
  factory _$$ExpenseDeleteResponseSuccessCopyWith(
          _$ExpenseDeleteResponseSuccess value,
          $Res Function(_$ExpenseDeleteResponseSuccess) then) =
      __$$ExpenseDeleteResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ExpenseDeleteResponseSuccessCopyWithImpl<$Res>
    extends _$ExpenseDeleteResponseCopyWithImpl<$Res>
    implements _$$ExpenseDeleteResponseSuccessCopyWith<$Res> {
  __$$ExpenseDeleteResponseSuccessCopyWithImpl(
      _$ExpenseDeleteResponseSuccess _value,
      $Res Function(_$ExpenseDeleteResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ExpenseDeleteResponseSuccess));

  @override
  _$ExpenseDeleteResponseSuccess get _value =>
      super._value as _$ExpenseDeleteResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ExpenseDeleteResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseDeleteResponseSuccess implements ExpenseDeleteResponseSuccess {
  const _$ExpenseDeleteResponseSuccess(this.status, this.message);

  factory _$ExpenseDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseDeleteResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExpenseDeleteResponse.SUCCESS(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseDeleteResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExpenseDeleteResponseSuccessCopyWith<_$ExpenseDeleteResponseSuccess>
      get copyWith => __$$ExpenseDeleteResponseSuccessCopyWithImpl<
          _$ExpenseDeleteResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message) SUCCESS,
  }) {
    return SUCCESS(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
  }) {
    return SUCCESS?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseDeleteResponseFail value) FAIL,
    required TResult Function(ExpenseDeleteResponseError value) ERROR,
    required TResult Function(ExpenseDeleteResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpenseDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseDeleteResponseError value)? ERROR,
    TResult Function(ExpenseDeleteResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseDeleteResponseFail value)? FAIL,
    TResult Function(ExpenseDeleteResponseError value)? ERROR,
    TResult Function(ExpenseDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseDeleteResponseSuccessToJson(
      this,
    );
  }
}

abstract class ExpenseDeleteResponseSuccess implements ExpenseDeleteResponse {
  const factory ExpenseDeleteResponseSuccess(
          final String status, final String? message) =
      _$ExpenseDeleteResponseSuccess;

  factory ExpenseDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$ExpenseDeleteResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseDeleteResponseSuccessCopyWith<_$ExpenseDeleteResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
