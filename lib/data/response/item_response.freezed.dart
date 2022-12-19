// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemAddResponse _$ItemAddResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ItemAddResponseFail.fromJson(json);
    case 'ERROR':
      return ItemAddResponseError.fromJson(json);
    case 'SUCCESS':
      return ItemAddResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ItemAddResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ItemAddResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(
            String status, String? message, @JsonKey(name: "data") ItemRes item)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ItemRes item)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ItemRes item)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemAddResponseFail value) FAIL,
    required TResult Function(ItemAddResponseError value) ERROR,
    required TResult Function(ItemAddResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemAddResponseFail value)? FAIL,
    TResult Function(ItemAddResponseError value)? ERROR,
    TResult Function(ItemAddResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemAddResponseFail value)? FAIL,
    TResult Function(ItemAddResponseError value)? ERROR,
    TResult Function(ItemAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemAddResponseCopyWith<ItemAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemAddResponseCopyWith<$Res> {
  factory $ItemAddResponseCopyWith(
          ItemAddResponse value, $Res Function(ItemAddResponse) then) =
      _$ItemAddResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ItemAddResponseCopyWithImpl<$Res>
    implements $ItemAddResponseCopyWith<$Res> {
  _$ItemAddResponseCopyWithImpl(this._value, this._then);

  final ItemAddResponse _value;
  // ignore: unused_field
  final $Res Function(ItemAddResponse) _then;

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
abstract class _$$ItemAddResponseFailCopyWith<$Res>
    implements $ItemAddResponseCopyWith<$Res> {
  factory _$$ItemAddResponseFailCopyWith(_$ItemAddResponseFail value,
          $Res Function(_$ItemAddResponseFail) then) =
      __$$ItemAddResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ItemAddResponseFailCopyWithImpl<$Res>
    extends _$ItemAddResponseCopyWithImpl<$Res>
    implements _$$ItemAddResponseFailCopyWith<$Res> {
  __$$ItemAddResponseFailCopyWithImpl(
      _$ItemAddResponseFail _value, $Res Function(_$ItemAddResponseFail) _then)
      : super(_value, (v) => _then(v as _$ItemAddResponseFail));

  @override
  _$ItemAddResponseFail get _value => super._value as _$ItemAddResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ItemAddResponseFail(
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
class _$ItemAddResponseFail implements ItemAddResponseFail {
  const _$ItemAddResponseFail(this.status, this.message);

  factory _$ItemAddResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$ItemAddResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ItemAddResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAddResponseFail &&
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
  _$$ItemAddResponseFailCopyWith<_$ItemAddResponseFail> get copyWith =>
      __$$ItemAddResponseFailCopyWithImpl<_$ItemAddResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(
            String status, String? message, @JsonKey(name: "data") ItemRes item)
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
            @JsonKey(name: "data") ItemRes item)?
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
            @JsonKey(name: "data") ItemRes item)?
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
    required TResult Function(ItemAddResponseFail value) FAIL,
    required TResult Function(ItemAddResponseError value) ERROR,
    required TResult Function(ItemAddResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemAddResponseFail value)? FAIL,
    TResult Function(ItemAddResponseError value)? ERROR,
    TResult Function(ItemAddResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemAddResponseFail value)? FAIL,
    TResult Function(ItemAddResponseError value)? ERROR,
    TResult Function(ItemAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemAddResponseFailToJson(
      this,
    );
  }
}

abstract class ItemAddResponseFail implements ItemAddResponse {
  const factory ItemAddResponseFail(
      final String status, final String? message) = _$ItemAddResponseFail;

  factory ItemAddResponseFail.fromJson(Map<String, dynamic> json) =
      _$ItemAddResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ItemAddResponseFailCopyWith<_$ItemAddResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemAddResponseErrorCopyWith<$Res>
    implements $ItemAddResponseCopyWith<$Res> {
  factory _$$ItemAddResponseErrorCopyWith(_$ItemAddResponseError value,
          $Res Function(_$ItemAddResponseError) then) =
      __$$ItemAddResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ItemAddResponseErrorCopyWithImpl<$Res>
    extends _$ItemAddResponseCopyWithImpl<$Res>
    implements _$$ItemAddResponseErrorCopyWith<$Res> {
  __$$ItemAddResponseErrorCopyWithImpl(_$ItemAddResponseError _value,
      $Res Function(_$ItemAddResponseError) _then)
      : super(_value, (v) => _then(v as _$ItemAddResponseError));

  @override
  _$ItemAddResponseError get _value => super._value as _$ItemAddResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ItemAddResponseError(
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
class _$ItemAddResponseError implements ItemAddResponseError {
  const _$ItemAddResponseError(this.status, this.message);

  factory _$ItemAddResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ItemAddResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ItemAddResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAddResponseError &&
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
  _$$ItemAddResponseErrorCopyWith<_$ItemAddResponseError> get copyWith =>
      __$$ItemAddResponseErrorCopyWithImpl<_$ItemAddResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(
            String status, String? message, @JsonKey(name: "data") ItemRes item)
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
            @JsonKey(name: "data") ItemRes item)?
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
            @JsonKey(name: "data") ItemRes item)?
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
    required TResult Function(ItemAddResponseFail value) FAIL,
    required TResult Function(ItemAddResponseError value) ERROR,
    required TResult Function(ItemAddResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemAddResponseFail value)? FAIL,
    TResult Function(ItemAddResponseError value)? ERROR,
    TResult Function(ItemAddResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemAddResponseFail value)? FAIL,
    TResult Function(ItemAddResponseError value)? ERROR,
    TResult Function(ItemAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemAddResponseErrorToJson(
      this,
    );
  }
}

abstract class ItemAddResponseError implements ItemAddResponse {
  const factory ItemAddResponseError(
      final String status, final String? message) = _$ItemAddResponseError;

  factory ItemAddResponseError.fromJson(Map<String, dynamic> json) =
      _$ItemAddResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ItemAddResponseErrorCopyWith<_$ItemAddResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemAddResponseSuccessCopyWith<$Res>
    implements $ItemAddResponseCopyWith<$Res> {
  factory _$$ItemAddResponseSuccessCopyWith(_$ItemAddResponseSuccess value,
          $Res Function(_$ItemAddResponseSuccess) then) =
      __$$ItemAddResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status, String? message, @JsonKey(name: "data") ItemRes item});

  $ItemResCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemAddResponseSuccessCopyWithImpl<$Res>
    extends _$ItemAddResponseCopyWithImpl<$Res>
    implements _$$ItemAddResponseSuccessCopyWith<$Res> {
  __$$ItemAddResponseSuccessCopyWithImpl(_$ItemAddResponseSuccess _value,
      $Res Function(_$ItemAddResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ItemAddResponseSuccess));

  @override
  _$ItemAddResponseSuccess get _value =>
      super._value as _$ItemAddResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? item = freezed,
  }) {
    return _then(_$ItemAddResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemRes,
    ));
  }

  @override
  $ItemResCopyWith<$Res> get item {
    return $ItemResCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemAddResponseSuccess implements ItemAddResponseSuccess {
  const _$ItemAddResponseSuccess(
      this.status, this.message, @JsonKey(name: "data") this.item);

  factory _$ItemAddResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$ItemAddResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  @JsonKey(name: "data")
  final ItemRes item;

  @override
  String toString() {
    return 'ItemAddResponse.SUCCESS(status: $status, message: $message, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAddResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$ItemAddResponseSuccessCopyWith<_$ItemAddResponseSuccess> get copyWith =>
      __$$ItemAddResponseSuccessCopyWithImpl<_$ItemAddResponseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message) FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(
            String status, String? message, @JsonKey(name: "data") ItemRes item)
        SUCCESS,
  }) {
    return SUCCESS(status, message, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ItemRes item)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message)? FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") ItemRes item)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemAddResponseFail value) FAIL,
    required TResult Function(ItemAddResponseError value) ERROR,
    required TResult Function(ItemAddResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemAddResponseFail value)? FAIL,
    TResult Function(ItemAddResponseError value)? ERROR,
    TResult Function(ItemAddResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemAddResponseFail value)? FAIL,
    TResult Function(ItemAddResponseError value)? ERROR,
    TResult Function(ItemAddResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemAddResponseSuccessToJson(
      this,
    );
  }
}

abstract class ItemAddResponseSuccess implements ItemAddResponse {
  const factory ItemAddResponseSuccess(
      final String status,
      final String? message,
      @JsonKey(name: "data") final ItemRes item) = _$ItemAddResponseSuccess;

  factory ItemAddResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$ItemAddResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  ItemRes get item;
  @override
  @JsonKey(ignore: true)
  _$$ItemAddResponseSuccessCopyWith<_$ItemAddResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemListResponse _$ItemListResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ItemListResponseFail.fromJson(json);
    case 'ERROR':
      return ItemListResponseError.fromJson(json);
    case 'SUCCESS':
      return ItemListResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ItemListResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ItemListResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemListResponseFail value) FAIL,
    required TResult Function(ItemListResponseError value) ERROR,
    required TResult Function(ItemListResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemListResponseFail value)? FAIL,
    TResult Function(ItemListResponseError value)? ERROR,
    TResult Function(ItemListResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemListResponseFail value)? FAIL,
    TResult Function(ItemListResponseError value)? ERROR,
    TResult Function(ItemListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemListResponseCopyWith<ItemListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListResponseCopyWith<$Res> {
  factory $ItemListResponseCopyWith(
          ItemListResponse value, $Res Function(ItemListResponse) then) =
      _$ItemListResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ItemListResponseCopyWithImpl<$Res>
    implements $ItemListResponseCopyWith<$Res> {
  _$ItemListResponseCopyWithImpl(this._value, this._then);

  final ItemListResponse _value;
  // ignore: unused_field
  final $Res Function(ItemListResponse) _then;

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
abstract class _$$ItemListResponseFailCopyWith<$Res>
    implements $ItemListResponseCopyWith<$Res> {
  factory _$$ItemListResponseFailCopyWith(_$ItemListResponseFail value,
          $Res Function(_$ItemListResponseFail) then) =
      __$$ItemListResponseFailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Item> itemList});
}

/// @nodoc
class __$$ItemListResponseFailCopyWithImpl<$Res>
    extends _$ItemListResponseCopyWithImpl<$Res>
    implements _$$ItemListResponseFailCopyWith<$Res> {
  __$$ItemListResponseFailCopyWithImpl(_$ItemListResponseFail _value,
      $Res Function(_$ItemListResponseFail) _then)
      : super(_value, (v) => _then(v as _$ItemListResponseFail));

  @override
  _$ItemListResponseFail get _value => super._value as _$ItemListResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? itemList = freezed,
  }) {
    return _then(_$ItemListResponseFail(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      itemList == freezed
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemListResponseFail implements ItemListResponseFail {
  const _$ItemListResponseFail(this.status, this.message,
      @JsonKey(name: "data") final List<Item> itemList)
      : _itemList = itemList;

  factory _$ItemListResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$ItemListResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Item> _itemList;
  @override
  @JsonKey(name: "data")
  List<Item> get itemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'ItemListResponse.FAIL(status: $status, message: $message, itemList: $itemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemListResponseFail &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_itemList));

  @JsonKey(ignore: true)
  @override
  _$$ItemListResponseFailCopyWith<_$ItemListResponseFail> get copyWith =>
      __$$ItemListResponseFailCopyWithImpl<_$ItemListResponseFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)
        SUCCESS,
  }) {
    return FAIL(status, message, itemList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        SUCCESS,
  }) {
    return FAIL?.call(status, message, itemList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(status, message, itemList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemListResponseFail value) FAIL,
    required TResult Function(ItemListResponseError value) ERROR,
    required TResult Function(ItemListResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemListResponseFail value)? FAIL,
    TResult Function(ItemListResponseError value)? ERROR,
    TResult Function(ItemListResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemListResponseFail value)? FAIL,
    TResult Function(ItemListResponseError value)? ERROR,
    TResult Function(ItemListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemListResponseFailToJson(
      this,
    );
  }
}

abstract class ItemListResponseFail implements ItemListResponse {
  const factory ItemListResponseFail(final String status, final String? message,
          @JsonKey(name: "data") final List<Item> itemList) =
      _$ItemListResponseFail;

  factory ItemListResponseFail.fromJson(Map<String, dynamic> json) =
      _$ItemListResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Item> get itemList;
  @override
  @JsonKey(ignore: true)
  _$$ItemListResponseFailCopyWith<_$ItemListResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemListResponseErrorCopyWith<$Res>
    implements $ItemListResponseCopyWith<$Res> {
  factory _$$ItemListResponseErrorCopyWith(_$ItemListResponseError value,
          $Res Function(_$ItemListResponseError) then) =
      __$$ItemListResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ItemListResponseErrorCopyWithImpl<$Res>
    extends _$ItemListResponseCopyWithImpl<$Res>
    implements _$$ItemListResponseErrorCopyWith<$Res> {
  __$$ItemListResponseErrorCopyWithImpl(_$ItemListResponseError _value,
      $Res Function(_$ItemListResponseError) _then)
      : super(_value, (v) => _then(v as _$ItemListResponseError));

  @override
  _$ItemListResponseError get _value => super._value as _$ItemListResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ItemListResponseError(
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
class _$ItemListResponseError implements ItemListResponseError {
  const _$ItemListResponseError(this.status, this.message);

  factory _$ItemListResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ItemListResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ItemListResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemListResponseError &&
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
  _$$ItemListResponseErrorCopyWith<_$ItemListResponseError> get copyWith =>
      __$$ItemListResponseErrorCopyWithImpl<_$ItemListResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)
        SUCCESS,
  }) {
    return ERROR(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        SUCCESS,
  }) {
    return ERROR?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
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
    required TResult Function(ItemListResponseFail value) FAIL,
    required TResult Function(ItemListResponseError value) ERROR,
    required TResult Function(ItemListResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemListResponseFail value)? FAIL,
    TResult Function(ItemListResponseError value)? ERROR,
    TResult Function(ItemListResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemListResponseFail value)? FAIL,
    TResult Function(ItemListResponseError value)? ERROR,
    TResult Function(ItemListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemListResponseErrorToJson(
      this,
    );
  }
}

abstract class ItemListResponseError implements ItemListResponse {
  const factory ItemListResponseError(
      final String status, final String? message) = _$ItemListResponseError;

  factory ItemListResponseError.fromJson(Map<String, dynamic> json) =
      _$ItemListResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ItemListResponseErrorCopyWith<_$ItemListResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemListResponseSuccessCopyWith<$Res>
    implements $ItemListResponseCopyWith<$Res> {
  factory _$$ItemListResponseSuccessCopyWith(_$ItemListResponseSuccess value,
          $Res Function(_$ItemListResponseSuccess) then) =
      __$$ItemListResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String? message,
      @JsonKey(name: "data") List<Item> itemList});
}

/// @nodoc
class __$$ItemListResponseSuccessCopyWithImpl<$Res>
    extends _$ItemListResponseCopyWithImpl<$Res>
    implements _$$ItemListResponseSuccessCopyWith<$Res> {
  __$$ItemListResponseSuccessCopyWithImpl(_$ItemListResponseSuccess _value,
      $Res Function(_$ItemListResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ItemListResponseSuccess));

  @override
  _$ItemListResponseSuccess get _value =>
      super._value as _$ItemListResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? itemList = freezed,
  }) {
    return _then(_$ItemListResponseSuccess(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      itemList == freezed
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemListResponseSuccess implements ItemListResponseSuccess {
  const _$ItemListResponseSuccess(this.status, this.message,
      @JsonKey(name: "data") final List<Item> itemList)
      : _itemList = itemList;

  factory _$ItemListResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$ItemListResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  final List<Item> _itemList;
  @override
  @JsonKey(name: "data")
  List<Item> get itemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'ItemListResponse.SUCCESS(status: $status, message: $message, itemList: $itemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemListResponseSuccess &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_itemList));

  @JsonKey(ignore: true)
  @override
  _$$ItemListResponseSuccessCopyWith<_$ItemListResponseSuccess> get copyWith =>
      __$$ItemListResponseSuccessCopyWithImpl<_$ItemListResponseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)
        FAIL,
    required TResult Function(String status, String? message) ERROR,
    required TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)
        SUCCESS,
  }) {
    return SUCCESS(status, message, itemList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        SUCCESS,
  }) {
    return SUCCESS?.call(status, message, itemList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        FAIL,
    TResult Function(String status, String? message)? ERROR,
    TResult Function(String status, String? message,
            @JsonKey(name: "data") List<Item> itemList)?
        SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(status, message, itemList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemListResponseFail value) FAIL,
    required TResult Function(ItemListResponseError value) ERROR,
    required TResult Function(ItemListResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemListResponseFail value)? FAIL,
    TResult Function(ItemListResponseError value)? ERROR,
    TResult Function(ItemListResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemListResponseFail value)? FAIL,
    TResult Function(ItemListResponseError value)? ERROR,
    TResult Function(ItemListResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemListResponseSuccessToJson(
      this,
    );
  }
}

abstract class ItemListResponseSuccess implements ItemListResponse {
  const factory ItemListResponseSuccess(
          final String status,
          final String? message,
          @JsonKey(name: "data") final List<Item> itemList) =
      _$ItemListResponseSuccess;

  factory ItemListResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$ItemListResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @JsonKey(name: "data")
  List<Item> get itemList;
  @override
  @JsonKey(ignore: true)
  _$$ItemListResponseSuccessCopyWith<_$ItemListResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDeleteResponse _$ItemDeleteResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'FAIL':
      return ItemDeleteResponseFail.fromJson(json);
    case 'ERROR':
      return ItemDeleteResponseError.fromJson(json);
    case 'SUCCESS':
      return ItemDeleteResponseSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ItemDeleteResponse',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ItemDeleteResponse {
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
    required TResult Function(ItemDeleteResponseFail value) FAIL,
    required TResult Function(ItemDeleteResponseError value) ERROR,
    required TResult Function(ItemDeleteResponseSuccess value) SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDeleteResponseFail value)? FAIL,
    TResult Function(ItemDeleteResponseError value)? ERROR,
    TResult Function(ItemDeleteResponseSuccess value)? SUCCESS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDeleteResponseFail value)? FAIL,
    TResult Function(ItemDeleteResponseError value)? ERROR,
    TResult Function(ItemDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDeleteResponseCopyWith<ItemDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDeleteResponseCopyWith<$Res> {
  factory $ItemDeleteResponseCopyWith(
          ItemDeleteResponse value, $Res Function(ItemDeleteResponse) then) =
      _$ItemDeleteResponseCopyWithImpl<$Res>;
  $Res call({String status, String? message});
}

/// @nodoc
class _$ItemDeleteResponseCopyWithImpl<$Res>
    implements $ItemDeleteResponseCopyWith<$Res> {
  _$ItemDeleteResponseCopyWithImpl(this._value, this._then);

  final ItemDeleteResponse _value;
  // ignore: unused_field
  final $Res Function(ItemDeleteResponse) _then;

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
abstract class _$$ItemDeleteResponseFailCopyWith<$Res>
    implements $ItemDeleteResponseCopyWith<$Res> {
  factory _$$ItemDeleteResponseFailCopyWith(_$ItemDeleteResponseFail value,
          $Res Function(_$ItemDeleteResponseFail) then) =
      __$$ItemDeleteResponseFailCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ItemDeleteResponseFailCopyWithImpl<$Res>
    extends _$ItemDeleteResponseCopyWithImpl<$Res>
    implements _$$ItemDeleteResponseFailCopyWith<$Res> {
  __$$ItemDeleteResponseFailCopyWithImpl(_$ItemDeleteResponseFail _value,
      $Res Function(_$ItemDeleteResponseFail) _then)
      : super(_value, (v) => _then(v as _$ItemDeleteResponseFail));

  @override
  _$ItemDeleteResponseFail get _value =>
      super._value as _$ItemDeleteResponseFail;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ItemDeleteResponseFail(
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
class _$ItemDeleteResponseFail implements ItemDeleteResponseFail {
  const _$ItemDeleteResponseFail(this.status, this.message);

  factory _$ItemDeleteResponseFail.fromJson(Map<String, dynamic> json) =>
      _$$ItemDeleteResponseFailFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ItemDeleteResponse.FAIL(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDeleteResponseFail &&
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
  _$$ItemDeleteResponseFailCopyWith<_$ItemDeleteResponseFail> get copyWith =>
      __$$ItemDeleteResponseFailCopyWithImpl<_$ItemDeleteResponseFail>(
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
    required TResult Function(ItemDeleteResponseFail value) FAIL,
    required TResult Function(ItemDeleteResponseError value) ERROR,
    required TResult Function(ItemDeleteResponseSuccess value) SUCCESS,
  }) {
    return FAIL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDeleteResponseFail value)? FAIL,
    TResult Function(ItemDeleteResponseError value)? ERROR,
    TResult Function(ItemDeleteResponseSuccess value)? SUCCESS,
  }) {
    return FAIL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDeleteResponseFail value)? FAIL,
    TResult Function(ItemDeleteResponseError value)? ERROR,
    TResult Function(ItemDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (FAIL != null) {
      return FAIL(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDeleteResponseFailToJson(
      this,
    );
  }
}

abstract class ItemDeleteResponseFail implements ItemDeleteResponse {
  const factory ItemDeleteResponseFail(
      final String status, final String? message) = _$ItemDeleteResponseFail;

  factory ItemDeleteResponseFail.fromJson(Map<String, dynamic> json) =
      _$ItemDeleteResponseFail.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ItemDeleteResponseFailCopyWith<_$ItemDeleteResponseFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemDeleteResponseErrorCopyWith<$Res>
    implements $ItemDeleteResponseCopyWith<$Res> {
  factory _$$ItemDeleteResponseErrorCopyWith(_$ItemDeleteResponseError value,
          $Res Function(_$ItemDeleteResponseError) then) =
      __$$ItemDeleteResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ItemDeleteResponseErrorCopyWithImpl<$Res>
    extends _$ItemDeleteResponseCopyWithImpl<$Res>
    implements _$$ItemDeleteResponseErrorCopyWith<$Res> {
  __$$ItemDeleteResponseErrorCopyWithImpl(_$ItemDeleteResponseError _value,
      $Res Function(_$ItemDeleteResponseError) _then)
      : super(_value, (v) => _then(v as _$ItemDeleteResponseError));

  @override
  _$ItemDeleteResponseError get _value =>
      super._value as _$ItemDeleteResponseError;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ItemDeleteResponseError(
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
class _$ItemDeleteResponseError implements ItemDeleteResponseError {
  const _$ItemDeleteResponseError(this.status, this.message);

  factory _$ItemDeleteResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ItemDeleteResponseErrorFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ItemDeleteResponse.ERROR(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDeleteResponseError &&
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
  _$$ItemDeleteResponseErrorCopyWith<_$ItemDeleteResponseError> get copyWith =>
      __$$ItemDeleteResponseErrorCopyWithImpl<_$ItemDeleteResponseError>(
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
    required TResult Function(ItemDeleteResponseFail value) FAIL,
    required TResult Function(ItemDeleteResponseError value) ERROR,
    required TResult Function(ItemDeleteResponseSuccess value) SUCCESS,
  }) {
    return ERROR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDeleteResponseFail value)? FAIL,
    TResult Function(ItemDeleteResponseError value)? ERROR,
    TResult Function(ItemDeleteResponseSuccess value)? SUCCESS,
  }) {
    return ERROR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDeleteResponseFail value)? FAIL,
    TResult Function(ItemDeleteResponseError value)? ERROR,
    TResult Function(ItemDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (ERROR != null) {
      return ERROR(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDeleteResponseErrorToJson(
      this,
    );
  }
}

abstract class ItemDeleteResponseError implements ItemDeleteResponse {
  const factory ItemDeleteResponseError(
      final String status, final String? message) = _$ItemDeleteResponseError;

  factory ItemDeleteResponseError.fromJson(Map<String, dynamic> json) =
      _$ItemDeleteResponseError.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ItemDeleteResponseErrorCopyWith<_$ItemDeleteResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemDeleteResponseSuccessCopyWith<$Res>
    implements $ItemDeleteResponseCopyWith<$Res> {
  factory _$$ItemDeleteResponseSuccessCopyWith(
          _$ItemDeleteResponseSuccess value,
          $Res Function(_$ItemDeleteResponseSuccess) then) =
      __$$ItemDeleteResponseSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String status, String? message});
}

/// @nodoc
class __$$ItemDeleteResponseSuccessCopyWithImpl<$Res>
    extends _$ItemDeleteResponseCopyWithImpl<$Res>
    implements _$$ItemDeleteResponseSuccessCopyWith<$Res> {
  __$$ItemDeleteResponseSuccessCopyWithImpl(_$ItemDeleteResponseSuccess _value,
      $Res Function(_$ItemDeleteResponseSuccess) _then)
      : super(_value, (v) => _then(v as _$ItemDeleteResponseSuccess));

  @override
  _$ItemDeleteResponseSuccess get _value =>
      super._value as _$ItemDeleteResponseSuccess;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ItemDeleteResponseSuccess(
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
class _$ItemDeleteResponseSuccess implements ItemDeleteResponseSuccess {
  const _$ItemDeleteResponseSuccess(this.status, this.message);

  factory _$ItemDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =>
      _$$ItemDeleteResponseSuccessFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'ItemDeleteResponse.SUCCESS(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDeleteResponseSuccess &&
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
  _$$ItemDeleteResponseSuccessCopyWith<_$ItemDeleteResponseSuccess>
      get copyWith => __$$ItemDeleteResponseSuccessCopyWithImpl<
          _$ItemDeleteResponseSuccess>(this, _$identity);

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
    required TResult Function(ItemDeleteResponseFail value) FAIL,
    required TResult Function(ItemDeleteResponseError value) ERROR,
    required TResult Function(ItemDeleteResponseSuccess value) SUCCESS,
  }) {
    return SUCCESS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDeleteResponseFail value)? FAIL,
    TResult Function(ItemDeleteResponseError value)? ERROR,
    TResult Function(ItemDeleteResponseSuccess value)? SUCCESS,
  }) {
    return SUCCESS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDeleteResponseFail value)? FAIL,
    TResult Function(ItemDeleteResponseError value)? ERROR,
    TResult Function(ItemDeleteResponseSuccess value)? SUCCESS,
    required TResult orElse(),
  }) {
    if (SUCCESS != null) {
      return SUCCESS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDeleteResponseSuccessToJson(
      this,
    );
  }
}

abstract class ItemDeleteResponseSuccess implements ItemDeleteResponse {
  const factory ItemDeleteResponseSuccess(
      final String status, final String? message) = _$ItemDeleteResponseSuccess;

  factory ItemDeleteResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$ItemDeleteResponseSuccess.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ItemDeleteResponseSuccessCopyWith<_$ItemDeleteResponseSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
