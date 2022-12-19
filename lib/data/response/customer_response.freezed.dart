// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerListResponse _$CustomerListResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return CustomerListResponseFail.fromJson(json);
    case 'ERROR':
      return CustomerListResponseError.fromJson(json);
    case 'SUCCESS':
      return CustomerListResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'CustomerListResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$CustomerListResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerListResponseFail value) FAIL,
    required TResult Function(CustomerListResponseError value) ERROR,
    required TResult Function(CustomerListResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerListResponseFail value)? FAIL,
    TResult Function(CustomerListResponseError value)? ERROR,
    TResult Function(CustomerListResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerListResponseFail value)? FAIL,
    TResult Function(CustomerListResponseError value)? ERROR,
    TResult Function(CustomerListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerListResponseCopyWith<CustomerListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerListResponseCopyWith<$Res> {
  factory $CustomerListResponseCopyWith(CustomerListResponse value,
          $Res Function(CustomerListResponse) then) =
      _$CustomerListResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$CustomerListResponseCopyWithImpl<$Res>
    implements $CustomerListResponseCopyWith<$Res> {
  _$CustomerListResponseCopyWithImpl(this._value, this._then);

  final CustomerListResponse _value;
  // ignore: unused_field
  final $Res Function(CustomerListResponse) _then;

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
abstract class _$$CustomerListResponseFailCopyWith<$Res>
    implements $CustomerListResponseCopyWith<$Res> {
  factory _$$CustomerListResponseFailCopyWith(_$CustomerListResponseFail value,
          $Res Function(_$CustomerListResponseFail) then) =
      __$$CustomerListResponseFailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Customer> customerList});
}

/// @nodoc
class __$$CustomerListResponseFailCopyWithImpl<$Res>
    extends _$CustomerListResponseCopyWithImpl<$Res>
    implements _$$CustomerListResponseFailCopyWith<$Res> {
  __$$CustomerListResponseFailCopyWithImpl(_$CustomerListResponseFail _value,
      $Res Function(_$CustomerListResponseFail) _then)
      : super(_value, (v) => _then(v as _$CustomerListResponseFail));

  @override
  _$CustomerListResponseFail get _value =>
      super._value as _$CustomerListResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? customerList = freezed,
  }) {
    return _then(_$CustomerListResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      customerList == freezed
          ? _value._customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerListResponseFail implements CustomerListResponseFail {
  const _$CustomerListResponseFail(this.status, this.message,
      @JsonKey(name: "data") final List<Customer> customerList)
      : _customerList = customerList;

  factory _$CustomerListResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$CustomerListResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Customer> _customerList;
  @override
  @JsonKey(name: "data")
  List<Customer> get customerList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerList);
  }

  @override
  String toString() {
    return 'CustomerListResponse.FAIL(status: $status, message: $message, customerList: $customerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerListResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._customerList, _customerList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_customerList));

  @JsonKey(ignore: true)
  @override
  _$$CustomerListResponseFailCopyWith<_$CustomerListResponseFail>
      get copyWith =>
          __$$CustomerListResponseFailCopyWithImpl<_$CustomerListResponseFail>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)
        SUCCESS,
  }) {
    return FAIL(status, message, customerList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message, customerList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message, customerList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerListResponseFail value) FAIL,
    required TResult Function(CustomerListResponseError value) ERROR,
    required TResult Function(CustomerListResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerListResponseFail value)? FAIL,
    TResult Function(CustomerListResponseError value)? ERROR,
    TResult Function(CustomerListResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerListResponseFail value)? FAIL,
    TResult Function(CustomerListResponseError value)? ERROR,
    TResult Function(CustomerListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerListResponseFailToJson(
      this,
    );
  }
}

abstract class CustomerListResponseFail implements CustomerListResponse {
  const factory CustomerListResponseFail(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Customer> customerList) =
      _$CustomerListResponseFail;

