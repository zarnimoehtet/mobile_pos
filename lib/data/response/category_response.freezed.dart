// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryListResponse _$CategoryListResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return CategoryListResponseFail.fromJson(json);
    case 'ERROR':
      return CategoryListResponseError.fromJson(json);
    case 'SUCCESS':
      return CategoryListResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'CategoryListResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$CategoryListResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryListResponseFail value) FAIL,
    required TResult Function(CategoryListResponseError value) ERROR,
    required TResult Function(CategoryListResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryListResponseFail value)? FAIL,
    TResult Function(CategoryListResponseError value)? ERROR,
    TResult Function(CategoryListResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryListResponseFail value)? FAIL,
    TResult Function(CategoryListResponseError value)? ERROR,
    TResult Function(CategoryListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryListResponseCopyWith<CategoryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListResponseCopyWith<$Res> {
  factory $CategoryListResponseCopyWith(CategoryListResponse value,
          $Res Function(CategoryListResponse) then) =
      _$CategoryListResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$CategoryListResponseCopyWithImpl<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  _$CategoryListResponseCopyWithImpl(this._value, this._then);

  final CategoryListResponse _value;
  // ignore: unused_field
  final $Res Function(CategoryListResponse) _then;

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
abstract class _$$CategoryListResponseFailCopyWith<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  factory _$$CategoryListResponseFailCopyWith(_$CategoryListResponseFail value,
          $Res Function(_$CategoryListResponseFail) then) =
      __$$CategoryListResponseFailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Category> categoryList});
}

/// @nodoc
class __$$CategoryListResponseFailCopyWithImpl<$Res>
    extends _$CategoryListResponseCopyWithImpl<$Res>
    implements _$$CategoryListResponseFailCopyWith<$Res> {
  __$$CategoryListResponseFailCopyWithImpl(_$CategoryListResponseFail _value,
      $Res Function(_$CategoryListResponseFail) _then)
      : super(_value, (v) => _then(v as _$CategoryListResponseFail));

  @override
  _$CategoryListResponseFail get _value =>
      super._value as _$CategoryListResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? categoryList = freezed,
  }) {
    return _then(_$CategoryListResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryList == freezed
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryListResponseFail implements CategoryListResponseFail {
  const _$CategoryListResponseFail(this.status, this.message,
      @JsonKey(name: "data") final List<Category> categoryList)
      : _categoryList = categoryList;

  factory _$CategoryListResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Category> _categoryList;
  @override
  @JsonKey(name: "data")
  List<Category> get categoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'CategoryListResponse.FAIL(status: $status, message: $message, categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  _$$CategoryListResponseFailCopyWith<_$CategoryListResponseFail>
      get copyWith =>
          __$$CategoryListResponseFailCopyWithImpl<_$CategoryListResponseFail>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)
        SUCCESS,
  }) {
    return FAIL(status, message, categoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message, categoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message, categoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryListResponseFail value) FAIL,
    required TResult Function(CategoryListResponseError value) ERROR,
    required TResult Function(CategoryListResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryListResponseFail value)? FAIL,
    TResult Function(CategoryListResponseError value)? ERROR,
    TResult Function(CategoryListResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryListResponseFail value)? FAIL,
    TResult Function(CategoryListResponseError value)? ERROR,
    TResult Function(CategoryListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseFailToJson(
      this,
    );
  }
}

abstract class CategoryListResponseFail implements CategoryListResponse {
  const factory CategoryListResponseFail(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Category> categoryList) =
      _$CategoryListResponseFail;

