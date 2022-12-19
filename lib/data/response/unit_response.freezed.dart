// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitListResponse _$UnitListResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return UnitListResponseFail.fromJson(json);
    case 'ERROR':
      return UnitListResponseError.fromJson(json);
    case 'SUCCESS':
      return UnitListResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'UnitListResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$UnitListResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitListResponseFail value) FAIL,
    required TResult Function(UnitListResponseError value) ERROR,
    required TResult Function(UnitListResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitListResponseFail value)? FAIL,
    TResult Function(UnitListResponseError value)? ERROR,
    TResult Function(UnitListResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitListResponseFail value)? FAIL,
    TResult Function(UnitListResponseError value)? ERROR,
    TResult Function(UnitListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitListResponseCopyWith<UnitListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitListResponseCopyWith<$Res> {
  factory $UnitListResponseCopyWith(
          UnitListResponse value, $Res Function(UnitListResponse) then) =
      _$UnitListResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$UnitListResponseCopyWithImpl<$Res>
    implements $UnitListResponseCopyWith<$Res> {
  _$UnitListResponseCopyWithImpl(this._value, this._then);

  final UnitListResponse _value;
  // ignore: unused_field
  final $Res Function(UnitListResponse) _then;

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
abstract class _$$UnitListResponseFailCopyWith<$Res>
    implements $UnitListResponseCopyWith<$Res> {
  factory _$$UnitListResponseFailCopyWith(_$UnitListResponseFail value,
          $Res Function(_$UnitListResponseFail) then) =
      __$$UnitListResponseFailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Unit> unitList});
}

/// @nodoc
class __$$UnitListResponseFailCopyWithImpl<$Res>
    extends _$UnitListResponseCopyWithImpl<$Res>
    implements _$$UnitListResponseFailCopyWith<$Res> {
  __$$UnitListResponseFailCopyWithImpl(_$UnitListResponseFail _value,
      $Res Function(_$UnitListResponseFail) _then)
      : super(_value, (v) => _then(v as _$UnitListResponseFail));

  @override
  _$UnitListResponseFail get _value => super._value as _$UnitListResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? unitList = freezed,
  }) {
    return _then(_$UnitListResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      unitList == freezed
          ? _value._unitList
          : unitList // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitListResponseFail implements UnitListResponseFail {
  const _$UnitListResponseFail(this.status, this.message,
      @JsonKey(name: "data") final List<Unit> unitList)
      : _unitList = unitList;

  factory _$UnitListResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$UnitListResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Unit> _unitList;
  @override
  @JsonKey(name: "data")
  List<Unit> get unitList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unitList);
  }

  @override
  String toString() {
    return 'UnitListResponse.FAIL(status: $status, message: $message, unitList: $unitList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitListResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._unitList, _unitList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_unitList));

  @JsonKey(ignore: true)
  @override
  _$$UnitListResponseFailCopyWith<_$UnitListResponseFail> get copyWith =>
      __$$UnitListResponseFailCopyWithImpl<_$UnitListResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)
        SUCCESS,
  }) {
    return FAIL(status, message, unitList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message, unitList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message, unitList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitListResponseFail value) FAIL,
    required TResult Function(UnitListResponseError value) ERROR,
    required TResult Function(UnitListResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitListResponseFail value)? FAIL,
    TResult Function(UnitListResponseError value)? ERROR,
    TResult Function(UnitListResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitListResponseFail value)? FAIL,
    TResult Function(UnitListResponseError value)? ERROR,
    TResult Function(UnitListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitListResponseFailToJson(
      this,
    );
  }
}

abstract class UnitListResponseFail implements UnitListResponse {
  const factory UnitListResponseFail(final String status, final String? message,
          @JsonKey(name: "data") final List<Unit> unitList) =
      _$UnitListResponseFail;

