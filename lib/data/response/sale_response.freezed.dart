// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleResponse _$SaleResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return SaleResponseFail.fromJson(json);
    case 'ERROR':
      return SaleResponseError.fromJson(json);
    case 'SUCCESS':
      return SaleResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'SaleResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$SaleResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") Sale? saleData)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") Sale? saleData)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") Sale? saleData)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaleResponseFail value) FAIL,
    required TResult Function(SaleResponseError value) ERROR,
    required TResult Function(SaleResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaleResponseFail value)? FAIL,
    TResult Function(SaleResponseError value)? ERROR,
    TResult Function(SaleResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaleResponseFail value)? FAIL,
    TResult Function(SaleResponseError value)? ERROR,
    TResult Function(SaleResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleResponseCopyWith<SaleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleResponseCopyWith<$Res> {
  factory $SaleResponseCopyWith(
          SaleResponse value, $Res Function(SaleResponse) then) =
      _$SaleResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$SaleResponseCopyWithImpl<$Res> implements $SaleResponseCopyWith<$Res> {
  _$SaleResponseCopyWithImpl(this._value, this._then);

  final SaleResponse _value;
  // ignore: unused_field
  final $Res Function(SaleResponse) _then;

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
abstract class _$$SaleResponseFailCopyWith<$Res>
    implements $SaleResponseCopyWith<$Res> {
  factory _$$SaleResponseFailCopyWith(
          _$SaleResponseFail value, $Res Function(_$SaleResponseFail) then) =
      __$$SaleResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SaleResponseFailCopyWithImpl<$Res>
    extends _$SaleResponseCopyWithImpl<$Res>
    implements _$$SaleResponseFailCopyWith<$Res> {
  __$$SaleResponseFailCopyWithImpl(
      _$SaleResponseFail _value, $Res Function(_$SaleResponseFail) _then)
      : super(_value, (v) => _then(v as _$SaleResponseFail));

  @override
  _$SaleResponseFail get _value => super._value as _$SaleResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SaleResponseFail(
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
class _$SaleResponseFail implements SaleResponseFail {
  const _$SaleResponseFail(this.status, this.message);

  factory _$SaleResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$SaleResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SaleResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleResponseFail &&
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
  _$$SaleResponseFailCopyWith<_$SaleResponseFail> get copyWith =>
      __$$SaleResponseFailCopyWithImpl<_$SaleResponseFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") Sale? saleData)
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
            @JsonKey(name: "data") Sale? saleData)?
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
            @JsonKey(name: "data") Sale? saleData)?
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
    required TResult Function(SaleResponseFail value) FAIL,
    required TResult Function(SaleResponseError value) ERROR,
    required TResult Function(SaleResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaleResponseFail value)? FAIL,
    TResult Function(SaleResponseError value)? ERROR,
    TResult Function(SaleResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaleResponseFail value)? FAIL,
    TResult Function(SaleResponseError value)? ERROR,
    TResult Function(SaleResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleResponseFailToJson(
      this,
    );
  }
}

abstract class SaleResponseFail implements SaleResponse {
  const factory SaleResponseFail(final String status, final String? message) =
      _$SaleResponseFail;

  factory SaleResponseFail.fromJson(Map<String, dynamic> json) =
      _$SaleResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SaleResponseFailCopyWith<_$SaleResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaleResponseErrorCopyWith<$Res>
    implements $SaleResponseCopyWith<$Res> {
  factory _$$SaleResponseErrorCopyWith(
          _$SaleResponseError value, $Res Function(_$SaleResponseError) then) =
      __$$SaleResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SaleResponseErrorCopyWithImpl<$Res>
    extends _$SaleResponseCopyWithImpl<$Res>
    implements _$$SaleResponseErrorCopyWith<$Res> {
  __$$SaleResponseErrorCopyWithImpl(
      _$SaleResponseError _value, $Res Function(_$SaleResponseError) _then)
      : super(_value, (v) => _then(v as _$SaleResponseError));

  @override
  _$SaleResponseError get _value => super._value as _$SaleResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SaleResponseError(
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
class _$SaleResponseError implements SaleResponseError {
  const _$SaleResponseError(this.status, this.message);

  factory _$SaleResponseError.fromJson(Map<String, dynamic> json) =>
      _$$SaleResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SaleResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleResponseError &&
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
  _$$SaleResponseErrorCopyWith<_$SaleResponseError> get copyWith =>
      __$$SaleResponseErrorCopyWithImpl<_$SaleResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") Sale? saleData)
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
            @JsonKey(name: "data") Sale? saleData)?
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
            @JsonKey(name: "data") Sale? saleData)?
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
    required TResult Function(SaleResponseFail value) FAIL,
    required TResult Function(SaleResponseError value) ERROR,
    required TResult Function(SaleResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaleResponseFail value)? FAIL,
    TResult Function(SaleResponseError value)? ERROR,
    TResult Function(SaleResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaleResponseFail value)? FAIL,
    TResult Function(SaleResponseError value)? ERROR,
    TResult Function(SaleResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleResponseErrorToJson(
      this,
    );
  }
}

abstract class SaleResponseError implements SaleResponse {
  const factory SaleResponseError(final String status, final String? message) =
      _$SaleResponseError;

  factory SaleResponseError.fromJson(Map<String, dynamic> json) =
      _$SaleResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SaleResponseErrorCopyWith<_$SaleResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaleResponseSuccessCopyWith<$Res>
    implements $SaleResponseCopyWith<$Res> {
  factory _$$SaleResponseSuccessCopyWith(_$SaleResponseSuccess value,
          $Res Function(_$SaleResponseSuccess) then) =
      __$$SaleResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status, String? message, @JsonKey(name: "data") Sale? saleData});

  $SaleCopyWith<$Res>? get saleData;
}

/// @nodoc
class __$$SaleResponseSuccessCopyWithImpl<$Res>
    extends _$SaleResponseCopyWithImpl<$Res>
    implements _$$SaleResponseSuccessCopyWith<$Res> {
  __$$SaleResponseSuccessCopyWithImpl(
      _$SaleResponseSuccess _value, $Res Function(_$SaleResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$SaleResponseSuccess));

  @override
  _$SaleResponseSuccess get _value => super._value as _$SaleResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? saleData = freezed,
  }) {
    return _then(_$SaleResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      saleData == freezed
          ? _value.saleData
          : saleData // ignore: cast_nullable_to_non_nullable
              as Sale?,
    ));
  }

  @override
  $SaleCopyWith<$Res>? get saleData {
    if (_value.saleData == null) {
      return null;
    }

    return $SaleCopyWith<$Res>(_value.saleData!, (value) {
      return _then(_value.copyWith(saleData: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleResponseSuccess implements SaleResponseSuccess {
  const _$SaleResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.saleData);

  factory _$SaleResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$SaleResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final Sale? saleData;

  @override
  String toString() {
    return 'SaleResponse.SUCCESS(status: $status, message: $message, saleData: $saleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.saleData, saleData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(saleData));

  @JsonKey(ignore: true)
  @override
  _$$SaleResponseSuccessCopyWith<_$SaleResponseSuccess> get copyWith =>
      __$$SaleResponseSuccessCopyWithImpl<_$SaleResponseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") Sale? saleData)
        SUCCESS,
  }) {
    return SUCCESS(status, message, saleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") Sale? saleData)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, saleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") Sale? saleData)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, saleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaleResponseFail value) FAIL,
    required TResult Function(SaleResponseError value) ERROR,
    required TResult Function(SaleResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaleResponseFail value)? FAIL,
    TResult Function(SaleResponseError value)? ERROR,
    TResult Function(SaleResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaleResponseFail value)? FAIL,
    TResult Function(SaleResponseError value)? ERROR,
    TResult Function(SaleResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleResponseSuccessToJson(
      this,
    );
  }
}

abstract class SaleResponseSuccess implements SaleResponse {
  const factory SaleResponseSuccess(final String status, final String? message,
      @JsonKey(name: "data") final Sale? saleData) = _$SaleResponseSuccess;

  factory SaleResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$SaleResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  Sale? get saleData;
  @override
  @JsonKey(ignore: true)
  _$$SaleResponseSuccessCopyWith<_$SaleResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