  factory CustomerListResponseFail.fromJson(Map<String, dynamic> json) =
      _$CustomerListResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Customer> get customerList;
  @override
  @JsonKey(ignore: true)
  _$$CustomerListResponseFailCopyWith<_$CustomerListResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerListResponseErrorCopyWith<$Res>
    implements $CustomerListResponseCopyWith<$Res> {
  factory _$$CustomerListResponseErrorCopyWith(
          _$CustomerListResponseError value,
          $Res Function(_$CustomerListResponseError) then) =
      __$$CustomerListResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CustomerListResponseErrorCopyWithImpl<$Res>
    extends _$CustomerListResponseCopyWithImpl<$Res>
    implements _$$CustomerListResponseErrorCopyWith<$Res> {
  __$$CustomerListResponseErrorCopyWithImpl(_$CustomerListResponseError _value,
      $Res Function(_$CustomerListResponseError) _then)
      : super(_value, (v) => _then(v as _$CustomerListResponseError));

  @override
  _$CustomerListResponseError get _value =>
      super._value as _$CustomerListResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CustomerListResponseError(
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
class _$CustomerListResponseError implements CustomerListResponseError {
  const _$CustomerListResponseError(this.status, this.message);

  factory _$CustomerListResponseError.fromJson(Map<String, dynamic> json) =>
      _$$CustomerListResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CustomerListResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerListResponseError &&
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
  _$$CustomerListResponseErrorCopyWith<_$CustomerListResponseError>
      get copyWith => __$$CustomerListResponseErrorCopyWithImpl<
          _$CustomerListResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
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
    required TResult Function(CustomerListResponseFail value) FAIL,
    required TResult Function(CustomerListResponseError value) ERROR,
    required TResult Function(CustomerListResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerListResponseFail value)? FAIL,
    TResult Function(CustomerListResponseError value)? ERROR,
    TResult Function(CustomerListResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerListResponseFail value)? FAIL,
    TResult Function(CustomerListResponseError value)? ERROR,
    TResult Function(CustomerListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerListResponseErrorToJson(
      this,
    );
  }
}

abstract class CustomerListResponseError implements CustomerListResponse {
  const factory CustomerListResponseError(
      final String status, final String? message) = _$CustomerListResponseError;

  factory CustomerListResponseError.fromJson(Map<String, dynamic> json) =
      _$CustomerListResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomerListResponseErrorCopyWith<_$CustomerListResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerListResponseSuccessCopyWith<$Res>
    implements $CustomerListResponseCopyWith<$Res> {
  factory _$$CustomerListResponseSuccessCopyWith(
          _$CustomerListResponseSuccess value,
          $Res Function(_$CustomerListResponseSuccess) then) =
      __$$CustomerListResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Customer> customerList});
}

/// @nodoc
class __$$CustomerListResponseSuccessCopyWithImpl<$Res>
    extends _$CustomerListResponseCopyWithImpl<$Res>
    implements _$$CustomerListResponseSuccessCopyWith<$Res> {
  __$$CustomerListResponseSuccessCopyWithImpl(
      _$CustomerListResponseSuccess _value,
      $Res Function(_$CustomerListResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$CustomerListResponseSuccess));

  @override
  _$CustomerListResponseSuccess get _value =>
      super._value as _$CustomerListResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? customerList = freezed,
  }) {
    return _then(_$CustomerListResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      customerList == freezed
          ? _value._customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerListResponseSuccess implements CustomerListResponseSuccess {
  const _$CustomerListResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<Customer> customerList)
      : _customerList = customerList;

  factory _$CustomerListResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$CustomerListResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Customer> _customerList;
  @override
  @JsonKey(name: "data")
  List<Customer> get customerList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerList);
  }

  @override
  String toString() {
    return 'CustomerListResponse.SUCCESS(status: $status, message: $message, customerList: $customerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerListResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._customerList, _customerList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_customerList));

  @JsonKey(ignore: true)
  @override
  _$$CustomerListResponseSuccessCopyWith<_$CustomerListResponseSuccess>
      get copyWith => __$$CustomerListResponseSuccessCopyWithImpl<
          _$CustomerListResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)
        SUCCESS,
  }) {
    return SUCCESS(status, message, customerList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, customerList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Customer> customerList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, customerList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerListResponseFail value) FAIL,
    required TResult Function(CustomerListResponseError value) ERROR,
    required TResult Function(CustomerListResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerListResponseFail value)? FAIL,
    TResult Function(CustomerListResponseError value)? ERROR,
    TResult Function(CustomerListResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerListResponseFail value)? FAIL,
    TResult Function(CustomerListResponseError value)? ERROR,
    TResult Function(CustomerListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerListResponseSuccessToJson(
      this,
    );
  }
}