  factory UnitListResponseFail.fromJson(Map<String, dynamic> json) =
      _$UnitListResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Unit> get unitList;
  @override
  @JsonKey(ignore: true)
  _$$UnitListResponseFailCopyWith<_$UnitListResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnitListResponseErrorCopyWith<$Res>
    implements $UnitListResponseCopyWith<$Res> {
  factory _$$UnitListResponseErrorCopyWith(_$UnitListResponseError value,
          $Res Function(_$UnitListResponseError) then) =
      __$$UnitListResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$UnitListResponseErrorCopyWithImpl<$Res>
    extends _$UnitListResponseCopyWithImpl<$Res>
    implements _$$UnitListResponseErrorCopyWith<$Res> {
  __$$UnitListResponseErrorCopyWithImpl(_$UnitListResponseError _value,
      $Res Function(_$UnitListResponseError) _then)
      : super(_value, (v) => _then(v as _$UnitListResponseError));

  @override
  _$UnitListResponseError get _value => super._value as _$UnitListResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UnitListResponseError(
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
class _$UnitListResponseError implements UnitListResponseError {
  const _$UnitListResponseError(this.status, this.message);

  factory _$UnitListResponseError.fromJson(Map<String, dynamic> json) =>
      _$$UnitListResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'UnitListResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitListResponseError &&
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
  _$$UnitListResponseErrorCopyWith<_$UnitListResponseError> get copyWith =>
      __$$UnitListResponseErrorCopyWithImpl<_$UnitListResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
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
    required TResult Function(UnitListResponseFail value) FAIL,
    required TResult Function(UnitListResponseError value) ERROR,
    required TResult Function(UnitListResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitListResponseFail value)? FAIL,
    TResult Function(UnitListResponseError value)? ERROR,
    TResult Function(UnitListResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitListResponseFail value)? FAIL,
    TResult Function(UnitListResponseError value)? ERROR,
    TResult Function(UnitListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitListResponseErrorToJson(
      this,
    );
  }
}

abstract class UnitListResponseError implements UnitListResponse {
  const factory UnitListResponseError(
      final String status, final String? message) = _$UnitListResponseError;

  factory UnitListResponseError.fromJson(Map<String, dynamic> json) =
      _$UnitListResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnitListResponseErrorCopyWith<_$UnitListResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnitListResponseSuccessCopyWith<$Res>
    implements $UnitListResponseCopyWith<$Res> {
  factory _$$UnitListResponseSuccessCopyWith(_$UnitListResponseSuccess value,
          $Res Function(_$UnitListResponseSuccess) then) =
      __$$UnitListResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Unit> unitList});
}

/// @nodoc
class __$$UnitListResponseSuccessCopyWithImpl<$Res>
    extends _$UnitListResponseCopyWithImpl<$Res>
    implements _$$UnitListResponseSuccessCopyWith<$Res> {
  __$$UnitListResponseSuccessCopyWithImpl(_$UnitListResponseSuccess _value,
      $Res Function(_$UnitListResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$UnitListResponseSuccess));

  @override
  _$UnitListResponseSuccess get _value =>
      super._value as _$UnitListResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? unitList = freezed,
  }) {
    return _then(_$UnitListResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      unitList == freezed
          ? _value._unitList
          : unitList // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitListResponseSuccess implements UnitListResponseSuccess {
  const _$UnitListResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<Unit> unitList)
      : _unitList = unitList;

  factory _$UnitListResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$UnitListResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Unit> _unitList;
  @override
  @JsonKey(name: "data")
  List<Unit> get unitList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unitList);
  }

  @override
  String toString() {
    return 'UnitListResponse.SUCCESS(status: $status, message: $message, unitList: $unitList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitListResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._unitList, _unitList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_unitList));

  @JsonKey(ignore: true)
  @override
  _$$UnitListResponseSuccessCopyWith<_$UnitListResponseSuccess> get copyWith =>
      __$$UnitListResponseSuccessCopyWithImpl<_$UnitListResponseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)
        SUCCESS,
  }) {
    return SUCCESS(status, message, unitList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, unitList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Unit> unitList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, unitList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitListResponseFail value) FAIL,
    required TResult Function(UnitListResponseError value) ERROR,
    required TResult Function(UnitListResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitListResponseFail value)? FAIL,
    TResult Function(UnitListResponseError value)? ERROR,
    TResult Function(UnitListResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitListResponseFail value)? FAIL,
    TResult Function(UnitListResponseError value)? ERROR,
    TResult Function(UnitListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitListResponseSuccessToJson(
      this,
    );
  }
}

abstract class UnitListResponseSuccess implements UnitListResponse {
  const factory UnitListResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Unit> unitList) =
      _$UnitListResponseSuccess;

  factory UnitListResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$UnitListResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Unit> get unitList;
  @override
  @JsonKey(ignore: true)
  _$$UnitListResponseSuccessCopyWith<_$UnitListResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

