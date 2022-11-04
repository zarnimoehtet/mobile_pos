// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'fail':
      return UserResponseFail.fromJson(json);
    case 'error':
      return UserResponseError.fromJson(json);
    case 'success':
      return UserResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'UserResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$UserResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) fail,
    required TResult Function(String status, String? message) error,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserResponseFail value) fail,
    required TResult Function(UserResponseError value) error,
    required TResult Function(UserResponseSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserResponseFail value)? fail,
    TResult Function(UserResponseError value)? error,
    TResult Function(UserResponseSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserResponseFail value)? fail,
    TResult Function(UserResponseError value)? error,
    TResult Function(UserResponseSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res> implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  final UserResponse _value;
  // ignore: unused_field
  final $Res Function(UserResponse) _then;

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
abstract class _$$UserResponseFailCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseFailCopyWith(
          _$UserResponseFail value, $Res Function(_$UserResponseFail) then) =
      __$$UserResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$UserResponseFailCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res>
    implements _$$UserResponseFailCopyWith<$Res> {
  __$$UserResponseFailCopyWithImpl(
      _$UserResponseFail _value, $Res Function(_$UserResponseFail) _then)
      : super(_value, (v) => _then(v as _$UserResponseFail));

  @override
  _$UserResponseFail get _value => super._value as _$UserResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UserResponseFail(
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
class _$UserResponseFail implements UserResponseFail {
  const _$UserResponseFail(this.status, this.message);

  factory _$UserResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'UserResponse.fail(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseFail &&
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
  _$$UserResponseFailCopyWith<_$UserResponseFail> get copyWith =>
      __$$UserResponseFailCopyWithImpl<_$UserResponseFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) fail,
    required TResult Function(String status, String? message) error,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)
        success,
  }) {
    return fail(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)?
        success,
  }) {
    return fail?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)?
        success,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserResponseFail value) fail,
    required TResult Function(UserResponseError value) error,
    required TResult Function(UserResponseSuccess value) success,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserResponseFail value)? fail,
    TResult Function(UserResponseError value)? error,
    TResult Function(UserResponseSuccess value)? success,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserResponseFail value)? fail,
    TResult Function(UserResponseError value)? error,
    TResult Function(UserResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseFailToJson(
      this,
    );
  }
}

abstract class UserResponseFail implements UserResponse {
  const factory UserResponseFail(final String status, final String? message) =
      _$UserResponseFail;

  factory UserResponseFail.fromJson(Map<String, dynamic> json) =
      _$UserResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseFailCopyWith<_$UserResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserResponseErrorCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseErrorCopyWith(
          _$UserResponseError value, $Res Function(_$UserResponseError) then) =
      __$$UserResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$UserResponseErrorCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res>
    implements _$$UserResponseErrorCopyWith<$Res> {
  __$$UserResponseErrorCopyWithImpl(
      _$UserResponseError _value, $Res Function(_$UserResponseError) _then)
      : super(_value, (v) => _then(v as _$UserResponseError));

  @override
  _$UserResponseError get _value => super._value as _$UserResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UserResponseError(
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
class _$UserResponseError implements UserResponseError {
  const _$UserResponseError(this.status, this.message);

  factory _$UserResponseError.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'UserResponse.error(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseError &&
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
  _$$UserResponseErrorCopyWith<_$UserResponseError> get copyWith =>
      __$$UserResponseErrorCopyWithImpl<_$UserResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) fail,
    required TResult Function(String status, String? message) error,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)
        success,
  }) {
    return error(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)?
        success,
  }) {
    return error?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserResponseFail value) fail,
    required TResult Function(UserResponseError value) error,
    required TResult Function(UserResponseSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserResponseFail value)? fail,
    TResult Function(UserResponseError value)? error,
    TResult Function(UserResponseSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserResponseFail value)? fail,
    TResult Function(UserResponseError value)? error,
    TResult Function(UserResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseErrorToJson(
      this,
    );
  }
}

abstract class UserResponseError implements UserResponse {
  const factory UserResponseError(final String status, final String? message) =
      _$UserResponseError;

  factory UserResponseError.fromJson(Map<String, dynamic> json) =
      _$UserResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseErrorCopyWith<_$UserResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserResponseSuccessCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseSuccessCopyWith(_$UserResponseSuccess value,
          $Res Function(_$UserResponseSuccess) then) =
      __$$UserResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<User> users});
}

/// @nodoc
class __$$UserResponseSuccessCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res>
    implements _$$UserResponseSuccessCopyWith<$Res> {
  __$$UserResponseSuccessCopyWithImpl(
      _$UserResponseSuccess _value, $Res Function(_$UserResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$UserResponseSuccess));

  @override
  _$UserResponseSuccess get _value => super._value as _$UserResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? users = freezed,
  }) {
    return _then(_$UserResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseSuccess implements UserResponseSuccess {
  const _$UserResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") final List<User> users)
      : _users = users;

  factory _$UserResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<User> _users;
  @override
  @JsonKey(name: "data")
  List<User> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserResponse.success(status: $status, message: $message, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$UserResponseSuccessCopyWith<_$UserResponseSuccess> get copyWith =>
      __$$UserResponseSuccessCopyWithImpl<_$UserResponseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) fail,
    required TResult Function(String status, String? message) error,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)
        success,
  }) {
    return success(status, message, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)?
        success,
  }) {
    return success?.call(status, message, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<User> users)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, message, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserResponseFail value) fail,
    required TResult Function(UserResponseError value) error,
    required TResult Function(UserResponseSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserResponseFail value)? fail,
    TResult Function(UserResponseError value)? error,
    TResult Function(UserResponseSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserResponseFail value)? fail,
    TResult Function(UserResponseError value)? error,
    TResult Function(UserResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseSuccessToJson(
      this,
    );
  }
}

abstract class UserResponseSuccess implements UserResponse {
  const factory UserResponseSuccess(final String status, final String? message,
      @JsonKey(name: "data") final List<User> users) = _$UserResponseSuccess;

  factory UserResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$UserResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseSuccessCopyWith<_$UserResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