abstract class CustomerListResponseSuccess implements CustomerListResponse {
  const factory CustomerListResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Customer> customerList) =
      _$CustomerListResponseSuccess;

  factory CustomerListResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$CustomerListResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Customer> get customerList;
  @override
  @JsonKey(ignore: true)
  _$$CustomerListResponseSuccessCopyWith<_$CustomerListResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerAddResponse _$CustomerAddResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return CustomerAddResponseFail.fromJson(json);
    case 'ERROR':
      return CustomerAddResponseError.fromJson(json);
    case 'SUCCESS':
      return CustomerAddResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'CustomerAddResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$CustomerAddResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CustomerItem customer)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CustomerItem customer)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CustomerItem customer)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerAddResponseFail value) FAIL,
    required TResult Function(CustomerAddResponseError value) ERROR,
    required TResult Function(CustomerAddResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerAddResponseFail value)? FAIL,
    TResult Function(CustomerAddResponseError value)? ERROR,
    TResult Function(CustomerAddResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerAddResponseFail value)? FAIL,
    TResult Function(CustomerAddResponseError value)? ERROR,
    TResult Function(CustomerAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAddResponseCopyWith<CustomerAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddResponseCopyWith<$Res> {
  factory $CustomerAddResponseCopyWith(
          CustomerAddResponse value, $Res Function(CustomerAddResponse) then) =
      _$CustomerAddResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$CustomerAddResponseCopyWithImpl<$Res>
    implements $CustomerAddResponseCopyWith<$Res> {
  _$CustomerAddResponseCopyWithImpl(this._value, this._then);

  final CustomerAddResponse _value;
  // ignore: unused_field
  final $Res Function(CustomerAddResponse) _then;

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
abstract class _$$CustomerAddResponseFailCopyWith<$Res>
    implements $CustomerAddResponseCopyWith<$Res> {
  factory _$$CustomerAddResponseFailCopyWith(_$CustomerAddResponseFail value,
          $Res Function(_$CustomerAddResponseFail) then) =
      __$$CustomerAddResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CustomerAddResponseFailCopyWithImpl<$Res>
    extends _$CustomerAddResponseCopyWithImpl<$Res>
    implements _$$CustomerAddResponseFailCopyWith<$Res> {
  __$$CustomerAddResponseFailCopyWithImpl(_$CustomerAddResponseFail _value,
      $Res Function(_$CustomerAddResponseFail) _then)
      : super(_value, (v) => _then(v as _$CustomerAddResponseFail));

  @override
  _$CustomerAddResponseFail get _value =>
      super._value as _$CustomerAddResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CustomerAddResponseFail(
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
class _$CustomerAddResponseFail implements CustomerAddResponseFail {
  const _$CustomerAddResponseFail(this.status, this.message);

  factory _$CustomerAddResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAddResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CustomerAddResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddResponseFail &&
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
  _$$CustomerAddResponseFailCopyWith<_$CustomerAddResponseFail> get copyWith =>
      __$$CustomerAddResponseFailCopyWithImpl<_$CustomerAddResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CustomerItem customer)
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
            @JsonKey(name: "data") CustomerItem customer)?
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
            @JsonKey(name: "data") CustomerItem customer)?
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
    required TResult Function(CustomerAddResponseFail value) FAIL,
    required TResult Function(CustomerAddResponseError value) ERROR,
    required TResult Function(CustomerAddResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerAddResponseFail value)? FAIL,
    TResult Function(CustomerAddResponseError value)? ERROR,
    TResult Function(CustomerAddResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerAddResponseFail value)? FAIL,
    TResult Function(CustomerAddResponseError value)? ERROR,
    TResult Function(CustomerAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAddResponseFailToJson(
      this,
    );
  }
}

abstract class CustomerAddResponseFail implements CustomerAddResponse {
  const factory CustomerAddResponseFail(
      final String status, final String? message) = _$CustomerAddResponseFail;

  factory CustomerAddResponseFail.fromJson(Map<String, dynamic> json) =
      _$CustomerAddResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomerAddResponseFailCopyWith<_$CustomerAddResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerAddResponseErrorCopyWith<$Res>
    implements $CustomerAddResponseCopyWith<$Res> {
  factory _$$CustomerAddResponseErrorCopyWith(_$CustomerAddResponseError value,
          $Res Function(_$CustomerAddResponseError) then) =
      __$$CustomerAddResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CustomerAddResponseErrorCopyWithImpl<$Res>
    extends _$CustomerAddResponseCopyWithImpl<$Res>
    implements _$$CustomerAddResponseErrorCopyWith<$Res> {
  __$$CustomerAddResponseErrorCopyWithImpl(_$CustomerAddResponseError _value,
      $Res Function(_$CustomerAddResponseError) _then)
      : super(_value, (v) => _then(v as _$CustomerAddResponseError));

  @override
  _$CustomerAddResponseError get _value =>
      super._value as _$CustomerAddResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CustomerAddResponseError(
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
class _$CustomerAddResponseError implements CustomerAddResponseError {
  const _$CustomerAddResponseError(this.status, this.message);

  factory _$CustomerAddResponseError.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAddResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CustomerAddResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddResponseError &&
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
  _$$CustomerAddResponseErrorCopyWith<_$CustomerAddResponseError>
      get copyWith =>
          __$$CustomerAddResponseErrorCopyWithImpl<_$CustomerAddResponseError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CustomerItem customer)
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
            @JsonKey(name: "data") CustomerItem customer)?
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
            @JsonKey(name: "data") CustomerItem customer)?
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
    required TResult Function(CustomerAddResponseFail value) FAIL,
    required TResult Function(CustomerAddResponseError value) ERROR,
    required TResult Function(CustomerAddResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerAddResponseFail value)? FAIL,
    TResult Function(CustomerAddResponseError value)? ERROR,
    TResult Function(CustomerAddResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerAddResponseFail value)? FAIL,
    TResult Function(CustomerAddResponseError value)? ERROR,
    TResult Function(CustomerAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAddResponseErrorToJson(
      this,
    );
  }
}

abstract class CustomerAddResponseError implements CustomerAddResponse {
  const factory CustomerAddResponseError(
      final String status, final String? message) = _$CustomerAddResponseError;

  factory CustomerAddResponseError.fromJson(Map<String, dynamic> json) =
      _$CustomerAddResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomerAddResponseErrorCopyWith<_$CustomerAddResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerAddResponseSuccessCopyWith<$Res>
    implements $CustomerAddResponseCopyWith<$Res> {
  factory _$$CustomerAddResponseSuccessCopyWith(
          _$CustomerAddResponseSuccess value,
          $Res Function(_$CustomerAddResponseSuccess) then) =
      __$$CustomerAddResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") CustomerItem customer});

  $CustomerItemCopyWith<$Res> get customer;
}

/// @nodoc
class __$$CustomerAddResponseSuccessCopyWithImpl<$Res>
    extends _$CustomerAddResponseCopyWithImpl<$Res>
    implements _$$CustomerAddResponseSuccessCopyWith<$Res> {
  __$$CustomerAddResponseSuccessCopyWithImpl(
      _$CustomerAddResponseSuccess _value,
      $Res Function(_$CustomerAddResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$CustomerAddResponseSuccess));

  @override
  _$CustomerAddResponseSuccess get _value =>
      super._value as _$CustomerAddResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? customer = freezed,
  }) {
    return _then(_$CustomerAddResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerItem,
    ));
  }

  @override
  $CustomerItemCopyWith<$Res> get customer {
    return $CustomerItemCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerAddResponseSuccess implements CustomerAddResponseSuccess {
  const _$CustomerAddResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.customer);

  factory _$CustomerAddResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAddResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final CustomerItem customer;

  @override
  String toString() {
    return 'CustomerAddResponse.SUCCESS(status: $status, message: $message, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.customer, customer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(customer));

  @JsonKey(ignore: true)
  @override
  _$$CustomerAddResponseSuccessCopyWith<_$CustomerAddResponseSuccess>
      get copyWith => __$$CustomerAddResponseSuccessCopyWithImpl<
          _$CustomerAddResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CustomerItem customer)
        SUCCESS,
  }) {
    return SUCCESS(status, message, customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CustomerItem customer)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CustomerItem customer)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerAddResponseFail value) FAIL,
    required TResult Function(CustomerAddResponseError value) ERROR,
    required TResult Function(CustomerAddResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerAddResponseFail value)? FAIL,
    TResult Function(CustomerAddResponseError value)? ERROR,
    TResult Function(CustomerAddResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerAddResponseFail value)? FAIL,
    TResult Function(CustomerAddResponseError value)? ERROR,
    TResult Function(CustomerAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAddResponseSuccessToJson(
      this,
    );
  }
}