UnitAddResponse _$UnitAddResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return UnitAddResponseFail.fromJson(json);
    case 'ERROR':
      return UnitAddResponseError.fromJson(json);
    case 'SUCCESS':
      return UnitAddResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'UnitAddResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$UnitAddResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") UnitItem unit)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") UnitItem unit)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") UnitItem unit)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitAddResponseFail value) FAIL,
    required TResult Function(UnitAddResponseError value) ERROR,
    required TResult Function(UnitAddResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitAddResponseFail value)? FAIL,
    TResult Function(UnitAddResponseError value)? ERROR,
    TResult Function(UnitAddResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitAddResponseFail value)? FAIL,
    TResult Function(UnitAddResponseError value)? ERROR,
    TResult Function(UnitAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitAddResponseCopyWith<UnitAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitAddResponseCopyWith<$Res> {
  factory $UnitAddResponseCopyWith(
          UnitAddResponse value, $Res Function(UnitAddResponse) then) =
      _$UnitAddResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$UnitAddResponseCopyWithImpl<$Res>
    implements $UnitAddResponseCopyWith<$Res> {
  _$UnitAddResponseCopyWithImpl(this._value, this._then);

  final UnitAddResponse _value;
  // ignore: unused_field
  final $Res Function(UnitAddResponse) _then;

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
abstract class _$$UnitAddResponseFailCopyWith<$Res>
    implements $UnitAddResponseCopyWith<$Res> {
  factory _$$UnitAddResponseFailCopyWith(_$UnitAddResponseFail value,
          $Res Function(_$UnitAddResponseFail) then) =
      __$$UnitAddResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$UnitAddResponseFailCopyWithImpl<$Res>
    extends _$UnitAddResponseCopyWithImpl<$Res>
    implements _$$UnitAddResponseFailCopyWith<$Res> {
  __$$UnitAddResponseFailCopyWithImpl(
      _$UnitAddResponseFail _value, $Res Function(_$UnitAddResponseFail) _then)
      : super(_value, (v) => _then(v as _$UnitAddResponseFail));

  @override
  _$UnitAddResponseFail get _value => super._value as _$UnitAddResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UnitAddResponseFail(
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
class _$UnitAddResponseFail implements UnitAddResponseFail {
  const _$UnitAddResponseFail(this.status, this.message);

  factory _$UnitAddResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$UnitAddResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'UnitAddResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitAddResponseFail &&
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
  _$$UnitAddResponseFailCopyWith<_$UnitAddResponseFail> get copyWith =>
      __$$UnitAddResponseFailCopyWithImpl<_$UnitAddResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") UnitItem unit)
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
            @JsonKey(name: "data") UnitItem unit)?
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
            @JsonKey(name: "data") UnitItem unit)?
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
    required TResult Function(UnitAddResponseFail value) FAIL,
    required TResult Function(UnitAddResponseError value) ERROR,
    required TResult Function(UnitAddResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitAddResponseFail value)? FAIL,
    TResult Function(UnitAddResponseError value)? ERROR,
    TResult Function(UnitAddResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitAddResponseFail value)? FAIL,
    TResult Function(UnitAddResponseError value)? ERROR,
    TResult Function(UnitAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitAddResponseFailToJson(
      this,
    );
  }
}

abstract class UnitAddResponseFail implements UnitAddResponse {
  const factory UnitAddResponseFail(
      final String status, final String? message) = _$UnitAddResponseFail;

  factory UnitAddResponseFail.fromJson(Map<String, dynamic> json) =
      _$UnitAddResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnitAddResponseFailCopyWith<_$UnitAddResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnitAddResponseErrorCopyWith<$Res>
    implements $UnitAddResponseCopyWith<$Res> {
  factory _$$UnitAddResponseErrorCopyWith(_$UnitAddResponseError value,
          $Res Function(_$UnitAddResponseError) then) =
      __$$UnitAddResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$UnitAddResponseErrorCopyWithImpl<$Res>
    extends _$UnitAddResponseCopyWithImpl<$Res>
    implements _$$UnitAddResponseErrorCopyWith<$Res> {
  __$$UnitAddResponseErrorCopyWithImpl(_$UnitAddResponseError _value,
      $Res Function(_$UnitAddResponseError) _then)
      : super(_value, (v) => _then(v as _$UnitAddResponseError));

  @override
  _$UnitAddResponseError get _value => super._value as _$UnitAddResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UnitAddResponseError(
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
class _$UnitAddResponseError implements UnitAddResponseError {
  const _$UnitAddResponseError(this.status, this.message);

  factory _$UnitAddResponseError.fromJson(Map<String, dynamic> json) =>
      _$$UnitAddResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'UnitAddResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitAddResponseError &&
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
  _$$UnitAddResponseErrorCopyWith<_$UnitAddResponseError> get copyWith =>
      __$$UnitAddResponseErrorCopyWithImpl<_$UnitAddResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") UnitItem unit)
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
            @JsonKey(name: "data") UnitItem unit)?
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
            @JsonKey(name: "data") UnitItem unit)?
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
    required TResult Function(UnitAddResponseFail value) FAIL,
    required TResult Function(UnitAddResponseError value) ERROR,
    required TResult Function(UnitAddResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitAddResponseFail value)? FAIL,
    TResult Function(UnitAddResponseError value)? ERROR,
    TResult Function(UnitAddResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitAddResponseFail value)? FAIL,
    TResult Function(UnitAddResponseError value)? ERROR,
    TResult Function(UnitAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitAddResponseErrorToJson(
      this,
    );
  }
}

abstract class UnitAddResponseError implements UnitAddResponse {
  const factory UnitAddResponseError(
      final String status, final String? message) = _$UnitAddResponseError;

  factory UnitAddResponseError.fromJson(Map<String, dynamic> json) =
      _$UnitAddResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnitAddResponseErrorCopyWith<_$UnitAddResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnitAddResponseSuccessCopyWith<$Res>
    implements $UnitAddResponseCopyWith<$Res> {
  factory _$$UnitAddResponseSuccessCopyWith(_$UnitAddResponseSuccess value,
          $Res Function(_$UnitAddResponseSuccess) then) =
      __$$UnitAddResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status, String? message, @JsonKey(name: "data") UnitItem unit});

  $UnitItemCopyWith<$Res> get unit;
}

/// @nodoc
class __$$UnitAddResponseSuccessCopyWithImpl<$Res>
    extends _$UnitAddResponseCopyWithImpl<$Res>
    implements _$$UnitAddResponseSuccessCopyWith<$Res> {
  __$$UnitAddResponseSuccessCopyWithImpl(_$UnitAddResponseSuccess _value,
      $Res Function(_$UnitAddResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$UnitAddResponseSuccess));

  @override
  _$UnitAddResponseSuccess get _value =>
      super._value as _$UnitAddResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$UnitAddResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as UnitItem,
    ));
  }

  @override
  $UnitItemCopyWith<$Res> get unit {
    return $UnitItemCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitAddResponseSuccess implements UnitAddResponseSuccess {
  const _$UnitAddResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.unit);

  factory _$UnitAddResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$UnitAddResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final UnitItem unit;

  @override
  String toString() {
    return 'UnitAddResponse.SUCCESS(status: $status, message: $message, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitAddResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$UnitAddResponseSuccessCopyWith<_$UnitAddResponseSuccess> get copyWith =>
      __$$UnitAddResponseSuccessCopyWithImpl<_$UnitAddResponseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") UnitItem unit)
        SUCCESS,
  }) {
    return SUCCESS(status, message, unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") UnitItem unit)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") UnitItem unit)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitAddResponseFail value) FAIL,
    required TResult Function(UnitAddResponseError value) ERROR,
    required TResult Function(UnitAddResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitAddResponseFail value)? FAIL,
    TResult Function(UnitAddResponseError value)? ERROR,
    TResult Function(UnitAddResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitAddResponseFail value)? FAIL,
    TResult Function(UnitAddResponseError value)? ERROR,
    TResult Function(UnitAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitAddResponseSuccessToJson(
      this,
    );
  }
}

abstract class UnitAddResponseSuccess implements UnitAddResponse {
  const factory UnitAddResponseSuccess(
      final String status,
      final String? message,
      @JsonKey(name: "data") final UnitItem unit) = _$UnitAddResponseSuccess;

  factory UnitAddResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$UnitAddResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  UnitItem get unit;
  @override
  @JsonKey(ignore: true)
  _$$UnitAddResponseSuccessCopyWith<_$UnitAddResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

UnitDeleteResponse _$UnitDeleteResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return UnitDeleteResponseFail.fromJson(json);
    case 'ERROR':
      return UnitDeleteResponseError.fromJson(json);
    case 'SUCCESS':
      return UnitDeleteResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'UnitDeleteResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$UnitDeleteResponse {
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
    required TResult Function(UnitDeleteResponseFail value) FAIL,
    required TResult Function(UnitDeleteResponseError value) ERROR,
    required TResult Function(UnitDeleteResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitDeleteResponseFail value)? FAIL,
    TResult Function(UnitDeleteResponseError value)? ERROR,
    TResult Function(UnitDeleteResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitDeleteResponseFail value)? FAIL,
    TResult Function(UnitDeleteResponseError value)? ERROR,
    TResult Function(UnitDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitDeleteResponseCopyWith<UnitDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitDeleteResponseCopyWith<$Res> {
  factory $UnitDeleteResponseCopyWith(
          UnitDeleteResponse value, $Res Function(UnitDeleteResponse) then) =
      _$UnitDeleteResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$UnitDeleteResponseCopyWithImpl<$Res>
    implements $UnitDeleteResponseCopyWith<$Res> {
  _$UnitDeleteResponseCopyWithImpl(this._value, this._then);

  final UnitDeleteResponse _value;
  // ignore: unused_field
  final $Res Function(UnitDeleteResponse) _then;

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
abstract class _$$UnitDeleteResponseFailCopyWith<$Res>
    implements $UnitDeleteResponseCopyWith<$Res> {
  factory _$$UnitDeleteResponseFailCopyWith(_$UnitDeleteResponseFail value,
          $Res Function(_$UnitDeleteResponseFail) then) =
      __$$UnitDeleteResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$UnitDeleteResponseFailCopyWithImpl<$Res>
    extends _$UnitDeleteResponseCopyWithImpl<$Res>
    implements _$$UnitDeleteResponseFailCopyWith<$Res> {
  __$$UnitDeleteResponseFailCopyWithImpl(_$UnitDeleteResponseFail _value,
      $Res Function(_$UnitDeleteResponseFail) _then)
      : super(_value, (v) => _then(v as _$UnitDeleteResponseFail));

  @override
  _$UnitDeleteResponseFail get _value =>
      super._value as _$UnitDeleteResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UnitDeleteResponseFail(
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
class _$UnitDeleteResponseFail implements UnitDeleteResponseFail {
  const _$UnitDeleteResponseFail(this.status, this.message);

  factory _$UnitDeleteResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$UnitDeleteResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'UnitDeleteResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitDeleteResponseFail &&
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
  _$$UnitDeleteResponseFailCopyWith<_$UnitDeleteResponseFail> get copyWith =>
      __$$UnitDeleteResponseFailCopyWithImpl<_$UnitDeleteResponseFail>(
          this, _$identity);

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
    required TResult Function(UnitDeleteResponseFail value) FAIL,
    required TResult Function(UnitDeleteResponseError value) ERROR,
    required TResult Function(UnitDeleteResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitDeleteResponseFail value)? FAIL,
    TResult Function(UnitDeleteResponseError value)? ERROR,
    TResult Function(UnitDeleteResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitDeleteResponseFail value)? FAIL,
    TResult Function(UnitDeleteResponseError value)? ERROR,
    TResult Function(UnitDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitDeleteResponseFailToJson(
      this,
    );
  }
}

abstract class UnitDeleteResponseFail implements UnitDeleteResponse {
  const factory UnitDeleteResponseFail(
      final String status, final String? message) = _$UnitDeleteResponseFail;

  factory UnitDeleteResponseFail.fromJson(Map<String, dynamic> json) =
      _$UnitDeleteResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnitDeleteResponseFailCopyWith<_$UnitDeleteResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnitDeleteResponseErrorCopyWith<$Res>
    implements $UnitDeleteResponseCopyWith<$Res> {
  factory _$$UnitDeleteResponseErrorCopyWith(_$UnitDeleteResponseError value,
          $Res Function(_$UnitDeleteResponseError) then) =
      __$$UnitDeleteResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$UnitDeleteResponseErrorCopyWithImpl<$Res>
    extends _$UnitDeleteResponseCopyWithImpl<$Res>
    implements _$$UnitDeleteResponseErrorCopyWith<$Res> {
  __$$UnitDeleteResponseErrorCopyWithImpl(_$UnitDeleteResponseError _value,
      $Res Function(_$UnitDeleteResponseError) _then)
      : super(_value, (v) => _then(v as _$UnitDeleteResponseError));

  @override
  _$UnitDeleteResponseError get _value =>
      super._value as _$UnitDeleteResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UnitDeleteResponseError(
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
class _$UnitDeleteResponseError implements UnitDeleteResponseError {
  const _$UnitDeleteResponseError(this.status, this.message);

  factory _$UnitDeleteResponseError.fromJson(Map<String, dynamic> json) =>
      _$$UnitDeleteResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'UnitDeleteResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitDeleteResponseError &&
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
  _$$UnitDeleteResponseErrorCopyWith<_$UnitDeleteResponseError> get copyWith =>
      __$$UnitDeleteResponseErrorCopyWithImpl<_$UnitDeleteResponseError>(
          this, _$identity);

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
    required TResult Function(UnitDeleteResponseFail value) FAIL,
    required TResult Function(UnitDeleteResponseError value) ERROR,
    required TResult Function(UnitDeleteResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitDeleteResponseFail value)? FAIL,
    TResult Function(UnitDeleteResponseError value)? ERROR,
    TResult Function(UnitDeleteResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitDeleteResponseFail value)? FAIL,
    TResult Function(UnitDeleteResponseError value)? ERROR,
    TResult Function(UnitDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitDeleteResponseErrorToJson(
      this,
    );
  }
}

abstract class UnitDeleteResponseError implements UnitDeleteResponse {
  const factory UnitDeleteResponseError(
      final String status, final String? message) = _$UnitDeleteResponseError;

  factory UnitDeleteResponseError.fromJson(Map<String, dynamic> json) =
      _$UnitDeleteResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnitDeleteResponseErrorCopyWith<_$UnitDeleteResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnitDeleteResponseSuccessCopyWith<$Res>
    implements $UnitDeleteResponseCopyWith<$Res> {
  factory _$$UnitDeleteResponseSuccessCopyWith(
          _$UnitDeleteResponseSuccess value,
          $Res Function(_$UnitDeleteResponseSuccess) then) =
      __$$UnitDeleteResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$UnitDeleteResponseSuccessCopyWithImpl<$Res>
    extends _$UnitDeleteResponseCopyWithImpl<$Res>
    implements _$$UnitDeleteResponseSuccessCopyWith<$Res> {
  __$$UnitDeleteResponseSuccessCopyWithImpl(_$UnitDeleteResponseSuccess _value,
      $Res Function(_$UnitDeleteResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$UnitDeleteResponseSuccess));

  @override
  _$UnitDeleteResponseSuccess get _value =>
      super._value as _$UnitDeleteResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UnitDeleteResponseSuccess(
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
class _$UnitDeleteResponseSuccess implements UnitDeleteResponseSuccess {
  const _$UnitDeleteResponseSuccess(this.status, this.message);

  factory _$UnitDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$UnitDeleteResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'UnitDeleteResponse.SUCCESS(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitDeleteResponseSuccess &&
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
  _$$UnitDeleteResponseSuccessCopyWith<_$UnitDeleteResponseSuccess>
      get copyWith => __$$UnitDeleteResponseSuccessCopyWithImpl<
          _$UnitDeleteResponseSuccess>(this, _$identity);

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
    required TResult Function(UnitDeleteResponseFail value) FAIL,
    required TResult Function(UnitDeleteResponseError value) ERROR,
    required TResult Function(UnitDeleteResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnitDeleteResponseFail value)? FAIL,
    TResult Function(UnitDeleteResponseError value)? ERROR,
    TResult Function(UnitDeleteResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitDeleteResponseFail value)? FAIL,
    TResult Function(UnitDeleteResponseError value)? ERROR,
    TResult Function(UnitDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitDeleteResponseSuccessToJson(
      this,
    );
  }
}

abstract class UnitDeleteResponseSuccess implements UnitDeleteResponse {
  const factory UnitDeleteResponseSuccess(
      final String status, final String? message) = _$UnitDeleteResponseSuccess;

  factory UnitDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$UnitDeleteResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnitDeleteResponseSuccessCopyWith<_$UnitDeleteResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
