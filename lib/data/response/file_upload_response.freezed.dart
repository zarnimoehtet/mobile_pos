// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileUploadResponse _$FileUploadResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'fail':
      return FileUploadResponseFail.fromJson(json);
    case 'error':
      return FileUploadResponseError.fromJson(json);
    case 'success':
      return FileUploadResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'FileUploadResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$FileUploadResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) fail,
    required TResult Function(String status, String? message) error,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Media> filePath)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Media> filePath)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Media> filePath)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadResponseFail value) fail,
    required TResult Function(FileUploadResponseError value) error,
    required TResult Function(FileUploadResponseSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadResponseFail value)? fail,
    TResult Function(FileUploadResponseError value)? error,
    TResult Function(FileUploadResponseSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadResponseFail value)? fail,
    TResult Function(FileUploadResponseError value)? error,
    TResult Function(FileUploadResponseSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileUploadResponseCopyWith<FileUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadResponseCopyWith<$Res> {
  factory $FileUploadResponseCopyWith(
          FileUploadResponse value, $Res Function(FileUploadResponse) then) =
      _$FileUploadResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$FileUploadResponseCopyWithImpl<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  _$FileUploadResponseCopyWithImpl(this._value, this._then);

  final FileUploadResponse _value;
  // ignore: unused_field
  final $Res Function(FileUploadResponse) _then;

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
abstract class _$$FileUploadResponseFailCopyWith<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  factory _$$FileUploadResponseFailCopyWith(_$FileUploadResponseFail value,
          $Res Function(_$FileUploadResponseFail) then) =
      __$$FileUploadResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$FileUploadResponseFailCopyWithImpl<$Res>
    extends _$FileUploadResponseCopyWithImpl<$Res>
    implements _$$FileUploadResponseFailCopyWith<$Res> {
  __$$FileUploadResponseFailCopyWithImpl(_$FileUploadResponseFail _value,
      $Res Function(_$FileUploadResponseFail) _then)
      : super(_value, (v) => _then(v as _$FileUploadResponseFail));

  @override
  _$FileUploadResponseFail get _value =>
      super._value as _$FileUploadResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$FileUploadResponseFail(
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
class _$FileUploadResponseFail implements FileUploadResponseFail {
  const _$FileUploadResponseFail(this.status, this.message);

  factory _$FileUploadResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'FileUploadResponse.fail(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadResponseFail &&
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
  _$$FileUploadResponseFailCopyWith<_$FileUploadResponseFail> get copyWith =>
      __$$FileUploadResponseFailCopyWithImpl<_$FileUploadResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) fail,
    required TResult Function(String status, String? message) error,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Media> filePath)
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
            @JsonKey(name: "data") List<Media> filePath)?
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
            @JsonKey(name: "data") List<Media> filePath)?
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
    required TResult Function(FileUploadResponseFail value) fail,
    required TResult Function(FileUploadResponseError value) error,
    required TResult Function(FileUploadResponseSuccess value) success,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadResponseFail value)? fail,
    TResult Function(FileUploadResponseError value)? error,
    TResult Function(FileUploadResponseSuccess value)? success,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadResponseFail value)? fail,
    TResult Function(FileUploadResponseError value)? error,
    TResult Function(FileUploadResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadResponseFailToJson(
      this,
    );
  }
}

abstract class FileUploadResponseFail implements FileUploadResponse {
  const factory FileUploadResponseFail(
      final String status, final String? message) = _$FileUploadResponseFail;

