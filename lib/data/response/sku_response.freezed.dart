// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sku_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SKUResponse _$SKUResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return SKUResponseFail.fromJson(json);
    case 'ERROR':
      return SKUResponseError.fromJson(json);
    case 'success':
      return SKUResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'SKUResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$SKUResponse {
  String get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SKUResponseFail value) FAIL,
    required TResult Function(SKUResponseError value) ERROR,
    required TResult Function(SKUResponseSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SKUResponseFail value)? FAIL,
    TResult Function(SKUResponseError value)? ERROR,
    TResult Function(SKUResponseSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SKUResponseFail value)? FAIL,
    TResult Function(SKUResponseError value)? ERROR,
    TResult Function(SKUResponseSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SKUResponseCopyWith<SKUResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SKUResponseCopyWith<$Res> {
  factory $SKUResponseCopyWith(
          SKUResponse value, $Res Function(SKUResponse) then) =
      _$SKUResponseCopyWithImpl<$Res>;
  $Res call({String status});
}

/// @nodoc
class _$SKUResponseCopyWithImpl<$Res> implements $SKUResponseCopyWith<$Res> {
  _$SKUResponseCopyWithImpl(this._value, this._then);

  final SKUResponse _value;
  // ignore: unused_field
  final $Res Function(SKUResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SKUResponseFailCopyWith<$Res>
    implements $SKUResponseCopyWith<$Res> {
  factory _$$SKUResponseFailCopyWith(
          _$SKUResponseFail value, $Res Function(_$SKUResponseFail) then) =
      __$$SKUResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SKUResponseFailCopyWithImpl<$Res>
    extends _$SKUResponseCopyWithImpl<$Res>
    implements _$$SKUResponseFailCopyWith<$Res> {
  __$$SKUResponseFailCopyWithImpl(
      _$SKUResponseFail _value, $Res Function(_$SKUResponseFail) _then)
      : super(_value, (v) => _then(v as _$SKUResponseFail));

  @override
  _$SKUResponseFail get _value => super._value as _$SKUResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SKUResponseFail(
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
class _$SKUResponseFail implements SKUResponseFail {
  const _$SKUResponseFail(this.status, this.message);

  factory _$SKUResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$SKUResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SKUResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SKUResponseFail &&
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
  _$$SKUResponseFailCopyWith<_$SKUResponseFail> get copyWith =>
      __$$SKUResponseFailCopyWithImpl<_$SKUResponseFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? data) success,
  }) {
    return FAIL(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? data)? success,
  }) {
    return FAIL?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? data)? success,
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
    required TResult Function(SKUResponseFail value) FAIL,
    required TResult Function(SKUResponseError value) ERROR,
    required TResult Function(SKUResponseSuccess value) success,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SKUResponseFail value)? FAIL,
    TResult Function(SKUResponseError value)? ERROR,
    TResult Function(SKUResponseSuccess value)? success,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SKUResponseFail value)? FAIL,
    TResult Function(SKUResponseError value)? ERROR,
    TResult Function(SKUResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SKUResponseFailToJson(
      this,
    );
  }
}

abstract class SKUResponseFail implements SKUResponse {
  const factory SKUResponseFail(final String status, final String? message) =
      _$SKUResponseFail;

  factory SKUResponseFail.fromJson(Map<String, dynamic> json) =
      _$SKUResponseFail.fromJson;

  @override
  String get status;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SKUResponseFailCopyWith<_$SKUResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SKUResponseErrorCopyWith<$Res>
    implements $SKUResponseCopyWith<$Res> {
  factory _$$SKUResponseErrorCopyWith(
          _$SKUResponseError value, $Res Function(_$SKUResponseError) then) =
      __$$SKUResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SKUResponseErrorCopyWithImpl<$Res>
    extends _$SKUResponseCopyWithImpl<$Res>
    implements _$$SKUResponseErrorCopyWith<$Res> {
  __$$SKUResponseErrorCopyWithImpl(
      _$SKUResponseError _value, $Res Function(_$SKUResponseError) _then)
      : super(_value, (v) => _then(v as _$SKUResponseError));

  @override
  _$SKUResponseError get _value => super._value as _$SKUResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SKUResponseError(
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
class _$SKUResponseError implements SKUResponseError {
  const _$SKUResponseError(this.status, this.message);

  factory _$SKUResponseError.fromJson(Map<String, dynamic> json) =>
      _$$SKUResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SKUResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SKUResponseError &&
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
  _$$SKUResponseErrorCopyWith<_$SKUResponseError> get copyWith =>
      __$$SKUResponseErrorCopyWithImpl<_$SKUResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? data) success,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? data)? success,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? data)? success,
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
    required TResult Function(SKUResponseFail value) FAIL,
    required TResult Function(SKUResponseError value) ERROR,
    required TResult Function(SKUResponseSuccess value) success,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SKUResponseFail value)? FAIL,
    TResult Function(SKUResponseError value)? ERROR,
    TResult Function(SKUResponseSuccess value)? success,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SKUResponseFail value)? FAIL,
    TResult Function(SKUResponseError value)? ERROR,
    TResult Function(SKUResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SKUResponseErrorToJson(
      this,
    );
  }
}

abstract class SKUResponseError implements SKUResponse {
  const factory SKUResponseError(final String status, final String? message) =
      _$SKUResponseError;

  factory SKUResponseError.fromJson(Map<String, dynamic> json) =
      _$SKUResponseError.fromJson;

  @override
  String get status;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SKUResponseErrorCopyWith<_$SKUResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SKUResponseSuccessCopyWith<$Res>
    implements $SKUResponseCopyWith<$Res> {
  factory _$$SKUResponseSuccessCopyWith(_$SKUResponseSuccess value,
          $Res Function(_$SKUResponseSuccess) then) =
      __$$SKUResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? data});
}

/// @nodoc
class __$$SKUResponseSuccessCopyWithImpl<$Res>
    extends _$SKUResponseCopyWithImpl<$Res>
    implements _$$SKUResponseSuccessCopyWith<$Res> {
  __$$SKUResponseSuccessCopyWithImpl(
      _$SKUResponseSuccess _value, $Res Function(_$SKUResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$SKUResponseSuccess));

  @override
  _$SKUResponseSuccess get _value => super._value as _$SKUResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SKUResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SKUResponseSuccess implements SKUResponseSuccess {
  const _$SKUResponseSuccess(this.status, this.data);

  factory _$SKUResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$SKUResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? data;

  @override
  String toString() {
    return 'SKUResponse.success(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SKUResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$SKUResponseSuccessCopyWith<_$SKUResponseSuccess> get copyWith =>
      __$$SKUResponseSuccessCopyWithImpl<_$SKUResponseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? data) success,
  }) {
    return success(status, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? data)? success,
  }) {
    return success?.call(status, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SKUResponseFail value) FAIL,
    required TResult Function(SKUResponseError value) ERROR,
    required TResult Function(SKUResponseSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SKUResponseFail value)? FAIL,
    TResult Function(SKUResponseError value)? ERROR,
    TResult Function(SKUResponseSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SKUResponseFail value)? FAIL,
    TResult Function(SKUResponseError value)? ERROR,
    TResult Function(SKUResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SKUResponseSuccessToJson(
      this,
    );
  }
}

abstract class SKUResponseSuccess implements SKUResponse {
  const factory SKUResponseSuccess(final String status, final String? data) =
      _$SKUResponseSuccess;

  factory SKUResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$SKUResponseSuccess.fromJson;

  @override
  String get status;
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$SKUResponseSuccessCopyWith<_$SKUResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
