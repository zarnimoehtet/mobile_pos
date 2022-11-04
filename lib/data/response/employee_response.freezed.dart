// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeListResponse _$EmployeeListResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return EmployeeListResponseFail.fromJson(json);
    case 'ERROR':
      return EmployeeListResponseError.fromJson(json);
    case 'SUCCESS':
      return EmployeeListResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'EmployeeListResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$EmployeeListResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<EmployeeItem> empList)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<EmployeeItem> empList)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<EmployeeItem> empList)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeListResponseFail value) FAIL,
    required TResult Function(EmployeeListResponseError value) ERROR,
    required TResult Function(EmployeeListResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeListResponseFail value)? FAIL,
    TResult Function(EmployeeListResponseError value)? ERROR,
    TResult Function(EmployeeListResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeListResponseFail value)? FAIL,
    TResult Function(EmployeeListResponseError value)? ERROR,
    TResult Function(EmployeeListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeListResponseCopyWith<EmployeeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeListResponseCopyWith<$Res> {
  factory $EmployeeListResponseCopyWith(EmployeeListResponse value,
          $Res Function(EmployeeListResponse) then) =
      _$EmployeeListResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$EmployeeListResponseCopyWithImpl<$Res>
    implements $EmployeeListResponseCopyWith<$Res> {
  _$EmployeeListResponseCopyWithImpl(this._value, this._then);

  final EmployeeListResponse _value;
  // ignore: unused_field
  final $Res Function(EmployeeListResponse) _then;

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
abstract class _$$EmployeeListResponseFailCopyWith<$Res>
    implements $EmployeeListResponseCopyWith<$Res> {
  factory _$$EmployeeListResponseFailCopyWith(_$EmployeeListResponseFail value,
          $Res Function(_$EmployeeListResponseFail) then) =
      __$$EmployeeListResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$EmployeeListResponseFailCopyWithImpl<$Res>
    extends _$EmployeeListResponseCopyWithImpl<$Res>
    implements _$$EmployeeListResponseFailCopyWith<$Res> {
  __$$EmployeeListResponseFailCopyWithImpl(_$EmployeeListResponseFail _value,
      $Res Function(_$EmployeeListResponseFail) _then)
      : super(_value, (v) => _then(v as _$EmployeeListResponseFail));

  @override
  _$EmployeeListResponseFail get _value =>
      super._value as _$EmployeeListResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EmployeeListResponseFail(
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
class _$EmployeeListResponseFail implements EmployeeListResponseFail {
  const _$EmployeeListResponseFail(this.status, this.message);

  factory _$EmployeeListResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeListResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'EmployeeListResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeListResponseFail &&
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
  _$$EmployeeListResponseFailCopyWith<_$EmployeeListResponseFail>
      get copyWith =>
          __$$EmployeeListResponseFailCopyWithImpl<_$EmployeeListResponseFail>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<EmployeeItem> empList)
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
            @JsonKey(name: "data") List<EmployeeItem> empList)?
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
            @JsonKey(name: "data") List<EmployeeItem> empList)?
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
    required TResult Function(EmployeeListResponseFail value) FAIL,
    required TResult Function(EmployeeListResponseError value) ERROR,
    required TResult Function(EmployeeListResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeListResponseFail value)? FAIL,
    TResult Function(EmployeeListResponseError value)? ERROR,
    TResult Function(EmployeeListResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeListResponseFail value)? FAIL,
    TResult Function(EmployeeListResponseError value)? ERROR,
    TResult Function(EmployeeListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeListResponseFailToJson(
      this,
    );
  }
}

abstract class EmployeeListResponseFail implements EmployeeListResponse {
  const factory EmployeeListResponseFail(
      final String status, final String? message) = _$EmployeeListResponseFail;

  factory EmployeeListResponseFail.fromJson(Map<String, dynamic> json) =
      _$EmployeeListResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeListResponseFailCopyWith<_$EmployeeListResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeListResponseErrorCopyWith<$Res>
    implements $EmployeeListResponseCopyWith<$Res> {
  factory _$$EmployeeListResponseErrorCopyWith(
          _$EmployeeListResponseError value,
          $Res Function(_$EmployeeListResponseError) then) =
      __$$EmployeeListResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$EmployeeListResponseErrorCopyWithImpl<$Res>
    extends _$EmployeeListResponseCopyWithImpl<$Res>
    implements _$$EmployeeListResponseErrorCopyWith<$Res> {
  __$$EmployeeListResponseErrorCopyWithImpl(_$EmployeeListResponseError _value,
      $Res Function(_$EmployeeListResponseError) _then)
      : super(_value, (v) => _then(v as _$EmployeeListResponseError));

  @override
  _$EmployeeListResponseError get _value =>
      super._value as _$EmployeeListResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EmployeeListResponseError(
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
class _$EmployeeListResponseError implements EmployeeListResponseError {
  const _$EmployeeListResponseError(this.status, this.message);

  factory _$EmployeeListResponseError.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeListResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'EmployeeListResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeListResponseError &&
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
  _$$EmployeeListResponseErrorCopyWith<_$EmployeeListResponseError>
      get copyWith => __$$EmployeeListResponseErrorCopyWithImpl<
          _$EmployeeListResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<EmployeeItem> empList)
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
            @JsonKey(name: "data") List<EmployeeItem> empList)?
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
            @JsonKey(name: "data") List<EmployeeItem> empList)?
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
    required TResult Function(EmployeeListResponseFail value) FAIL,
    required TResult Function(EmployeeListResponseError value) ERROR,
    required TResult Function(EmployeeListResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeListResponseFail value)? FAIL,
    TResult Function(EmployeeListResponseError value)? ERROR,
    TResult Function(EmployeeListResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeListResponseFail value)? FAIL,
    TResult Function(EmployeeListResponseError value)? ERROR,
    TResult Function(EmployeeListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeListResponseErrorToJson(
      this,
    );
  }
}

abstract class EmployeeListResponseError implements EmployeeListResponse {
  const factory EmployeeListResponseError(
      final String status, final String? message) = _$EmployeeListResponseError;

  factory EmployeeListResponseError.fromJson(Map<String, dynamic> json) =
      _$EmployeeListResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeListResponseErrorCopyWith<_$EmployeeListResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeListResponseSuccessCopyWith<$Res>
    implements $EmployeeListResponseCopyWith<$Res> {
  factory _$$EmployeeListResponseSuccessCopyWith(
          _$EmployeeListResponseSuccess value,
          $Res Function(_$EmployeeListResponseSuccess) then) =
      __$$EmployeeListResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<EmployeeItem> empList});
}

/// @nodoc
class __$$EmployeeListResponseSuccessCopyWithImpl<$Res>
    extends _$EmployeeListResponseCopyWithImpl<$Res>
    implements _$$EmployeeListResponseSuccessCopyWith<$Res> {
  __$$EmployeeListResponseSuccessCopyWithImpl(
      _$EmployeeListResponseSuccess _value,
      $Res Function(_$EmployeeListResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$EmployeeListResponseSuccess));

  @override
  _$EmployeeListResponseSuccess get _value =>
      super._value as _$EmployeeListResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? empList = freezed,
  }) {
    return _then(_$EmployeeListResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      empList == freezed
          ? _value._empList
          : empList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeListResponseSuccess implements EmployeeListResponseSuccess {
  const _$EmployeeListResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<EmployeeItem> empList)
      : _empList = empList;

  factory _$EmployeeListResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeListResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<EmployeeItem> _empList;
  @override
  @JsonKey(name: "data")
  List<EmployeeItem> get empList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_empList);
  }

  @override
  String toString() {
    return 'EmployeeListResponse.SUCCESS(status: $status, message: $message, empList: $empList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeListResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._empList, _empList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_empList));

  @JsonKey(ignore: true)
  @override
  _$$EmployeeListResponseSuccessCopyWith<_$EmployeeListResponseSuccess>
      get copyWith => __$$EmployeeListResponseSuccessCopyWithImpl<
          _$EmployeeListResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<EmployeeItem> empList)
        SUCCESS,
  }) {
    return SUCCESS(status, message, empList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<EmployeeItem> empList)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, empList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<EmployeeItem> empList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, empList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeListResponseFail value) FAIL,
    required TResult Function(EmployeeListResponseError value) ERROR,
    required TResult Function(EmployeeListResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeListResponseFail value)? FAIL,
    TResult Function(EmployeeListResponseError value)? ERROR,
    TResult Function(EmployeeListResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeListResponseFail value)? FAIL,
    TResult Function(EmployeeListResponseError value)? ERROR,
    TResult Function(EmployeeListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeListResponseSuccessToJson(
      this,
    );
  }
}

