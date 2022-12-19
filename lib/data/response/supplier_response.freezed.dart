// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplier_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplierListResponse _$SupplierListResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return SupplierListResponseFail.fromJson(json);
    case 'ERROR':
      return SupplierListResponseError.fromJson(json);
    case 'SUCCESS':
      return SupplierListResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'SupplierListResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$SupplierListResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupplierListResponseFail value) FAIL,
    required TResult Function(SupplierListResponseError value) ERROR,
    required TResult Function(SupplierListResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierListResponseFail value)? FAIL,
    TResult Function(SupplierListResponseError value)? ERROR,
    TResult Function(SupplierListResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierListResponseFail value)? FAIL,
    TResult Function(SupplierListResponseError value)? ERROR,
    TResult Function(SupplierListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierListResponseCopyWith<SupplierListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierListResponseCopyWith<$Res> {
  factory $SupplierListResponseCopyWith(SupplierListResponse value,
          $Res Function(SupplierListResponse) then) =
      _$SupplierListResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$SupplierListResponseCopyWithImpl<$Res>
    implements $SupplierListResponseCopyWith<$Res> {
  _$SupplierListResponseCopyWithImpl(this._value, this._then);

  final SupplierListResponse _value;
  // ignore: unused_field
  final $Res Function(SupplierListResponse) _then;

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
abstract class _$$SupplierListResponseFailCopyWith<$Res>
    implements $SupplierListResponseCopyWith<$Res> {
  factory _$$SupplierListResponseFailCopyWith(_$SupplierListResponseFail value,
          $Res Function(_$SupplierListResponseFail) then) =
      __$$SupplierListResponseFailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Supplier> supplierList});
}

/// @nodoc
class __$$SupplierListResponseFailCopyWithImpl<$Res>
    extends _$SupplierListResponseCopyWithImpl<$Res>
    implements _$$SupplierListResponseFailCopyWith<$Res> {
  __$$SupplierListResponseFailCopyWithImpl(_$SupplierListResponseFail _value,
      $Res Function(_$SupplierListResponseFail) _then)
      : super(_value, (v) => _then(v as _$SupplierListResponseFail));

  @override
  _$SupplierListResponseFail get _value =>
      super._value as _$SupplierListResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? supplierList = freezed,
  }) {
    return _then(_$SupplierListResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierList == freezed
          ? _value._supplierList
          : supplierList // ignore: cast_nullable_to_non_nullable
              as List<Supplier>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierListResponseFail implements SupplierListResponseFail {
  const _$SupplierListResponseFail(this.status, this.message,
      @JsonKey(name: "data") final List<Supplier> supplierList)
      : _supplierList = supplierList;

  factory _$SupplierListResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$SupplierListResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Supplier> _supplierList;
  @override
  @JsonKey(name: "data")
  List<Supplier> get supplierList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplierList);
  }

  @override
  String toString() {
    return 'SupplierListResponse.FAIL(status: $status, message: $message, supplierList: $supplierList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierListResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._supplierList, _supplierList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_supplierList));

  @JsonKey(ignore: true)
  @override
  _$$SupplierListResponseFailCopyWith<_$SupplierListResponseFail>
      get copyWith =>
          __$$SupplierListResponseFailCopyWithImpl<_$SupplierListResponseFail>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)
        SUCCESS,
  }) {
    return FAIL(status, message, supplierList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message, supplierList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message, supplierList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupplierListResponseFail value) FAIL,
    required TResult Function(SupplierListResponseError value) ERROR,
    required TResult Function(SupplierListResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierListResponseFail value)? FAIL,
    TResult Function(SupplierListResponseError value)? ERROR,
    TResult Function(SupplierListResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierListResponseFail value)? FAIL,
    TResult Function(SupplierListResponseError value)? ERROR,
    TResult Function(SupplierListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierListResponseFailToJson(
      this,
    );
  }
}