  factory FileUploadResponseFail.fromJson(Map<String, dynamic> json) =
      _$FileUploadResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FileUploadResponseFailCopyWith<_$FileUploadResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileUploadResponseErrorCopyWith<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  factory _$$FileUploadResponseErrorCopyWith(_$FileUploadResponseError value,
          $Res Function(_$FileUploadResponseError) then) =
      __$$FileUploadResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$FileUploadResponseErrorCopyWithImpl<$Res>
    extends _$FileUploadResponseCopyWithImpl<$Res>
    implements _$$FileUploadResponseErrorCopyWith<$Res> {
  __$$FileUploadResponseErrorCopyWithImpl(_$FileUploadResponseError _value,
      $Res Function(_$FileUploadResponseError) _then)
      : super(_value, (v) => _then(v as _$FileUploadResponseError));

  @override
  _$FileUploadResponseError get _value =>
      super._value as _$FileUploadResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$FileUploadResponseError(
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
class _$FileUploadResponseError implements FileUploadResponseError {
  const _$FileUploadResponseError(this.status, this.message);

  factory _$FileUploadResponseError.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'FileUploadResponse.error(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadResponseError &&
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
  _$$FileUploadResponseErrorCopyWith<_$FileUploadResponseError> get copyWith =>
      __$$FileUploadResponseErrorCopyWithImpl<_$FileUploadResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) fail,
    required TResult Function(String status, String? message) error,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Media> filePath)
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
            @JsonKey(name: "data") List<Media> filePath)?
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
            @JsonKey(name: "data") List<Media> filePath)?
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
    required TResult Function(FileUploadResponseFail value) fail,
    required TResult Function(FileUploadResponseError value) error,
    required TResult Function(FileUploadResponseSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadResponseFail value)? fail,
    TResult Function(FileUploadResponseError value)? error,
    TResult Function(FileUploadResponseSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadResponseFail value)? fail,
    TResult Function(FileUploadResponseError value)? error,
    TResult Function(FileUploadResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadResponseErrorToJson(
      this,
    );
  }
}

abstract class FileUploadResponseError implements FileUploadResponse {
  const factory FileUploadResponseError(
      final String status, final String? message) = _$FileUploadResponseError;

  factory FileUploadResponseError.fromJson(Map<String, dynamic> json) =
      _$FileUploadResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FileUploadResponseErrorCopyWith<_$FileUploadResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileUploadResponseSuccessCopyWith<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  factory _$$FileUploadResponseSuccessCopyWith(
          _$FileUploadResponseSuccess value,
          $Res Function(_$FileUploadResponseSuccess) then) =
      __$$FileUploadResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Media> filePath});
}

/// @nodoc
class __$$FileUploadResponseSuccessCopyWithImpl<$Res>
    extends _$FileUploadResponseCopyWithImpl<$Res>
    implements _$$FileUploadResponseSuccessCopyWith<$Res> {
  __$$FileUploadResponseSuccessCopyWithImpl(_$FileUploadResponseSuccess _value,
      $Res Function(_$FileUploadResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$FileUploadResponseSuccess));

  @override
  _$FileUploadResponseSuccess get _value =>
      super._value as _$FileUploadResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_$FileUploadResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath == freezed
          ? _value._filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileUploadResponseSuccess implements FileUploadResponseSuccess {
  const _$FileUploadResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<Media> filePath)
      : _filePath = filePath;

  factory _$FileUploadResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Media> _filePath;
  @override
  @JsonKey(name: "data")
  List<Media> get filePath {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filePath);
  }

  @override
  String toString() {
    return 'FileUploadResponse.success(status: $status, message: $message, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._filePath, _filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_filePath));

  @JsonKey(ignore: true)
  @override
  _$$FileUploadResponseSuccessCopyWith<_$FileUploadResponseSuccess>
      get copyWith => __$$FileUploadResponseSuccessCopyWithImpl<
          _$FileUploadResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) fail,
    required TResult Function(String status, String? message) error,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Media> filePath)
        success,
  }) {
    return success(status, message, filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Media> filePath)?
        success,
  }) {
    return success?.call(status, message, filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? fail,
    TResult Function(String status, String? message)? error,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Media> filePath)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, message, filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadResponseFail value) fail,
    required TResult Function(FileUploadResponseError value) error,
    required TResult Function(FileUploadResponseSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadResponseFail value)? fail,
    TResult Function(FileUploadResponseError value)? error,
    TResult Function(FileUploadResponseSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadResponseFail value)? fail,
    TResult Function(FileUploadResponseError value)? error,
    TResult Function(FileUploadResponseSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadResponseSuccessToJson(
      this,
    );
  }
}

abstract class FileUploadResponseSuccess implements FileUploadResponse {
  const factory FileUploadResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Media> filePath) =
      _$FileUploadResponseSuccess;

  factory FileUploadResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$FileUploadResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Media> get filePath;
  @override
  @JsonKey(ignore: true)
  _$$FileUploadResponseSuccessCopyWith<_$FileUploadResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
