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