abstract class SupplierListResponseFail implements SupplierListResponse {
  const factory SupplierListResponseFail(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Supplier> supplierList) =
      _$SupplierListResponseFail;

  factory SupplierListResponseFail.fromJson(Map<String, dynamic> json) =
      _$SupplierListResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Supplier> get supplierList;
  @override
  @JsonKey(ignore: true)
  _$$SupplierListResponseFailCopyWith<_$SupplierListResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupplierListResponseErrorCopyWith<$Res>
    implements $SupplierListResponseCopyWith<$Res> {
  factory _$$SupplierListResponseErrorCopyWith(
          _$SupplierListResponseError value,
          $Res Function(_$SupplierListResponseError) then) =
      __$$SupplierListResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SupplierListResponseErrorCopyWithImpl<$Res>
    extends _$SupplierListResponseCopyWithImpl<$Res>
    implements _$$SupplierListResponseErrorCopyWith<$Res> {
  __$$SupplierListResponseErrorCopyWithImpl(_$SupplierListResponseError _value,
      $Res Function(_$SupplierListResponseError) _then)
      : super(_value, (v) => _then(v as _$SupplierListResponseError));

  @override
  _$SupplierListResponseError get _value =>
      super._value as _$SupplierListResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SupplierListResponseError(
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
class _$SupplierListResponseError implements SupplierListResponseError {
  const _$SupplierListResponseError(this.status, this.message);

  factory _$SupplierListResponseError.fromJson(Map<String, dynamic> json) =>
      _$$SupplierListResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SupplierListResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierListResponseError &&
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
  _$$SupplierListResponseErrorCopyWith<_$SupplierListResponseError>
      get copyWith => __$$SupplierListResponseErrorCopyWithImpl<
          _$SupplierListResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
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
    required TResult Function(SupplierListResponseFail value) FAIL,
    required TResult Function(SupplierListResponseError value) ERROR,
    required TResult Function(SupplierListResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierListResponseFail value)? FAIL,
    TResult Function(SupplierListResponseError value)? ERROR,
    TResult Function(SupplierListResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierListResponseFail value)? FAIL,
    TResult Function(SupplierListResponseError value)? ERROR,
    TResult Function(SupplierListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierListResponseErrorToJson(
      this,
    );
  }
}

abstract class SupplierListResponseError implements SupplierListResponse {
  const factory SupplierListResponseError(
      final String status, final String? message) = _$SupplierListResponseError;

  factory SupplierListResponseError.fromJson(Map<String, dynamic> json) =
      _$SupplierListResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SupplierListResponseErrorCopyWith<_$SupplierListResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupplierListResponseSuccessCopyWith<$Res>
    implements $SupplierListResponseCopyWith<$Res> {
  factory _$$SupplierListResponseSuccessCopyWith(
          _$SupplierListResponseSuccess value,
          $Res Function(_$SupplierListResponseSuccess) then) =
      __$$SupplierListResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Supplier> supplierList});
}

/// @nodoc
class __$$SupplierListResponseSuccessCopyWithImpl<$Res>
    extends _$SupplierListResponseCopyWithImpl<$Res>
    implements _$$SupplierListResponseSuccessCopyWith<$Res> {
  __$$SupplierListResponseSuccessCopyWithImpl(
      _$SupplierListResponseSuccess _value,
      $Res Function(_$SupplierListResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$SupplierListResponseSuccess));

  @override
  _$SupplierListResponseSuccess get _value =>
      super._value as _$SupplierListResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? supplierList = freezed,
  }) {
    return _then(_$SupplierListResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierList == freezed
          ? _value._supplierList
          : supplierList // ignore: cast_nullable_to_non_nullable
              as List<Supplier>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierListResponseSuccess implements SupplierListResponseSuccess {
  const _$SupplierListResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<Supplier> supplierList)
      : _supplierList = supplierList;

  factory _$SupplierListResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$SupplierListResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Supplier> _supplierList;
  @override
  @JsonKey(name: "data")
  List<Supplier> get supplierList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplierList);
  }

  @override
  String toString() {
    return 'SupplierListResponse.SUCCESS(status: $status, message: $message, supplierList: $supplierList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierListResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._supplierList, _supplierList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_supplierList));

  @JsonKey(ignore: true)
  @override
  _$$SupplierListResponseSuccessCopyWith<_$SupplierListResponseSuccess>
      get copyWith => __$$SupplierListResponseSuccessCopyWithImpl<
          _$SupplierListResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)
        SUCCESS,
  }) {
    return SUCCESS(status, message, supplierList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, supplierList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Supplier> supplierList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, supplierList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupplierListResponseFail value) FAIL,
    required TResult Function(SupplierListResponseError value) ERROR,
    required TResult Function(SupplierListResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierListResponseFail value)? FAIL,
    TResult Function(SupplierListResponseError value)? ERROR,
    TResult Function(SupplierListResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierListResponseFail value)? FAIL,
    TResult Function(SupplierListResponseError value)? ERROR,
    TResult Function(SupplierListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierListResponseSuccessToJson(
      this,
    );
  }
}