  factory CategoryListResponseFail.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Category> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$CategoryListResponseFailCopyWith<_$CategoryListResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryListResponseErrorCopyWith<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  factory _$$CategoryListResponseErrorCopyWith(
          _$CategoryListResponseError value,
          $Res Function(_$CategoryListResponseError) then) =
      __$$CategoryListResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CategoryListResponseErrorCopyWithImpl<$Res>
    extends _$CategoryListResponseCopyWithImpl<$Res>
    implements _$$CategoryListResponseErrorCopyWith<$Res> {
  __$$CategoryListResponseErrorCopyWithImpl(_$CategoryListResponseError _value,
      $Res Function(_$CategoryListResponseError) _then)
      : super(_value, (v) => _then(v as _$CategoryListResponseError));

  @override
  _$CategoryListResponseError get _value =>
      super._value as _$CategoryListResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CategoryListResponseError(
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
class _$CategoryListResponseError implements CategoryListResponseError {
  const _$CategoryListResponseError(this.status, this.message);

  factory _$CategoryListResponseError.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CategoryListResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseError &&
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
  _$$CategoryListResponseErrorCopyWith<_$CategoryListResponseError>
      get copyWith => __$$CategoryListResponseErrorCopyWithImpl<
          _$CategoryListResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
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
    required TResult Function(CategoryListResponseFail value) FAIL,
    required TResult Function(CategoryListResponseError value) ERROR,
    required TResult Function(CategoryListResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryListResponseFail value)? FAIL,
    TResult Function(CategoryListResponseError value)? ERROR,
    TResult Function(CategoryListResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryListResponseFail value)? FAIL,
    TResult Function(CategoryListResponseError value)? ERROR,
    TResult Function(CategoryListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseErrorToJson(
      this,
    );
  }
}

abstract class CategoryListResponseError implements CategoryListResponse {
  const factory CategoryListResponseError(
      final String status, final String? message) = _$CategoryListResponseError;

  factory CategoryListResponseError.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CategoryListResponseErrorCopyWith<_$CategoryListResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryListResponseSuccessCopyWith<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  factory _$$CategoryListResponseSuccessCopyWith(
          _$CategoryListResponseSuccess value,
          $Res Function(_$CategoryListResponseSuccess) then) =
      __$$CategoryListResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Category> categoryList});
}

/// @nodoc
class __$$CategoryListResponseSuccessCopyWithImpl<$Res>
    extends _$CategoryListResponseCopyWithImpl<$Res>
    implements _$$CategoryListResponseSuccessCopyWith<$Res> {
  __$$CategoryListResponseSuccessCopyWithImpl(
      _$CategoryListResponseSuccess _value,
      $Res Function(_$CategoryListResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$CategoryListResponseSuccess));

  @override
  _$CategoryListResponseSuccess get _value =>
      super._value as _$CategoryListResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? categoryList = freezed,
  }) {
    return _then(_$CategoryListResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryList == freezed
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryListResponseSuccess implements CategoryListResponseSuccess {
  const _$CategoryListResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<Category> categoryList)
      : _categoryList = categoryList;

  factory _$CategoryListResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Category> _categoryList;
  @override
  @JsonKey(name: "data")
  List<Category> get categoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'CategoryListResponse.SUCCESS(status: $status, message: $message, categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  _$$CategoryListResponseSuccessCopyWith<_$CategoryListResponseSuccess>
      get copyWith => __$$CategoryListResponseSuccessCopyWithImpl<
          _$CategoryListResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)
        SUCCESS,
  }) {
    return SUCCESS(status, message, categoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, categoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Category> categoryList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, categoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryListResponseFail value) FAIL,
    required TResult Function(CategoryListResponseError value) ERROR,
    required TResult Function(CategoryListResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryListResponseFail value)? FAIL,
    TResult Function(CategoryListResponseError value)? ERROR,
    TResult Function(CategoryListResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryListResponseFail value)? FAIL,
    TResult Function(CategoryListResponseError value)? ERROR,
    TResult Function(CategoryListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseSuccessToJson(
      this,
    );
  }
}