abstract class CustomerAddResponseSuccess implements CustomerAddResponse {
  const factory CustomerAddResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final CustomerItem customer) =
      _$CustomerAddResponseSuccess;

  factory CustomerAddResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$CustomerAddResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  CustomerItem get customer;
  @override
  @JsonKey(ignore: true)
  _$$CustomerAddResponseSuccessCopyWith<_$CustomerAddResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerDeleteResponse _$CustomerDeleteResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return CustomerDeleteResponseFail.fromJson(json);
    case 'ERROR':
      return CustomerDeleteResponseError.fromJson(json);
    case 'SUCCESS':
      return CustomerDeleteResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'CustomerDeleteResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$CustomerDeleteResponse {
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
    required TResult Function(CustomerDeleteResponseFail value) FAIL,
    required TResult Function(CustomerDeleteResponseError value) ERROR,
    required TResult Function(CustomerDeleteResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDeleteResponseFail value)? FAIL,
    TResult Function(CustomerDeleteResponseError value)? ERROR,
    TResult Function(CustomerDeleteResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDeleteResponseFail value)? FAIL,
    TResult Function(CustomerDeleteResponseError value)? ERROR,
    TResult Function(CustomerDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDeleteResponseCopyWith<CustomerDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDeleteResponseCopyWith<$Res> {
  factory $CustomerDeleteResponseCopyWith(CustomerDeleteResponse value,
          $Res Function(CustomerDeleteResponse) then) =
      _$CustomerDeleteResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$CustomerDeleteResponseCopyWithImpl<$Res>
    implements $CustomerDeleteResponseCopyWith<$Res> {
  _$CustomerDeleteResponseCopyWithImpl(this._value, this._then);

  final CustomerDeleteResponse _value;
  // ignore: unused_field
  final $Res Function(CustomerDeleteResponse) _then;

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
abstract class _$$CustomerDeleteResponseFailCopyWith<$Res>
    implements $CustomerDeleteResponseCopyWith<$Res> {
  factory _$$CustomerDeleteResponseFailCopyWith(
          _$CustomerDeleteResponseFail value,
          $Res Function(_$CustomerDeleteResponseFail) then) =
      __$$CustomerDeleteResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CustomerDeleteResponseFailCopyWithImpl<$Res>
    extends _$CustomerDeleteResponseCopyWithImpl<$Res>
    implements _$$CustomerDeleteResponseFailCopyWith<$Res> {
  __$$CustomerDeleteResponseFailCopyWithImpl(
      _$CustomerDeleteResponseFail _value,
      $Res Function(_$CustomerDeleteResponseFail) _then)
      : super(_value, (v) => _then(v as _$CustomerDeleteResponseFail));

  @override
  _$CustomerDeleteResponseFail get _value =>
      super._value as _$CustomerDeleteResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CustomerDeleteResponseFail(
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
class _$CustomerDeleteResponseFail implements CustomerDeleteResponseFail {
  const _$CustomerDeleteResponseFail(this.status, this.message);

  factory _$CustomerDeleteResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDeleteResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CustomerDeleteResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDeleteResponseFail &&
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
  _$$CustomerDeleteResponseFailCopyWith<_$CustomerDeleteResponseFail>
      get copyWith => __$$CustomerDeleteResponseFailCopyWithImpl<
          _$CustomerDeleteResponseFail>(this, _$identity);

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
    required TResult Function(CustomerDeleteResponseFail value) FAIL,
    required TResult Function(CustomerDeleteResponseError value) ERROR,
    required TResult Function(CustomerDeleteResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDeleteResponseFail value)? FAIL,
    TResult Function(CustomerDeleteResponseError value)? ERROR,
    TResult Function(CustomerDeleteResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDeleteResponseFail value)? FAIL,
    TResult Function(CustomerDeleteResponseError value)? ERROR,
    TResult Function(CustomerDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDeleteResponseFailToJson(
      this,
    );
  }
}

abstract class CustomerDeleteResponseFail implements CustomerDeleteResponse {
  const factory CustomerDeleteResponseFail(
          final String status, final String? message) =
      _$CustomerDeleteResponseFail;

  factory CustomerDeleteResponseFail.fromJson(Map<String, dynamic> json) =
      _$CustomerDeleteResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomerDeleteResponseFailCopyWith<_$CustomerDeleteResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerDeleteResponseErrorCopyWith<$Res>
    implements $CustomerDeleteResponseCopyWith<$Res> {
  factory _$$CustomerDeleteResponseErrorCopyWith(
          _$CustomerDeleteResponseError value,
          $Res Function(_$CustomerDeleteResponseError) then) =
      __$$CustomerDeleteResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CustomerDeleteResponseErrorCopyWithImpl<$Res>
    extends _$CustomerDeleteResponseCopyWithImpl<$Res>
    implements _$$CustomerDeleteResponseErrorCopyWith<$Res> {
  __$$CustomerDeleteResponseErrorCopyWithImpl(
      _$CustomerDeleteResponseError _value,
      $Res Function(_$CustomerDeleteResponseError) _then)
      : super(_value, (v) => _then(v as _$CustomerDeleteResponseError));

  @override
  _$CustomerDeleteResponseError get _value =>
      super._value as _$CustomerDeleteResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CustomerDeleteResponseError(
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
class _$CustomerDeleteResponseError implements CustomerDeleteResponseError {
  const _$CustomerDeleteResponseError(this.status, this.message);

  factory _$CustomerDeleteResponseError.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDeleteResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CustomerDeleteResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDeleteResponseError &&
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
  _$$CustomerDeleteResponseErrorCopyWith<_$CustomerDeleteResponseError>
      get copyWith => __$$CustomerDeleteResponseErrorCopyWithImpl<
          _$CustomerDeleteResponseError>(this, _$identity);

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
    required TResult Function(CustomerDeleteResponseFail value) FAIL,
    required TResult Function(CustomerDeleteResponseError value) ERROR,
    required TResult Function(CustomerDeleteResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDeleteResponseFail value)? FAIL,
    TResult Function(CustomerDeleteResponseError value)? ERROR,
    TResult Function(CustomerDeleteResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDeleteResponseFail value)? FAIL,
    TResult Function(CustomerDeleteResponseError value)? ERROR,
    TResult Function(CustomerDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDeleteResponseErrorToJson(
      this,
    );
  }
}

abstract class CustomerDeleteResponseError implements CustomerDeleteResponse {
  const factory CustomerDeleteResponseError(
          final String status, final String? message) =
      _$CustomerDeleteResponseError;

  factory CustomerDeleteResponseError.fromJson(Map<String, dynamic> json) =
      _$CustomerDeleteResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomerDeleteResponseErrorCopyWith<_$CustomerDeleteResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerDeleteResponseSuccessCopyWith<$Res>
    implements $CustomerDeleteResponseCopyWith<$Res> {
  factory _$$CustomerDeleteResponseSuccessCopyWith(
          _$CustomerDeleteResponseSuccess value,
          $Res Function(_$CustomerDeleteResponseSuccess) then) =
      __$$CustomerDeleteResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CustomerDeleteResponseSuccessCopyWithImpl<$Res>
    extends _$CustomerDeleteResponseCopyWithImpl<$Res>
    implements _$$CustomerDeleteResponseSuccessCopyWith<$Res> {
  __$$CustomerDeleteResponseSuccessCopyWithImpl(
      _$CustomerDeleteResponseSuccess _value,
      $Res Function(_$CustomerDeleteResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$CustomerDeleteResponseSuccess));

  @override
  _$CustomerDeleteResponseSuccess get _value =>
      super._value as _$CustomerDeleteResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CustomerDeleteResponseSuccess(
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
class _$CustomerDeleteResponseSuccess implements CustomerDeleteResponseSuccess {
  const _$CustomerDeleteResponseSuccess(this.status, this.message);

  factory _$CustomerDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDeleteResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CustomerDeleteResponse.SUCCESS(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDeleteResponseSuccess &&
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
  _$$CustomerDeleteResponseSuccessCopyWith<_$CustomerDeleteResponseSuccess>
      get copyWith => __$$CustomerDeleteResponseSuccessCopyWithImpl<
          _$CustomerDeleteResponseSuccess>(this, _$identity);

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
    required TResult Function(CustomerDeleteResponseFail value) FAIL,
    required TResult Function(CustomerDeleteResponseError value) ERROR,
    required TResult Function(CustomerDeleteResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerDeleteResponseFail value)? FAIL,
    TResult Function(CustomerDeleteResponseError value)? ERROR,
    TResult Function(CustomerDeleteResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerDeleteResponseFail value)? FAIL,
    TResult Function(CustomerDeleteResponseError value)? ERROR,
    TResult Function(CustomerDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDeleteResponseSuccessToJson(
      this,
    );
  }
}

abstract class CustomerDeleteResponseSuccess implements CustomerDeleteResponse {
  const factory CustomerDeleteResponseSuccess(
          final String status, final String? message) =
      _$CustomerDeleteResponseSuccess;

  factory CustomerDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$CustomerDeleteResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomerDeleteResponseSuccessCopyWith<_$CustomerDeleteResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