abstract class SupplierListResponseSuccess implements SupplierListResponse {
  const factory SupplierListResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Supplier> supplierList) =
      _$SupplierListResponseSuccess;

  factory SupplierListResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$SupplierListResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Supplier> get supplierList;
  @override
  @JsonKey(ignore: true)
  _$$SupplierListResponseSuccessCopyWith<_$SupplierListResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

SupplierAddResponse _$SupplierAddResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return SupplierAddResponseFail.fromJson(json);
    case 'ERROR':
      return SupplierAddResponseError.fromJson(json);
    case 'SUCCESS':
      return SupplierAddResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'SupplierAddResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$SupplierAddResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") SupplierItem supplier)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") SupplierItem supplier)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") SupplierItem supplier)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupplierAddResponseFail value) FAIL,
    required TResult Function(SupplierAddResponseError value) ERROR,
    required TResult Function(SupplierAddResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierAddResponseFail value)? FAIL,
    TResult Function(SupplierAddResponseError value)? ERROR,
    TResult Function(SupplierAddResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierAddResponseFail value)? FAIL,
    TResult Function(SupplierAddResponseError value)? ERROR,
    TResult Function(SupplierAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierAddResponseCopyWith<SupplierAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierAddResponseCopyWith<$Res> {
  factory $SupplierAddResponseCopyWith(
          SupplierAddResponse value, $Res Function(SupplierAddResponse) then) =
      _$SupplierAddResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$SupplierAddResponseCopyWithImpl<$Res>
    implements $SupplierAddResponseCopyWith<$Res> {
  _$SupplierAddResponseCopyWithImpl(this._value, this._then);

  final SupplierAddResponse _value;
  // ignore: unused_field
  final $Res Function(SupplierAddResponse) _then;

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
abstract class _$$SupplierAddResponseFailCopyWith<$Res>
    implements $SupplierAddResponseCopyWith<$Res> {
  factory _$$SupplierAddResponseFailCopyWith(_$SupplierAddResponseFail value,
          $Res Function(_$SupplierAddResponseFail) then) =
      __$$SupplierAddResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SupplierAddResponseFailCopyWithImpl<$Res>
    extends _$SupplierAddResponseCopyWithImpl<$Res>
    implements _$$SupplierAddResponseFailCopyWith<$Res> {
  __$$SupplierAddResponseFailCopyWithImpl(_$SupplierAddResponseFail _value,
      $Res Function(_$SupplierAddResponseFail) _then)
      : super(_value, (v) => _then(v as _$SupplierAddResponseFail));

  @override
  _$SupplierAddResponseFail get _value =>
      super._value as _$SupplierAddResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SupplierAddResponseFail(
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
class _$SupplierAddResponseFail implements SupplierAddResponseFail {
  const _$SupplierAddResponseFail(this.status, this.message);

  factory _$SupplierAddResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$SupplierAddResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SupplierAddResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierAddResponseFail &&
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
  _$$SupplierAddResponseFailCopyWith<_$SupplierAddResponseFail> get copyWith =>
      __$$SupplierAddResponseFailCopyWithImpl<_$SupplierAddResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") SupplierItem supplier)
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
            @JsonKey(name: "data") SupplierItem supplier)?
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
            @JsonKey(name: "data") SupplierItem supplier)?
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
    required TResult Function(SupplierAddResponseFail value) FAIL,
    required TResult Function(SupplierAddResponseError value) ERROR,
    required TResult Function(SupplierAddResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierAddResponseFail value)? FAIL,
    TResult Function(SupplierAddResponseError value)? ERROR,
    TResult Function(SupplierAddResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierAddResponseFail value)? FAIL,
    TResult Function(SupplierAddResponseError value)? ERROR,
    TResult Function(SupplierAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierAddResponseFailToJson(
      this,
    );
  }
}

abstract class SupplierAddResponseFail implements SupplierAddResponse {
  const factory SupplierAddResponseFail(
      final String status, final String? message) = _$SupplierAddResponseFail;

  factory SupplierAddResponseFail.fromJson(Map<String, dynamic> json) =
      _$SupplierAddResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SupplierAddResponseFailCopyWith<_$SupplierAddResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupplierAddResponseErrorCopyWith<$Res>
    implements $SupplierAddResponseCopyWith<$Res> {
  factory _$$SupplierAddResponseErrorCopyWith(_$SupplierAddResponseError value,
          $Res Function(_$SupplierAddResponseError) then) =
      __$$SupplierAddResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SupplierAddResponseErrorCopyWithImpl<$Res>
    extends _$SupplierAddResponseCopyWithImpl<$Res>
    implements _$$SupplierAddResponseErrorCopyWith<$Res> {
  __$$SupplierAddResponseErrorCopyWithImpl(_$SupplierAddResponseError _value,
      $Res Function(_$SupplierAddResponseError) _then)
      : super(_value, (v) => _then(v as _$SupplierAddResponseError));

  @override
  _$SupplierAddResponseError get _value =>
      super._value as _$SupplierAddResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SupplierAddResponseError(
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
class _$SupplierAddResponseError implements SupplierAddResponseError {
  const _$SupplierAddResponseError(this.status, this.message);

  factory _$SupplierAddResponseError.fromJson(Map<String, dynamic> json) =>
      _$$SupplierAddResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SupplierAddResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierAddResponseError &&
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
  _$$SupplierAddResponseErrorCopyWith<_$SupplierAddResponseError>
      get copyWith =>
          __$$SupplierAddResponseErrorCopyWithImpl<_$SupplierAddResponseError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") SupplierItem supplier)
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
            @JsonKey(name: "data") SupplierItem supplier)?
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
            @JsonKey(name: "data") SupplierItem supplier)?
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
    required TResult Function(SupplierAddResponseFail value) FAIL,
    required TResult Function(SupplierAddResponseError value) ERROR,
    required TResult Function(SupplierAddResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierAddResponseFail value)? FAIL,
    TResult Function(SupplierAddResponseError value)? ERROR,
    TResult Function(SupplierAddResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierAddResponseFail value)? FAIL,
    TResult Function(SupplierAddResponseError value)? ERROR,
    TResult Function(SupplierAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierAddResponseErrorToJson(
      this,
    );
  }
}

abstract class SupplierAddResponseError implements SupplierAddResponse {
  const factory SupplierAddResponseError(
      final String status, final String? message) = _$SupplierAddResponseError;

  factory SupplierAddResponseError.fromJson(Map<String, dynamic> json) =
      _$SupplierAddResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SupplierAddResponseErrorCopyWith<_$SupplierAddResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupplierAddResponseSuccessCopyWith<$Res>
    implements $SupplierAddResponseCopyWith<$Res> {
  factory _$$SupplierAddResponseSuccessCopyWith(
          _$SupplierAddResponseSuccess value,
          $Res Function(_$SupplierAddResponseSuccess) then) =
      __$$SupplierAddResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") SupplierItem supplier});

  $SupplierItemCopyWith<$Res> get supplier;
}

/// @nodoc
class __$$SupplierAddResponseSuccessCopyWithImpl<$Res>
    extends _$SupplierAddResponseCopyWithImpl<$Res>
    implements _$$SupplierAddResponseSuccessCopyWith<$Res> {
  __$$SupplierAddResponseSuccessCopyWithImpl(
      _$SupplierAddResponseSuccess _value,
      $Res Function(_$SupplierAddResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$SupplierAddResponseSuccess));

  @override
  _$SupplierAddResponseSuccess get _value =>
      super._value as _$SupplierAddResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? supplier = freezed,
  }) {
    return _then(_$SupplierAddResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      supplier == freezed
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SupplierItem,
    ));
  }

  @override
  $SupplierItemCopyWith<$Res> get supplier {
    return $SupplierItemCopyWith<$Res>(_value.supplier, (value) {
      return _then(_value.copyWith(supplier: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierAddResponseSuccess implements SupplierAddResponseSuccess {
  const _$SupplierAddResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.supplier);

  factory _$SupplierAddResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$SupplierAddResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final SupplierItem supplier;

  @override
  String toString() {
    return 'SupplierAddResponse.SUCCESS(status: $status, message: $message, supplier: $supplier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierAddResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.supplier, supplier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(supplier));

  @JsonKey(ignore: true)
  @override
  _$$SupplierAddResponseSuccessCopyWith<_$SupplierAddResponseSuccess>
      get copyWith => __$$SupplierAddResponseSuccessCopyWithImpl<
          _$SupplierAddResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") SupplierItem supplier)
        SUCCESS,
  }) {
    return SUCCESS(status, message, supplier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") SupplierItem supplier)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, supplier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") SupplierItem supplier)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, supplier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupplierAddResponseFail value) FAIL,
    required TResult Function(SupplierAddResponseError value) ERROR,
    required TResult Function(SupplierAddResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierAddResponseFail value)? FAIL,
    TResult Function(SupplierAddResponseError value)? ERROR,
    TResult Function(SupplierAddResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierAddResponseFail value)? FAIL,
    TResult Function(SupplierAddResponseError value)? ERROR,
    TResult Function(SupplierAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierAddResponseSuccessToJson(
      this,
    );
  }
}

abstract class SupplierAddResponseSuccess implements SupplierAddResponse {
  const factory SupplierAddResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final SupplierItem supplier) =
      _$SupplierAddResponseSuccess;

  factory SupplierAddResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$SupplierAddResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  SupplierItem get supplier;
  @override
  @JsonKey(ignore: true)
  _$$SupplierAddResponseSuccessCopyWith<_$SupplierAddResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

SupplierDeleteResponse _$SupplierDeleteResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return SupplierDeleteResponseFail.fromJson(json);
    case 'ERROR':
      return SupplierDeleteResponseError.fromJson(json);
    case 'SUCCESS':
      return SupplierDeleteResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'SupplierDeleteResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$SupplierDeleteResponse {
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
    required TResult Function(SupplierDeleteResponseFail value) FAIL,
    required TResult Function(SupplierDeleteResponseError value) ERROR,
    required TResult Function(SupplierDeleteResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierDeleteResponseFail value)? FAIL,
    TResult Function(SupplierDeleteResponseError value)? ERROR,
    TResult Function(SupplierDeleteResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierDeleteResponseFail value)? FAIL,
    TResult Function(SupplierDeleteResponseError value)? ERROR,
    TResult Function(SupplierDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierDeleteResponseCopyWith<SupplierDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierDeleteResponseCopyWith<$Res> {
  factory $SupplierDeleteResponseCopyWith(SupplierDeleteResponse value,
          $Res Function(SupplierDeleteResponse) then) =
      _$SupplierDeleteResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$SupplierDeleteResponseCopyWithImpl<$Res>
    implements $SupplierDeleteResponseCopyWith<$Res> {
  _$SupplierDeleteResponseCopyWithImpl(this._value, this._then);

  final SupplierDeleteResponse _value;
  // ignore: unused_field
  final $Res Function(SupplierDeleteResponse) _then;

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
abstract class _$$SupplierDeleteResponseFailCopyWith<$Res>
    implements $SupplierDeleteResponseCopyWith<$Res> {
  factory _$$SupplierDeleteResponseFailCopyWith(
          _$SupplierDeleteResponseFail value,
          $Res Function(_$SupplierDeleteResponseFail) then) =
      __$$SupplierDeleteResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SupplierDeleteResponseFailCopyWithImpl<$Res>
    extends _$SupplierDeleteResponseCopyWithImpl<$Res>
    implements _$$SupplierDeleteResponseFailCopyWith<$Res> {
  __$$SupplierDeleteResponseFailCopyWithImpl(
      _$SupplierDeleteResponseFail _value,
      $Res Function(_$SupplierDeleteResponseFail) _then)
      : super(_value, (v) => _then(v as _$SupplierDeleteResponseFail));

  @override
  _$SupplierDeleteResponseFail get _value =>
      super._value as _$SupplierDeleteResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SupplierDeleteResponseFail(
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
class _$SupplierDeleteResponseFail implements SupplierDeleteResponseFail {
  const _$SupplierDeleteResponseFail(this.status, this.message);

  factory _$SupplierDeleteResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$SupplierDeleteResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SupplierDeleteResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierDeleteResponseFail &&
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
  _$$SupplierDeleteResponseFailCopyWith<_$SupplierDeleteResponseFail>
      get copyWith => __$$SupplierDeleteResponseFailCopyWithImpl<
          _$SupplierDeleteResponseFail>(this, _$identity);

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
    required TResult Function(SupplierDeleteResponseFail value) FAIL,
    required TResult Function(SupplierDeleteResponseError value) ERROR,
    required TResult Function(SupplierDeleteResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierDeleteResponseFail value)? FAIL,
    TResult Function(SupplierDeleteResponseError value)? ERROR,
    TResult Function(SupplierDeleteResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierDeleteResponseFail value)? FAIL,
    TResult Function(SupplierDeleteResponseError value)? ERROR,
    TResult Function(SupplierDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierDeleteResponseFailToJson(
      this,
    );
  }
}

abstract class SupplierDeleteResponseFail implements SupplierDeleteResponse {
  const factory SupplierDeleteResponseFail(
          final String status, final String? message) =
      _$SupplierDeleteResponseFail;

  factory SupplierDeleteResponseFail.fromJson(Map<String, dynamic> json) =
      _$SupplierDeleteResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SupplierDeleteResponseFailCopyWith<_$SupplierDeleteResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupplierDeleteResponseErrorCopyWith<$Res>
    implements $SupplierDeleteResponseCopyWith<$Res> {
  factory _$$SupplierDeleteResponseErrorCopyWith(
          _$SupplierDeleteResponseError value,
          $Res Function(_$SupplierDeleteResponseError) then) =
      __$$SupplierDeleteResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SupplierDeleteResponseErrorCopyWithImpl<$Res>
    extends _$SupplierDeleteResponseCopyWithImpl<$Res>
    implements _$$SupplierDeleteResponseErrorCopyWith<$Res> {
  __$$SupplierDeleteResponseErrorCopyWithImpl(
      _$SupplierDeleteResponseError _value,
      $Res Function(_$SupplierDeleteResponseError) _then)
      : super(_value, (v) => _then(v as _$SupplierDeleteResponseError));

  @override
  _$SupplierDeleteResponseError get _value =>
      super._value as _$SupplierDeleteResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SupplierDeleteResponseError(
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
class _$SupplierDeleteResponseError implements SupplierDeleteResponseError {
  const _$SupplierDeleteResponseError(this.status, this.message);

  factory _$SupplierDeleteResponseError.fromJson(Map<String, dynamic> json) =>
      _$$SupplierDeleteResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SupplierDeleteResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierDeleteResponseError &&
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
  _$$SupplierDeleteResponseErrorCopyWith<_$SupplierDeleteResponseError>
      get copyWith => __$$SupplierDeleteResponseErrorCopyWithImpl<
          _$SupplierDeleteResponseError>(this, _$identity);

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
    required TResult Function(SupplierDeleteResponseFail value) FAIL,
    required TResult Function(SupplierDeleteResponseError value) ERROR,
    required TResult Function(SupplierDeleteResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierDeleteResponseFail value)? FAIL,
    TResult Function(SupplierDeleteResponseError value)? ERROR,
    TResult Function(SupplierDeleteResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierDeleteResponseFail value)? FAIL,
    TResult Function(SupplierDeleteResponseError value)? ERROR,
    TResult Function(SupplierDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierDeleteResponseErrorToJson(
      this,
    );
  }
}

abstract class SupplierDeleteResponseError implements SupplierDeleteResponse {
  const factory SupplierDeleteResponseError(
          final String status, final String? message) =
      _$SupplierDeleteResponseError;

  factory SupplierDeleteResponseError.fromJson(Map<String, dynamic> json) =
      _$SupplierDeleteResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SupplierDeleteResponseErrorCopyWith<_$SupplierDeleteResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupplierDeleteResponseSuccessCopyWith<$Res>
    implements $SupplierDeleteResponseCopyWith<$Res> {
  factory _$$SupplierDeleteResponseSuccessCopyWith(
          _$SupplierDeleteResponseSuccess value,
          $Res Function(_$SupplierDeleteResponseSuccess) then) =
      __$$SupplierDeleteResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SupplierDeleteResponseSuccessCopyWithImpl<$Res>
    extends _$SupplierDeleteResponseCopyWithImpl<$Res>
    implements _$$SupplierDeleteResponseSuccessCopyWith<$Res> {
  __$$SupplierDeleteResponseSuccessCopyWithImpl(
      _$SupplierDeleteResponseSuccess _value,
      $Res Function(_$SupplierDeleteResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$SupplierDeleteResponseSuccess));

  @override
  _$SupplierDeleteResponseSuccess get _value =>
      super._value as _$SupplierDeleteResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SupplierDeleteResponseSuccess(
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
class _$SupplierDeleteResponseSuccess implements SupplierDeleteResponseSuccess {
  const _$SupplierDeleteResponseSuccess(this.status, this.message);

  factory _$SupplierDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$SupplierDeleteResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SupplierDeleteResponse.SUCCESS(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierDeleteResponseSuccess &&
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
  _$$SupplierDeleteResponseSuccessCopyWith<_$SupplierDeleteResponseSuccess>
      get copyWith => __$$SupplierDeleteResponseSuccessCopyWithImpl<
          _$SupplierDeleteResponseSuccess>(this, _$identity);

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
    required TResult Function(SupplierDeleteResponseFail value) FAIL,
    required TResult Function(SupplierDeleteResponseError value) ERROR,
    required TResult Function(SupplierDeleteResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SupplierDeleteResponseFail value)? FAIL,
    TResult Function(SupplierDeleteResponseError value)? ERROR,
    TResult Function(SupplierDeleteResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupplierDeleteResponseFail value)? FAIL,
    TResult Function(SupplierDeleteResponseError value)? ERROR,
    TResult Function(SupplierDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierDeleteResponseSuccessToJson(
      this,
    );
  }
}

abstract class SupplierDeleteResponseSuccess implements SupplierDeleteResponse {
  const factory SupplierDeleteResponseSuccess(
          final String status, final String? message) =
      _$SupplierDeleteResponseSuccess;

  factory SupplierDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$SupplierDeleteResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SupplierDeleteResponseSuccessCopyWith<_$SupplierDeleteResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