abstract class CategoryListResponseSuccess implements CategoryListResponse {
  const factory CategoryListResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Category> categoryList) =
      _$CategoryListResponseSuccess;

  factory CategoryListResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Category> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$CategoryListResponseSuccessCopyWith<_$CategoryListResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryAddResponse _$CategoryAddResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return CategoryAddResponseFail.fromJson(json);
    case 'ERROR':
      return CategoryAddResponseError.fromJson(json);
    case 'SUCCESS':
      return CategoryAddResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'CategoryAddResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$CategoryAddResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryAddResponseFail value) FAIL,
    required TResult Function(CategoryAddResponseError value) ERROR,
    required TResult Function(CategoryAddResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryAddResponseFail value)? FAIL,
    TResult Function(CategoryAddResponseError value)? ERROR,
    TResult Function(CategoryAddResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryAddResponseFail value)? FAIL,
    TResult Function(CategoryAddResponseError value)? ERROR,
    TResult Function(CategoryAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryAddResponseCopyWith<CategoryAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAddResponseCopyWith<$Res> {
  factory $CategoryAddResponseCopyWith(
          CategoryAddResponse value, $Res Function(CategoryAddResponse) then) =
      _$CategoryAddResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$CategoryAddResponseCopyWithImpl<$Res>
    implements $CategoryAddResponseCopyWith<$Res> {
  _$CategoryAddResponseCopyWithImpl(this._value, this._then);

  final CategoryAddResponse _value;
  // ignore: unused_field
  final $Res Function(CategoryAddResponse) _then;

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
abstract class _$$CategoryAddResponseFailCopyWith<$Res>
    implements $CategoryAddResponseCopyWith<$Res> {
  factory _$$CategoryAddResponseFailCopyWith(_$CategoryAddResponseFail value,
          $Res Function(_$CategoryAddResponseFail) then) =
      __$$CategoryAddResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CategoryAddResponseFailCopyWithImpl<$Res>
    extends _$CategoryAddResponseCopyWithImpl<$Res>
    implements _$$CategoryAddResponseFailCopyWith<$Res> {
  __$$CategoryAddResponseFailCopyWithImpl(_$CategoryAddResponseFail _value,
      $Res Function(_$CategoryAddResponseFail) _then)
      : super(_value, (v) => _then(v as _$CategoryAddResponseFail));

  @override
  _$CategoryAddResponseFail get _value =>
      super._value as _$CategoryAddResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CategoryAddResponseFail(
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
class _$CategoryAddResponseFail implements CategoryAddResponseFail {
  const _$CategoryAddResponseFail(this.status, this.message);

  factory _$CategoryAddResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAddResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CategoryAddResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAddResponseFail &&
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
  _$$CategoryAddResponseFailCopyWith<_$CategoryAddResponseFail> get copyWith =>
      __$$CategoryAddResponseFailCopyWithImpl<_$CategoryAddResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)
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
            @JsonKey(name: "data") CategoryItem category)?
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
            @JsonKey(name: "data") CategoryItem category)?
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
    required TResult Function(CategoryAddResponseFail value) FAIL,
    required TResult Function(CategoryAddResponseError value) ERROR,
    required TResult Function(CategoryAddResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryAddResponseFail value)? FAIL,
    TResult Function(CategoryAddResponseError value)? ERROR,
    TResult Function(CategoryAddResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryAddResponseFail value)? FAIL,
    TResult Function(CategoryAddResponseError value)? ERROR,
    TResult Function(CategoryAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAddResponseFailToJson(
      this,
    );
  }
}

abstract class CategoryAddResponseFail implements CategoryAddResponse {
  const factory CategoryAddResponseFail(
      final String status, final String? message) = _$CategoryAddResponseFail;

  factory CategoryAddResponseFail.fromJson(Map<String, dynamic> json) =
      _$CategoryAddResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CategoryAddResponseFailCopyWith<_$CategoryAddResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryAddResponseErrorCopyWith<$Res>
    implements $CategoryAddResponseCopyWith<$Res> {
  factory _$$CategoryAddResponseErrorCopyWith(_$CategoryAddResponseError value,
          $Res Function(_$CategoryAddResponseError) then) =
      __$$CategoryAddResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CategoryAddResponseErrorCopyWithImpl<$Res>
    extends _$CategoryAddResponseCopyWithImpl<$Res>
    implements _$$CategoryAddResponseErrorCopyWith<$Res> {
  __$$CategoryAddResponseErrorCopyWithImpl(_$CategoryAddResponseError _value,
      $Res Function(_$CategoryAddResponseError) _then)
      : super(_value, (v) => _then(v as _$CategoryAddResponseError));

  @override
  _$CategoryAddResponseError get _value =>
      super._value as _$CategoryAddResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CategoryAddResponseError(
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
class _$CategoryAddResponseError implements CategoryAddResponseError {
  const _$CategoryAddResponseError(this.status, this.message);

  factory _$CategoryAddResponseError.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAddResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CategoryAddResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAddResponseError &&
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
  _$$CategoryAddResponseErrorCopyWith<_$CategoryAddResponseError>
      get copyWith =>
          __$$CategoryAddResponseErrorCopyWithImpl<_$CategoryAddResponseError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)
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
            @JsonKey(name: "data") CategoryItem category)?
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
            @JsonKey(name: "data") CategoryItem category)?
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
    required TResult Function(CategoryAddResponseFail value) FAIL,
    required TResult Function(CategoryAddResponseError value) ERROR,
    required TResult Function(CategoryAddResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryAddResponseFail value)? FAIL,
    TResult Function(CategoryAddResponseError value)? ERROR,
    TResult Function(CategoryAddResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryAddResponseFail value)? FAIL,
    TResult Function(CategoryAddResponseError value)? ERROR,
    TResult Function(CategoryAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAddResponseErrorToJson(
      this,
    );
  }
}

abstract class CategoryAddResponseError implements CategoryAddResponse {
  const factory CategoryAddResponseError(
      final String status, final String? message) = _$CategoryAddResponseError;

  factory CategoryAddResponseError.fromJson(Map<String, dynamic> json) =
      _$CategoryAddResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CategoryAddResponseErrorCopyWith<_$CategoryAddResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryAddResponseSuccessCopyWith<$Res>
    implements $CategoryAddResponseCopyWith<$Res> {
  factory _$$CategoryAddResponseSuccessCopyWith(
          _$CategoryAddResponseSuccess value,
          $Res Function(_$CategoryAddResponseSuccess) then) =
      __$$CategoryAddResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") CategoryItem category});

  $CategoryItemCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryAddResponseSuccessCopyWithImpl<$Res>
    extends _$CategoryAddResponseCopyWithImpl<$Res>
    implements _$$CategoryAddResponseSuccessCopyWith<$Res> {
  __$$CategoryAddResponseSuccessCopyWithImpl(
      _$CategoryAddResponseSuccess _value,
      $Res Function(_$CategoryAddResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$CategoryAddResponseSuccess));

  @override
  _$CategoryAddResponseSuccess get _value =>
      super._value as _$CategoryAddResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? category = freezed,
  }) {
    return _then(_$CategoryAddResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryItem,
    ));
  }

  @override
  $CategoryItemCopyWith<$Res> get category {
    return $CategoryItemCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryAddResponseSuccess implements CategoryAddResponseSuccess {
  const _$CategoryAddResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.category);

  factory _$CategoryAddResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAddResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final CategoryItem category;

  @override
  String toString() {
    return 'CategoryAddResponse.SUCCESS(status: $status, message: $message, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAddResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$CategoryAddResponseSuccessCopyWith<_$CategoryAddResponseSuccess>
      get copyWith => __$$CategoryAddResponseSuccessCopyWithImpl<
          _$CategoryAddResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)
        SUCCESS,
  }) {
    return SUCCESS(status, message, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryAddResponseFail value) FAIL,
    required TResult Function(CategoryAddResponseError value) ERROR,
    required TResult Function(CategoryAddResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryAddResponseFail value)? FAIL,
    TResult Function(CategoryAddResponseError value)? ERROR,
    TResult Function(CategoryAddResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryAddResponseFail value)? FAIL,
    TResult Function(CategoryAddResponseError value)? ERROR,
    TResult Function(CategoryAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAddResponseSuccessToJson(
      this,
    );
  }
}

abstract class CategoryAddResponseSuccess implements CategoryAddResponse {
  const factory CategoryAddResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final CategoryItem category) =
      _$CategoryAddResponseSuccess;

  factory CategoryAddResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$CategoryAddResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  CategoryItem get category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryAddResponseSuccessCopyWith<_$CategoryAddResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryUpdateResponse _$CategoryUpdateResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return CategoryUpdateResponseFail.fromJson(json);
    case 'ERROR':
      return CategoryUpdateResponseError.fromJson(json);
    case 'SUCCESS':
      return CategoryUpdateResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'CategoryUpdateResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$CategoryUpdateResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryUpdateResponseFail value) FAIL,
    required TResult Function(CategoryUpdateResponseError value) ERROR,
    required TResult Function(CategoryUpdateResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryUpdateResponseFail value)? FAIL,
    TResult Function(CategoryUpdateResponseError value)? ERROR,
    TResult Function(CategoryUpdateResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryUpdateResponseFail value)? FAIL,
    TResult Function(CategoryUpdateResponseError value)? ERROR,
    TResult Function(CategoryUpdateResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryUpdateResponseCopyWith<CategoryUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryUpdateResponseCopyWith<$Res> {
  factory $CategoryUpdateResponseCopyWith(CategoryUpdateResponse value,
          $Res Function(CategoryUpdateResponse) then) =
      _$CategoryUpdateResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$CategoryUpdateResponseCopyWithImpl<$Res>
    implements $CategoryUpdateResponseCopyWith<$Res> {
  _$CategoryUpdateResponseCopyWithImpl(this._value, this._then);

  final CategoryUpdateResponse _value;
  // ignore: unused_field
  final $Res Function(CategoryUpdateResponse) _then;

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
abstract class _$$CategoryUpdateResponseFailCopyWith<$Res>
    implements $CategoryUpdateResponseCopyWith<$Res> {
  factory _$$CategoryUpdateResponseFailCopyWith(
          _$CategoryUpdateResponseFail value,
          $Res Function(_$CategoryUpdateResponseFail) then) =
      __$$CategoryUpdateResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CategoryUpdateResponseFailCopyWithImpl<$Res>
    extends _$CategoryUpdateResponseCopyWithImpl<$Res>
    implements _$$CategoryUpdateResponseFailCopyWith<$Res> {
  __$$CategoryUpdateResponseFailCopyWithImpl(
      _$CategoryUpdateResponseFail _value,
      $Res Function(_$CategoryUpdateResponseFail) _then)
      : super(_value, (v) => _then(v as _$CategoryUpdateResponseFail));

  @override
  _$CategoryUpdateResponseFail get _value =>
      super._value as _$CategoryUpdateResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CategoryUpdateResponseFail(
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
class _$CategoryUpdateResponseFail implements CategoryUpdateResponseFail {
  const _$CategoryUpdateResponseFail(this.status, this.message);

  factory _$CategoryUpdateResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$CategoryUpdateResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CategoryUpdateResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryUpdateResponseFail &&
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
  _$$CategoryUpdateResponseFailCopyWith<_$CategoryUpdateResponseFail>
      get copyWith => __$$CategoryUpdateResponseFailCopyWithImpl<
          _$CategoryUpdateResponseFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)
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
            @JsonKey(name: "data") CategoryItem category)?
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
            @JsonKey(name: "data") CategoryItem category)?
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
    required TResult Function(CategoryUpdateResponseFail value) FAIL,
    required TResult Function(CategoryUpdateResponseError value) ERROR,
    required TResult Function(CategoryUpdateResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryUpdateResponseFail value)? FAIL,
    TResult Function(CategoryUpdateResponseError value)? ERROR,
    TResult Function(CategoryUpdateResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryUpdateResponseFail value)? FAIL,
    TResult Function(CategoryUpdateResponseError value)? ERROR,
    TResult Function(CategoryUpdateResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryUpdateResponseFailToJson(
      this,
    );
  }
}

abstract class CategoryUpdateResponseFail implements CategoryUpdateResponse {
  const factory CategoryUpdateResponseFail(
          final String status, final String? message) =
      _$CategoryUpdateResponseFail;

  factory CategoryUpdateResponseFail.fromJson(Map<String, dynamic> json) =
      _$CategoryUpdateResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CategoryUpdateResponseFailCopyWith<_$CategoryUpdateResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryUpdateResponseErrorCopyWith<$Res>
    implements $CategoryUpdateResponseCopyWith<$Res> {
  factory _$$CategoryUpdateResponseErrorCopyWith(
          _$CategoryUpdateResponseError value,
          $Res Function(_$CategoryUpdateResponseError) then) =
      __$$CategoryUpdateResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CategoryUpdateResponseErrorCopyWithImpl<$Res>
    extends _$CategoryUpdateResponseCopyWithImpl<$Res>
    implements _$$CategoryUpdateResponseErrorCopyWith<$Res> {
  __$$CategoryUpdateResponseErrorCopyWithImpl(
      _$CategoryUpdateResponseError _value,
      $Res Function(_$CategoryUpdateResponseError) _then)
      : super(_value, (v) => _then(v as _$CategoryUpdateResponseError));

  @override
  _$CategoryUpdateResponseError get _value =>
      super._value as _$CategoryUpdateResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CategoryUpdateResponseError(
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
class _$CategoryUpdateResponseError implements CategoryUpdateResponseError {
  const _$CategoryUpdateResponseError(this.status, this.message);

  factory _$CategoryUpdateResponseError.fromJson(Map<String, dynamic> json) =>
      _$$CategoryUpdateResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CategoryUpdateResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryUpdateResponseError &&
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
  _$$CategoryUpdateResponseErrorCopyWith<_$CategoryUpdateResponseError>
      get copyWith => __$$CategoryUpdateResponseErrorCopyWithImpl<
          _$CategoryUpdateResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)
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
            @JsonKey(name: "data") CategoryItem category)?
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
            @JsonKey(name: "data") CategoryItem category)?
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
    required TResult Function(CategoryUpdateResponseFail value) FAIL,
    required TResult Function(CategoryUpdateResponseError value) ERROR,
    required TResult Function(CategoryUpdateResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryUpdateResponseFail value)? FAIL,
    TResult Function(CategoryUpdateResponseError value)? ERROR,
    TResult Function(CategoryUpdateResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryUpdateResponseFail value)? FAIL,
    TResult Function(CategoryUpdateResponseError value)? ERROR,
    TResult Function(CategoryUpdateResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryUpdateResponseErrorToJson(
      this,
    );
  }
}

abstract class CategoryUpdateResponseError implements CategoryUpdateResponse {
  const factory CategoryUpdateResponseError(
          final String status, final String? message) =
      _$CategoryUpdateResponseError;

  factory CategoryUpdateResponseError.fromJson(Map<String, dynamic> json) =
      _$CategoryUpdateResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CategoryUpdateResponseErrorCopyWith<_$CategoryUpdateResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryUpdateResponseSuccessCopyWith<$Res>
    implements $CategoryUpdateResponseCopyWith<$Res> {
  factory _$$CategoryUpdateResponseSuccessCopyWith(
          _$CategoryUpdateResponseSuccess value,
          $Res Function(_$CategoryUpdateResponseSuccess) then) =
      __$$CategoryUpdateResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") CategoryItem category});

  $CategoryItemCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryUpdateResponseSuccessCopyWithImpl<$Res>
    extends _$CategoryUpdateResponseCopyWithImpl<$Res>
    implements _$$CategoryUpdateResponseSuccessCopyWith<$Res> {
  __$$CategoryUpdateResponseSuccessCopyWithImpl(
      _$CategoryUpdateResponseSuccess _value,
      $Res Function(_$CategoryUpdateResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$CategoryUpdateResponseSuccess));

  @override
  _$CategoryUpdateResponseSuccess get _value =>
      super._value as _$CategoryUpdateResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? category = freezed,
  }) {
    return _then(_$CategoryUpdateResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryItem,
    ));
  }

  @override
  $CategoryItemCopyWith<$Res> get category {
    return $CategoryItemCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryUpdateResponseSuccess implements CategoryUpdateResponseSuccess {
  const _$CategoryUpdateResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.category);

  factory _$CategoryUpdateResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$CategoryUpdateResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final CategoryItem category;

  @override
  String toString() {
    return 'CategoryUpdateResponse.SUCCESS(status: $status, message: $message, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryUpdateResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$CategoryUpdateResponseSuccessCopyWith<_$CategoryUpdateResponseSuccess>
      get copyWith => __$$CategoryUpdateResponseSuccessCopyWithImpl<
          _$CategoryUpdateResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)
        SUCCESS,
  }) {
    return SUCCESS(status, message, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") CategoryItem category)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryUpdateResponseFail value) FAIL,
    required TResult Function(CategoryUpdateResponseError value) ERROR,
    required TResult Function(CategoryUpdateResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryUpdateResponseFail value)? FAIL,
    TResult Function(CategoryUpdateResponseError value)? ERROR,
    TResult Function(CategoryUpdateResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryUpdateResponseFail value)? FAIL,
    TResult Function(CategoryUpdateResponseError value)? ERROR,
    TResult Function(CategoryUpdateResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryUpdateResponseSuccessToJson(
      this,
    );
  }
}

abstract class CategoryUpdateResponseSuccess implements CategoryUpdateResponse {
  const factory CategoryUpdateResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final CategoryItem category) =
      _$CategoryUpdateResponseSuccess;

  factory CategoryUpdateResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$CategoryUpdateResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  CategoryItem get category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryUpdateResponseSuccessCopyWith<_$CategoryUpdateResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryDeleteResponse _$CategoryDeleteResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return CategoryDeleteResponseFail.fromJson(json);
    case 'ERROR':
      return CategoryDeleteResponseError.fromJson(json);
    case 'SUCCESS':
      return CategoryDeleteResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'CategoryDeleteResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$CategoryDeleteResponse {
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
    required TResult Function(CategoryDeleteResponseFail value) FAIL,
    required TResult Function(CategoryDeleteResponseError value) ERROR,
    required TResult Function(CategoryDeleteResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryDeleteResponseFail value)? FAIL,
    TResult Function(CategoryDeleteResponseError value)? ERROR,
    TResult Function(CategoryDeleteResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryDeleteResponseFail value)? FAIL,
    TResult Function(CategoryDeleteResponseError value)? ERROR,
    TResult Function(CategoryDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDeleteResponseCopyWith<CategoryDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDeleteResponseCopyWith<$Res> {
  factory $CategoryDeleteResponseCopyWith(CategoryDeleteResponse value,
          $Res Function(CategoryDeleteResponse) then) =
      _$CategoryDeleteResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$CategoryDeleteResponseCopyWithImpl<$Res>
    implements $CategoryDeleteResponseCopyWith<$Res> {
  _$CategoryDeleteResponseCopyWithImpl(this._value, this._then);

  final CategoryDeleteResponse _value;
  // ignore: unused_field
  final $Res Function(CategoryDeleteResponse) _then;

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
abstract class _$$CategoryDeleteResponseFailCopyWith<$Res>
    implements $CategoryDeleteResponseCopyWith<$Res> {
  factory _$$CategoryDeleteResponseFailCopyWith(
          _$CategoryDeleteResponseFail value,
          $Res Function(_$CategoryDeleteResponseFail) then) =
      __$$CategoryDeleteResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CategoryDeleteResponseFailCopyWithImpl<$Res>
    extends _$CategoryDeleteResponseCopyWithImpl<$Res>
    implements _$$CategoryDeleteResponseFailCopyWith<$Res> {
  __$$CategoryDeleteResponseFailCopyWithImpl(
      _$CategoryDeleteResponseFail _value,
      $Res Function(_$CategoryDeleteResponseFail) _then)
      : super(_value, (v) => _then(v as _$CategoryDeleteResponseFail));

  @override
  _$CategoryDeleteResponseFail get _value =>
      super._value as _$CategoryDeleteResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CategoryDeleteResponseFail(
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
class _$CategoryDeleteResponseFail implements CategoryDeleteResponseFail {
  const _$CategoryDeleteResponseFail(this.status, this.message);

  factory _$CategoryDeleteResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDeleteResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CategoryDeleteResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDeleteResponseFail &&
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
  _$$CategoryDeleteResponseFailCopyWith<_$CategoryDeleteResponseFail>
      get copyWith => __$$CategoryDeleteResponseFailCopyWithImpl<
          _$CategoryDeleteResponseFail>(this, _$identity);

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
    required TResult Function(CategoryDeleteResponseFail value) FAIL,
    required TResult Function(CategoryDeleteResponseError value) ERROR,
    required TResult Function(CategoryDeleteResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryDeleteResponseFail value)? FAIL,
    TResult Function(CategoryDeleteResponseError value)? ERROR,
    TResult Function(CategoryDeleteResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryDeleteResponseFail value)? FAIL,
    TResult Function(CategoryDeleteResponseError value)? ERROR,
    TResult Function(CategoryDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDeleteResponseFailToJson(
      this,
    );
  }
}

abstract class CategoryDeleteResponseFail implements CategoryDeleteResponse {
  const factory CategoryDeleteResponseFail(
          final String status, final String? message) =
      _$CategoryDeleteResponseFail;

  factory CategoryDeleteResponseFail.fromJson(Map<String, dynamic> json) =
      _$CategoryDeleteResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDeleteResponseFailCopyWith<_$CategoryDeleteResponseFail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryDeleteResponseErrorCopyWith<$Res>
    implements $CategoryDeleteResponseCopyWith<$Res> {
  factory _$$CategoryDeleteResponseErrorCopyWith(
          _$CategoryDeleteResponseError value,
          $Res Function(_$CategoryDeleteResponseError) then) =
      __$$CategoryDeleteResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CategoryDeleteResponseErrorCopyWithImpl<$Res>
    extends _$CategoryDeleteResponseCopyWithImpl<$Res>
    implements _$$CategoryDeleteResponseErrorCopyWith<$Res> {
  __$$CategoryDeleteResponseErrorCopyWithImpl(
      _$CategoryDeleteResponseError _value,
      $Res Function(_$CategoryDeleteResponseError) _then)
      : super(_value, (v) => _then(v as _$CategoryDeleteResponseError));

  @override
  _$CategoryDeleteResponseError get _value =>
      super._value as _$CategoryDeleteResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CategoryDeleteResponseError(
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
class _$CategoryDeleteResponseError implements CategoryDeleteResponseError {
  const _$CategoryDeleteResponseError(this.status, this.message);

  factory _$CategoryDeleteResponseError.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDeleteResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CategoryDeleteResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDeleteResponseError &&
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
  _$$CategoryDeleteResponseErrorCopyWith<_$CategoryDeleteResponseError>
      get copyWith => __$$CategoryDeleteResponseErrorCopyWithImpl<
          _$CategoryDeleteResponseError>(this, _$identity);

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
    required TResult Function(CategoryDeleteResponseFail value) FAIL,
    required TResult Function(CategoryDeleteResponseError value) ERROR,
    required TResult Function(CategoryDeleteResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryDeleteResponseFail value)? FAIL,
    TResult Function(CategoryDeleteResponseError value)? ERROR,
    TResult Function(CategoryDeleteResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryDeleteResponseFail value)? FAIL,
    TResult Function(CategoryDeleteResponseError value)? ERROR,
    TResult Function(CategoryDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDeleteResponseErrorToJson(
      this,
    );
  }
}

abstract class CategoryDeleteResponseError implements CategoryDeleteResponse {
  const factory CategoryDeleteResponseError(
          final String status, final String? message) =
      _$CategoryDeleteResponseError;

  factory CategoryDeleteResponseError.fromJson(Map<String, dynamic> json) =
      _$CategoryDeleteResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDeleteResponseErrorCopyWith<_$CategoryDeleteResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryDeleteResponseSuccessCopyWith<$Res>
    implements $CategoryDeleteResponseCopyWith<$Res> {
  factory _$$CategoryDeleteResponseSuccessCopyWith(
          _$CategoryDeleteResponseSuccess value,
          $Res Function(_$CategoryDeleteResponseSuccess) then) =
      __$$CategoryDeleteResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CategoryDeleteResponseSuccessCopyWithImpl<$Res>
    extends _$CategoryDeleteResponseCopyWithImpl<$Res>
    implements _$$CategoryDeleteResponseSuccessCopyWith<$Res> {
  __$$CategoryDeleteResponseSuccessCopyWithImpl(
      _$CategoryDeleteResponseSuccess _value,
      $Res Function(_$CategoryDeleteResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$CategoryDeleteResponseSuccess));

  @override
  _$CategoryDeleteResponseSuccess get _value =>
      super._value as _$CategoryDeleteResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CategoryDeleteResponseSuccess(
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
class _$CategoryDeleteResponseSuccess implements CategoryDeleteResponseSuccess {
  const _$CategoryDeleteResponseSuccess(this.status, this.message);

  factory _$CategoryDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDeleteResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CategoryDeleteResponse.SUCCESS(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDeleteResponseSuccess &&
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
  _$$CategoryDeleteResponseSuccessCopyWith<_$CategoryDeleteResponseSuccess>
      get copyWith => __$$CategoryDeleteResponseSuccessCopyWithImpl<
          _$CategoryDeleteResponseSuccess>(this, _$identity);

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
    required TResult Function(CategoryDeleteResponseFail value) FAIL,
    required TResult Function(CategoryDeleteResponseError value) ERROR,
    required TResult Function(CategoryDeleteResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryDeleteResponseFail value)? FAIL,
    TResult Function(CategoryDeleteResponseError value)? ERROR,
    TResult Function(CategoryDeleteResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryDeleteResponseFail value)? FAIL,
    TResult Function(CategoryDeleteResponseError value)? ERROR,
    TResult Function(CategoryDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDeleteResponseSuccessToJson(
      this,
    );
  }
}

abstract class CategoryDeleteResponseSuccess implements CategoryDeleteResponse {
  const factory CategoryDeleteResponseSuccess(
          final String status, final String? message) =
      _$CategoryDeleteResponseSuccess;

  factory CategoryDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$CategoryDeleteResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDeleteResponseSuccessCopyWith<_$CategoryDeleteResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