abstract class EmployeeListResponseSuccess implements EmployeeListResponse {
  const factory EmployeeListResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<EmployeeItem> empList) =
      _$EmployeeListResponseSuccess;

  factory EmployeeListResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$EmployeeListResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<EmployeeItem> get empList;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeListResponseSuccessCopyWith<_$EmployeeListResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

EmployeeAddResponse _$EmployeeAddResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return EmployeeAddResponseFail.fromJson(json);
    case 'ERROR':
      return EmployeeAddResponseError.fromJson(json);
    case 'SUCCESS':
      return EmployeeAddResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'EmployeeAddResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$EmployeeAddResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") Employee employee)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") Employee employee)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") Employee employee)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeAddResponseFail value) FAIL,
    required TResult Function(EmployeeAddResponseError value) ERROR,
    required TResult Function(EmployeeAddResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeAddResponseFail value)? FAIL,
    TResult Function(EmployeeAddResponseError value)? ERROR,
    TResult Function(EmployeeAddResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeAddResponseFail value)? FAIL,
    TResult Function(EmployeeAddResponseError value)? ERROR,
    TResult Function(EmployeeAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeAddResponseCopyWith<EmployeeAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeAddResponseCopyWith<$Res> {
  factory $EmployeeAddResponseCopyWith(
          EmployeeAddResponse value, $Res Function(EmployeeAddResponse) then) =
      _$EmployeeAddResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$EmployeeAddResponseCopyWithImpl<$Res>
    implements $EmployeeAddResponseCopyWith<$Res> {
  _$EmployeeAddResponseCopyWithImpl(this._value, this._then);

  final EmployeeAddResponse _value;
  // ignore: unused_field
  final $Res Function(EmployeeAddResponse) _then;

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
abstract class _$$EmployeeAddResponseFailCopyWith<$Res>
    implements $EmployeeAddResponseCopyWith<$Res> {
  factory _$$EmployeeAddResponseFailCopyWith(_$EmployeeAddResponseFail value,
          $Res Function(_$EmployeeAddResponseFail) then) =
      __$$EmployeeAddResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$EmployeeAddResponseFailCopyWithImpl<$Res>
    extends _$EmployeeAddResponseCopyWithImpl<$Res>
    implements _$$EmployeeAddResponseFailCopyWith<$Res> {
  __$$EmployeeAddResponseFailCopyWithImpl(_$EmployeeAddResponseFail _value,
      $Res Function(_$EmployeeAddResponseFail) _then)
      : super(_value, (v) => _then(v as _$EmployeeAddResponseFail));

  @override
  _$EmployeeAddResponseFail get _value =>
      super._value as _$EmployeeAddResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EmployeeAddResponseFail(
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
class _$EmployeeAddResponseFail implements EmployeeAddResponseFail {
  const _$EmployeeAddResponseFail(this.status, this.message);

  factory _$EmployeeAddResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeAddResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'EmployeeAddResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeAddResponseFail &&
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
  _$$EmployeeAddResponseFailCopyWith<_$EmployeeAddResponseFail> get copyWith =>
      __$$EmployeeAddResponseFailCopyWithImpl<_$EmployeeAddResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") Employee employee)
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
            @JsonKey(name: "data") Employee employee)?
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
            @JsonKey(name: "data") Employee employee)?
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
    required TResult Function(EmployeeAddResponseFail value) FAIL,
    required TResult Function(EmployeeAddResponseError value) ERROR,
    required TResult Function(EmployeeAddResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeAddResponseFail value)? FAIL,
    TResult Function(EmployeeAddResponseError value)? ERROR,
    TResult Function(EmployeeAddResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeAddResponseFail value)? FAIL,
    TResult Function(EmployeeAddResponseError value)? ERROR,
    TResult Function(EmployeeAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeAddResponseFailToJson(
      this,
    );
  }
}

abstract class EmployeeAddResponseFail implements EmployeeAddResponse {
  const factory EmployeeAddResponseFail(
      final String status, final String? message) = _$EmployeeAddResponseFail;

  factory EmployeeAddResponseFail.fromJson(Map<String, dynamic> json) =
      _$EmployeeAddResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeAddResponseFailCopyWith<_$EmployeeAddResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeAddResponseErrorCopyWith<$Res>
    implements $EmployeeAddResponseCopyWith<$Res> {
  factory _$$EmployeeAddResponseErrorCopyWith(_$EmployeeAddResponseError value,
          $Res Function(_$EmployeeAddResponseError) then) =
      __$$EmployeeAddResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$EmployeeAddResponseErrorCopyWithImpl<$Res>
    extends _$EmployeeAddResponseCopyWithImpl<$Res>
    implements _$$EmployeeAddResponseErrorCopyWith<$Res> {
  __$$EmployeeAddResponseErrorCopyWithImpl(_$EmployeeAddResponseError _value,
      $Res Function(_$EmployeeAddResponseError) _then)
      : super(_value, (v) => _then(v as _$EmployeeAddResponseError));

  @override
  _$EmployeeAddResponseError get _value =>
      super._value as _$EmployeeAddResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EmployeeAddResponseError(
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
class _$EmployeeAddResponseError implements EmployeeAddResponseError {
  const _$EmployeeAddResponseError(this.status, this.message);

  factory _$EmployeeAddResponseError.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeAddResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'EmployeeAddResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeAddResponseError &&
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
  _$$EmployeeAddResponseErrorCopyWith<_$EmployeeAddResponseError>
      get copyWith =>
          __$$EmployeeAddResponseErrorCopyWithImpl<_$EmployeeAddResponseError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") Employee employee)
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
            @JsonKey(name: "data") Employee employee)?
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
            @JsonKey(name: "data") Employee employee)?
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
    required TResult Function(EmployeeAddResponseFail value) FAIL,
    required TResult Function(EmployeeAddResponseError value) ERROR,
    required TResult Function(EmployeeAddResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeAddResponseFail value)? FAIL,
    TResult Function(EmployeeAddResponseError value)? ERROR,
    TResult Function(EmployeeAddResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeAddResponseFail value)? FAIL,
    TResult Function(EmployeeAddResponseError value)? ERROR,
    TResult Function(EmployeeAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeAddResponseErrorToJson(
      this,
    );
  }
}

abstract class EmployeeAddResponseError implements EmployeeAddResponse {
  const factory EmployeeAddResponseError(
      final String status, final String? message) = _$EmployeeAddResponseError;

  factory EmployeeAddResponseError.fromJson(Map<String, dynamic> json) =
      _$EmployeeAddResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeAddResponseErrorCopyWith<_$EmployeeAddResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeAddResponseSuccessCopyWith<$Res>
    implements $EmployeeAddResponseCopyWith<$Res> {
  factory _$$EmployeeAddResponseSuccessCopyWith(
          _$EmployeeAddResponseSuccess value,
          $Res Function(_$EmployeeAddResponseSuccess) then) =
      __$$EmployeeAddResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$EmployeeAddResponseSuccessCopyWithImpl<$Res>
    extends _$EmployeeAddResponseCopyWithImpl<$Res>
    implements _$$EmployeeAddResponseSuccessCopyWith<$Res> {
  __$$EmployeeAddResponseSuccessCopyWithImpl(
      _$EmployeeAddResponseSuccess _value,
      $Res Function(_$EmployeeAddResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$EmployeeAddResponseSuccess));

  @override
  _$EmployeeAddResponseSuccess get _value =>
      super._value as _$EmployeeAddResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? employee = freezed,
  }) {
    return _then(_$EmployeeAddResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeAddResponseSuccess implements EmployeeAddResponseSuccess {
  const _$EmployeeAddResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.employee);

  factory _$EmployeeAddResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeAddResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeAddResponse.SUCCESS(status: $status, message: $message, employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeAddResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.employee, employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(employee));

  @JsonKey(ignore: true)
  @override
  _$$EmployeeAddResponseSuccessCopyWith<_$EmployeeAddResponseSuccess>
      get copyWith => __$$EmployeeAddResponseSuccessCopyWithImpl<
          _$EmployeeAddResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") Employee employee)
        SUCCESS,
  }) {
    return SUCCESS(status, message, employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") Employee employee)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") Employee employee)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeAddResponseFail value) FAIL,
    required TResult Function(EmployeeAddResponseError value) ERROR,
    required TResult Function(EmployeeAddResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeAddResponseFail value)? FAIL,
    TResult Function(EmployeeAddResponseError value)? ERROR,
    TResult Function(EmployeeAddResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeAddResponseFail value)? FAIL,
    TResult Function(EmployeeAddResponseError value)? ERROR,
    TResult Function(EmployeeAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeAddResponseSuccessToJson(
      this,
    );
  }
}

abstract class EmployeeAddResponseSuccess implements EmployeeAddResponse {
  const factory EmployeeAddResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final Employee employee) =
      _$EmployeeAddResponseSuccess;

  factory EmployeeAddResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$EmployeeAddResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  Employee get employee;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeAddResponseSuccessCopyWith<_$EmployeeAddResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

EmployeeDeleteResponse _$EmployeeDeleteResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return EmployeeDeleteResponseFail.fromJson(json);
    case 'ERROR':
      return EmployeeDeleteResponseError.fromJson(json);
    case 'SUCCESS':
      return EmployeeDeleteResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'EmployeeDeleteResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$EmployeeDeleteResponse {
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
    required TResult Function(EmployeeDeleteResponseFail value) FAIL,
    required TResult Function(EmployeeDeleteResponseError value) ERROR,
    required TResult Function(EmployeeDeleteResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeDeleteResponseFail value)? FAIL,
    TResult Function(EmployeeDeleteResponseError value)? ERROR,
    TResult Function(EmployeeDeleteResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeDeleteResponseFail value)? FAIL,
    TResult Function(EmployeeDeleteResponseError value)? ERROR,
    TResult Function(EmployeeDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDeleteResponseCopyWith<EmployeeDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDeleteResponseCopyWith<$Res> {
  factory $EmployeeDeleteResponseCopyWith(EmployeeDeleteResponse value,
          $Res Function(EmployeeDeleteResponse) then) =
      _$EmployeeDeleteResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$EmployeeDeleteResponseCopyWithImpl<$Res>
    implements $EmployeeDeleteResponseCopyWith<$Res> {
  _$EmployeeDeleteResponseCopyWithImpl(this._value, this._then);

  final EmployeeDeleteResponse _value;
  // ignore: unused_field
  final $Res Function(EmployeeDeleteResponse) _then;

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
abstract class _$$EmployeeDeleteResponseFailCopyWith<$Res>
    implements $EmployeeDeleteResponseCopyWith<$Res> {
  factory _$$EmployeeDeleteResponseFailCopyWith(
          _$EmployeeDeleteResponseFail value,
          $Res Function(_$EmployeeDeleteResponseFail) then) =
      __$$EmployeeDeleteResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$EmployeeDeleteResponseFailCopyWithImpl<$Res>
    extends _$EmployeeDeleteResponseCopyWithImpl<$Res>
    implements _$$EmployeeDeleteResponseFailCopyWith<$Res> {
  __$$EmployeeDeleteResponseFailCopyWithImpl(
      _$EmployeeDeleteResponseFail _value,
      $Res Function(_$EmployeeDeleteResponseFail) _then)
      : super(_value, (v) => _then(v as _$EmployeeDeleteResponseFail));

  @override
  _$EmployeeDeleteResponseFail get _value =>
      super._value as _$EmployeeDeleteResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EmployeeDeleteResponseFail(
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
class _$EmployeeDeleteResponseFail implements EmployeeDeleteResponseFail {
  const _$EmployeeDeleteResponseFail(this.status, this.message);

  factory _$EmployeeDeleteResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeDeleteResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'EmployeeDeleteResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDeleteResponseFail &&
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
  _$$EmployeeDeleteResponseFailCopyWith<_$EmployeeDeleteResponseFail>
      get copyWith => __$$EmployeeDeleteResponseFailCopyWithImpl<
          _$EmployeeDeleteResponseFail>(this, _$identity);

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
    required TResult Function(EmployeeDeleteResponseFail value) FAIL,
    required TResult Function(EmployeeDeleteResponseError value) ERROR,
    required TResult Function(EmployeeDeleteResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeDeleteResponseFail value)? FAIL,
    TResult Function(EmployeeDeleteResponseError value)? ERROR,
    TResult Function(EmployeeDeleteResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeDeleteResponseFail value)? FAIL,
    TResult Function(EmployeeDeleteResponseError value)? ERROR,
    TResult Function(EmployeeDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeDeleteResponseFailToJson(
      this,
    );
  }
}

abstract class EmployeeDeleteResponseFail implements EmployeeDeleteResponse {
  const factory EmployeeDeleteResponseFail(
          final String status, final String? message) =
      _$EmployeeDeleteResponseFail;

  factory EmployeeDeleteResponseFail.fromJson(Map<String, dynamic> json) =
      _$EmployeeDeleteResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeDeleteResponseFailCopyWith<_$EmployeeDeleteResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeDeleteResponseErrorCopyWith<$Res>
    implements $EmployeeDeleteResponseCopyWith<$Res> {
  factory _$$EmployeeDeleteResponseErrorCopyWith(
          _$EmployeeDeleteResponseError value,
          $Res Function(_$EmployeeDeleteResponseError) then) =
      __$$EmployeeDeleteResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$EmployeeDeleteResponseErrorCopyWithImpl<$Res>
    extends _$EmployeeDeleteResponseCopyWithImpl<$Res>
    implements _$$EmployeeDeleteResponseErrorCopyWith<$Res> {
  __$$EmployeeDeleteResponseErrorCopyWithImpl(
      _$EmployeeDeleteResponseError _value,
      $Res Function(_$EmployeeDeleteResponseError) _then)
      : super(_value, (v) => _then(v as _$EmployeeDeleteResponseError));

  @override
  _$EmployeeDeleteResponseError get _value =>
      super._value as _$EmployeeDeleteResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EmployeeDeleteResponseError(
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
class _$EmployeeDeleteResponseError implements EmployeeDeleteResponseError {
  const _$EmployeeDeleteResponseError(this.status, this.message);

  factory _$EmployeeDeleteResponseError.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeDeleteResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'EmployeeDeleteResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDeleteResponseError &&
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
  _$$EmployeeDeleteResponseErrorCopyWith<_$EmployeeDeleteResponseError>
      get copyWith => __$$EmployeeDeleteResponseErrorCopyWithImpl<
          _$EmployeeDeleteResponseError>(this, _$identity);

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
    required TResult Function(EmployeeDeleteResponseFail value) FAIL,
    required TResult Function(EmployeeDeleteResponseError value) ERROR,
    required TResult Function(EmployeeDeleteResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeDeleteResponseFail value)? FAIL,
    TResult Function(EmployeeDeleteResponseError value)? ERROR,
    TResult Function(EmployeeDeleteResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeDeleteResponseFail value)? FAIL,
    TResult Function(EmployeeDeleteResponseError value)? ERROR,
    TResult Function(EmployeeDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeDeleteResponseErrorToJson(
      this,
    );
  }
}

abstract class EmployeeDeleteResponseError implements EmployeeDeleteResponse {
  const factory EmployeeDeleteResponseError(
          final String status, final String? message) =
      _$EmployeeDeleteResponseError;

  factory EmployeeDeleteResponseError.fromJson(Map<String, dynamic> json) =
      _$EmployeeDeleteResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeDeleteResponseErrorCopyWith<_$EmployeeDeleteResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeDeleteResponseSuccessCopyWith<$Res>
    implements $EmployeeDeleteResponseCopyWith<$Res> {
  factory _$$EmployeeDeleteResponseSuccessCopyWith(
          _$EmployeeDeleteResponseSuccess value,
          $Res Function(_$EmployeeDeleteResponseSuccess) then) =
      __$$EmployeeDeleteResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$EmployeeDeleteResponseSuccessCopyWithImpl<$Res>
    extends _$EmployeeDeleteResponseCopyWithImpl<$Res>
    implements _$$EmployeeDeleteResponseSuccessCopyWith<$Res> {
  __$$EmployeeDeleteResponseSuccessCopyWithImpl(
      _$EmployeeDeleteResponseSuccess _value,
      $Res Function(_$EmployeeDeleteResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$EmployeeDeleteResponseSuccess));

  @override
  _$EmployeeDeleteResponseSuccess get _value =>
      super._value as _$EmployeeDeleteResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EmployeeDeleteResponseSuccess(
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
class _$EmployeeDeleteResponseSuccess implements EmployeeDeleteResponseSuccess {
  const _$EmployeeDeleteResponseSuccess(this.status, this.message);

  factory _$EmployeeDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeDeleteResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'EmployeeDeleteResponse.SUCCESS(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDeleteResponseSuccess &&
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
  _$$EmployeeDeleteResponseSuccessCopyWith<_$EmployeeDeleteResponseSuccess>
      get copyWith => __$$EmployeeDeleteResponseSuccessCopyWithImpl<
          _$EmployeeDeleteResponseSuccess>(this, _$identity);

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
    required TResult Function(EmployeeDeleteResponseFail value) FAIL,
    required TResult Function(EmployeeDeleteResponseError value) ERROR,
    required TResult Function(EmployeeDeleteResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeDeleteResponseFail value)? FAIL,
    TResult Function(EmployeeDeleteResponseError value)? ERROR,
    TResult Function(EmployeeDeleteResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeDeleteResponseFail value)? FAIL,
    TResult Function(EmployeeDeleteResponseError value)? ERROR,
    TResult Function(EmployeeDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeDeleteResponseSuccessToJson(
      this,
    );
  }
}

abstract class EmployeeDeleteResponseSuccess implements EmployeeDeleteResponse {
  const factory EmployeeDeleteResponseSuccess(
          final String status, final String? message) =
      _$EmployeeDeleteResponseSuccess;

  factory EmployeeDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$EmployeeDeleteResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeDeleteResponseSuccessCopyWith<_$EmployeeDeleteResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
