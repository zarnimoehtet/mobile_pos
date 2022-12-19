// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expense_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpenseTitleRequest _$ExpenseTitleRequestFromJson(Map<String, dynamic> json) {
  return _ExpenseTitleRequest.fromJson(json);
}

/// @nodoc
mixin _$ExpenseTitleRequest {
  @JsonKey(name: "ownerid")
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseTitleRequestCopyWith<ExpenseTitleRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTitleRequestCopyWith<$Res> {
  factory $ExpenseTitleRequestCopyWith(
          ExpenseTitleRequest value, $Res Function(ExpenseTitleRequest) then) =
      _$ExpenseTitleRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$ExpenseTitleRequestCopyWithImpl<$Res>
    implements $ExpenseTitleRequestCopyWith<$Res> {
  _$ExpenseTitleRequestCopyWithImpl(this._value, this._then);

  final ExpenseTitleRequest _value;
  // ignore: unused_field
  final $Res Function(ExpenseTitleRequest) _then;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ExpenseTitleRequestCopyWith<$Res>
    implements $ExpenseTitleRequestCopyWith<$Res> {
  factory _$$_ExpenseTitleRequestCopyWith(_$_ExpenseTitleRequest value,
          $Res Function(_$_ExpenseTitleRequest) then) =
      __$$_ExpenseTitleRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class __$$_ExpenseTitleRequestCopyWithImpl<$Res>
    extends _$ExpenseTitleRequestCopyWithImpl<$Res>
    implements _$$_ExpenseTitleRequestCopyWith<$Res> {
  __$$_ExpenseTitleRequestCopyWithImpl(_$_ExpenseTitleRequest _value,
      $Res Function(_$_ExpenseTitleRequest) _then)
      : super(_value, (v) => _then(v as _$_ExpenseTitleRequest));

  @override
  _$_ExpenseTitleRequest get _value => super._value as _$_ExpenseTitleRequest;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ExpenseTitleRequest(
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpenseTitleRequest implements _ExpenseTitleRequest {
  const _$_ExpenseTitleRequest(@JsonKey(name: "ownerid") this.ownerId,
      @JsonKey(name: "name") this.name, @JsonKey(name: "status") this.status);

  factory _$_ExpenseTitleRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseTitleRequestFromJson(json);

  @override
  @JsonKey(name: "ownerid")
  final String? ownerId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'ExpenseTitleRequest(ownerId: $ownerId, name: $name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseTitleRequest &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ExpenseTitleRequestCopyWith<_$_ExpenseTitleRequest> get copyWith =>
      __$$_ExpenseTitleRequestCopyWithImpl<_$_ExpenseTitleRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseTitleRequestToJson(
      this,
    );
  }
}

abstract class _ExpenseTitleRequest implements ExpenseTitleRequest {
  const factory _ExpenseTitleRequest(
      @JsonKey(name: "ownerid") final String? ownerId,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "status") final String? status) = _$_ExpenseTitleRequest;

  factory _ExpenseTitleRequest.fromJson(Map<String, dynamic> json) =
      _$_ExpenseTitleRequest.fromJson;

  @override
  @JsonKey(name: "ownerid")
  String? get ownerId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseTitleRequestCopyWith<_$_ExpenseTitleRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseRequest _$ExpenseRequestFromJson(Map<String, dynamic> json) {
  return _ExpenseRequest.fromJson(json);
}

/// @nodoc
mixin _$ExpenseRequest {
  @JsonKey(name: "ownerid")
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "titleid")
  String? get titleId => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseRequestCopyWith<ExpenseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseRequestCopyWith<$Res> {
  factory $ExpenseRequestCopyWith(
          ExpenseRequest value, $Res Function(ExpenseRequest) then) =
      _$ExpenseRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "titleid") String? titleId,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "description") String? desc,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$ExpenseRequestCopyWithImpl<$Res>
    implements $ExpenseRequestCopyWith<$Res> {
  _$ExpenseRequestCopyWithImpl(this._value, this._then);

  final ExpenseRequest _value;
  // ignore: unused_field
  final $Res Function(ExpenseRequest) _then;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? titleId = freezed,
    Object? amount = freezed,
    Object? desc = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      titleId: titleId == freezed
          ? _value.titleId
          : titleId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ExpenseRequestCopyWith<$Res>
    implements $ExpenseRequestCopyWith<$Res> {
  factory _$$_ExpenseRequestCopyWith(
          _$_ExpenseRequest value, $Res Function(_$_ExpenseRequest) then) =
      __$$_ExpenseRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "titleid") String? titleId,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "description") String? desc,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class __$$_ExpenseRequestCopyWithImpl<$Res>
    extends _$ExpenseRequestCopyWithImpl<$Res>
    implements _$$_ExpenseRequestCopyWith<$Res> {
  __$$_ExpenseRequestCopyWithImpl(
      _$_ExpenseRequest _value, $Res Function(_$_ExpenseRequest) _then)
      : super(_value, (v) => _then(v as _$_ExpenseRequest));

  @override
  _$_ExpenseRequest get _value => super._value as _$_ExpenseRequest;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? titleId = freezed,
    Object? amount = freezed,
    Object? desc = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ExpenseRequest(
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      titleId == freezed
          ? _value.titleId
          : titleId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpenseRequest implements _ExpenseRequest {
  const _$_ExpenseRequest(
      @JsonKey(name: "ownerid") this.ownerId,
      @JsonKey(name: "titleid") this.titleId,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "description") this.desc,
      @JsonKey(name: "status") this.status);

  factory _$_ExpenseRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseRequestFromJson(json);

  @override
  @JsonKey(name: "ownerid")
  final String? ownerId;
  @override
  @JsonKey(name: "titleid")
  final String? titleId;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "description")
  final String? desc;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'ExpenseRequest(ownerId: $ownerId, titleId: $titleId, amount: $amount, desc: $desc, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseRequest &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.titleId, titleId) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(titleId),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ExpenseRequestCopyWith<_$_ExpenseRequest> get copyWith =>
      __$$_ExpenseRequestCopyWithImpl<_$_ExpenseRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseRequestToJson(
      this,
    );
  }
}

abstract class _ExpenseRequest implements ExpenseRequest {
  const factory _ExpenseRequest(
      @JsonKey(name: "ownerid") final String? ownerId,
      @JsonKey(name: "titleid") final String? titleId,
      @JsonKey(name: "amount") final int? amount,
      @JsonKey(name: "description") final String? desc,
      @JsonKey(name: "status") final String? status) = _$_ExpenseRequest;

  factory _ExpenseRequest.fromJson(Map<String, dynamic> json) =
      _$_ExpenseRequest.fromJson;

  @override
  @JsonKey(name: "ownerid")
  String? get ownerId;
  @override
  @JsonKey(name: "titleid")
  String? get titleId;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "description")
  String? get desc;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseRequestCopyWith<_$_ExpenseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
