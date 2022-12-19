// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Expense _$ExpenseFromJson(Map<String, dynamic> json) {
  return _Expense.fromJson(json);
}

/// @nodoc
mixin _$Expense {
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(2)
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "titleid")
  @HiveField(3)
  ExpenseTitle? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  @HiveField(4)
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(6)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(7)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(8)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(9)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) Owner? owner,
      @JsonKey(name: "titleid") @HiveField(3) ExpenseTitle? title,
      @JsonKey(name: "amount") @HiveField(4) int? amount,
      @JsonKey(name: "description") @HiveField(6) String? desc,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});

  $OwnerCopyWith<$Res>? get owner;
  $ExpenseTitleCopyWith<$Res>? get title;
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res> implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  final Expense _value;
  // ignore: unused_field
  final $Res Function(Expense) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? desc = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ExpenseTitle?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $ExpenseTitleCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $ExpenseTitleCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value));
    });
  }
}

/// @nodoc
abstract class _$$_ExpenseCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$_ExpenseCopyWith(
          _$_Expense value, $Res Function(_$_Expense) then) =
      __$$_ExpenseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) Owner? owner,
      @JsonKey(name: "titleid") @HiveField(3) ExpenseTitle? title,
      @JsonKey(name: "amount") @HiveField(4) int? amount,
      @JsonKey(name: "description") @HiveField(6) String? desc,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});

  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $ExpenseTitleCopyWith<$Res>? get title;
}

/// @nodoc
class __$$_ExpenseCopyWithImpl<$Res> extends _$ExpenseCopyWithImpl<$Res>
    implements _$$_ExpenseCopyWith<$Res> {
  __$$_ExpenseCopyWithImpl(_$_Expense _value, $Res Function(_$_Expense) _then)
      : super(_value, (v) => _then(v as _$_Expense));

  @override
  _$_Expense get _value => super._value as _$_Expense;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? desc = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_Expense(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ExpenseTitle?,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 19)
class _$_Expense implements _Expense {
  const _$_Expense(
      @JsonKey(name: "status") @HiveField(0) this.status,
      @JsonKey(name: "_id") @HiveField(1) this.id,
      @JsonKey(name: "ownerid") @HiveField(2) this.owner,
      @JsonKey(name: "titleid") @HiveField(3) this.title,
      @JsonKey(name: "amount") @HiveField(4) this.amount,
      @JsonKey(name: "description") @HiveField(6) this.desc,
      @JsonKey(name: "created_at") @HiveField(7) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(9) this.version);

  factory _$_Expense.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseFromJson(json);

  @override
  @JsonKey(name: "status")
  @HiveField(0)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(1)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(2)
  final Owner? owner;
  @override
  @JsonKey(name: "titleid")
  @HiveField(3)
  final ExpenseTitle? title;
  @override
  @JsonKey(name: "amount")
  @HiveField(4)
  final int? amount;
  @override
  @JsonKey(name: "description")
  @HiveField(6)
  final String? desc;
  @override
  @JsonKey(name: "created_at")
  @HiveField(7)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(8)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(9)
  final int? version;

  @override
  String toString() {
    return 'Expense(status: $status, id: $id, owner: $owner, title: $title, amount: $amount, desc: $desc, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Expense &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_ExpenseCopyWith<_$_Expense> get copyWith =>
      __$$_ExpenseCopyWithImpl<_$_Expense>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseToJson(
      this,
    );
  }
}

abstract class _Expense implements Expense {
  const factory _Expense(
      @JsonKey(name: "status") @HiveField(0) final bool? status,
      @JsonKey(name: "_id") @HiveField(1) final String? id,
      @JsonKey(name: "ownerid") @HiveField(2) final Owner? owner,
      @JsonKey(name: "titleid") @HiveField(3) final ExpenseTitle? title,
      @JsonKey(name: "amount") @HiveField(4) final int? amount,
      @JsonKey(name: "description") @HiveField(6) final String? desc,
      @JsonKey(name: "created_at") @HiveField(7) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) final int? version) = _$_Expense;

  factory _Expense.fromJson(Map<String, dynamic> json) = _$_Expense.fromJson;

  @override
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(2)
  Owner? get owner;
  @override
  @JsonKey(name: "titleid")
  @HiveField(3)
  ExpenseTitle? get title;
  @override
  @JsonKey(name: "amount")
  @HiveField(4)
  int? get amount;
  @override
  @JsonKey(name: "description")
  @HiveField(6)
  String? get desc;
  @override
  @JsonKey(name: "created_at")
  @HiveField(7)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(8)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(9)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseCopyWith<_$_Expense> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseItem _$ExpenseItemFromJson(Map<String, dynamic> json) {
  return _ExpenseItem.fromJson(json);
}

/// @nodoc
mixin _$ExpenseItem {
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(2)
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "titleid")
  @HiveField(3)
  String? get titleId => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  @HiveField(4)
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(6)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(7)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(8)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(9)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseItemCopyWith<ExpenseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseItemCopyWith<$Res> {
  factory $ExpenseItemCopyWith(
          ExpenseItem value, $Res Function(ExpenseItem) then) =
      _$ExpenseItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) String? ownerId,
      @JsonKey(name: "titleid") @HiveField(3) String? titleId,
      @JsonKey(name: "amount") @HiveField(4) int? amount,
      @JsonKey(name: "description") @HiveField(6) String? desc,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});
}

/// @nodoc
class _$ExpenseItemCopyWithImpl<$Res> implements $ExpenseItemCopyWith<$Res> {
  _$ExpenseItemCopyWithImpl(this._value, this._then);

  final ExpenseItem _value;
  // ignore: unused_field
  final $Res Function(ExpenseItem) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? titleId = freezed,
    Object? amount = freezed,
    Object? desc = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ExpenseItemCopyWith<$Res>
    implements $ExpenseItemCopyWith<$Res> {
  factory _$$_ExpenseItemCopyWith(
          _$_ExpenseItem value, $Res Function(_$_ExpenseItem) then) =
      __$$_ExpenseItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) String? ownerId,
      @JsonKey(name: "titleid") @HiveField(3) String? titleId,
      @JsonKey(name: "amount") @HiveField(4) int? amount,
      @JsonKey(name: "description") @HiveField(6) String? desc,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});
}

/// @nodoc
class __$$_ExpenseItemCopyWithImpl<$Res> extends _$ExpenseItemCopyWithImpl<$Res>
    implements _$$_ExpenseItemCopyWith<$Res> {
  __$$_ExpenseItemCopyWithImpl(
      _$_ExpenseItem _value, $Res Function(_$_ExpenseItem) _then)
      : super(_value, (v) => _then(v as _$_ExpenseItem));

  @override
  _$_ExpenseItem get _value => super._value as _$_ExpenseItem;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? titleId = freezed,
    Object? amount = freezed,
    Object? desc = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_ExpenseItem(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 20)
class _$_ExpenseItem implements _ExpenseItem {
  const _$_ExpenseItem(
      @JsonKey(name: "status") @HiveField(0) this.status,
      @JsonKey(name: "_id") @HiveField(1) this.id,
      @JsonKey(name: "ownerid") @HiveField(2) this.ownerId,
      @JsonKey(name: "titleid") @HiveField(3) this.titleId,
      @JsonKey(name: "amount") @HiveField(4) this.amount,
      @JsonKey(name: "description") @HiveField(6) this.desc,
      @JsonKey(name: "created_at") @HiveField(7) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(9) this.version);

  factory _$_ExpenseItem.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseItemFromJson(json);

  @override
  @JsonKey(name: "status")
  @HiveField(0)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(1)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(2)
  final String? ownerId;
  @override
  @JsonKey(name: "titleid")
  @HiveField(3)
  final String? titleId;
  @override
  @JsonKey(name: "amount")
  @HiveField(4)
  final int? amount;
  @override
  @JsonKey(name: "description")
  @HiveField(6)
  final String? desc;
  @override
  @JsonKey(name: "created_at")
  @HiveField(7)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(8)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(9)
  final int? version;

  @override
  String toString() {
    return 'ExpenseItem(status: $status, id: $id, ownerId: $ownerId, titleId: $titleId, amount: $amount, desc: $desc, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseItem &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.titleId, titleId) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(titleId),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_ExpenseItemCopyWith<_$_ExpenseItem> get copyWith =>
      __$$_ExpenseItemCopyWithImpl<_$_ExpenseItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseItemToJson(
      this,
    );
  }
}

abstract class _ExpenseItem implements ExpenseItem {
  const factory _ExpenseItem(
      @JsonKey(name: "status") @HiveField(0) final bool? status,
      @JsonKey(name: "_id") @HiveField(1) final String? id,
      @JsonKey(name: "ownerid") @HiveField(2) final String? ownerId,
      @JsonKey(name: "titleid") @HiveField(3) final String? titleId,
      @JsonKey(name: "amount") @HiveField(4) final int? amount,
      @JsonKey(name: "description") @HiveField(6) final String? desc,
      @JsonKey(name: "created_at") @HiveField(7) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) final int? version) = _$_ExpenseItem;

  factory _ExpenseItem.fromJson(Map<String, dynamic> json) =
      _$_ExpenseItem.fromJson;

  @override
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(2)
  String? get ownerId;
  @override
  @JsonKey(name: "titleid")
  @HiveField(3)
  String? get titleId;
  @override
  @JsonKey(name: "amount")
  @HiveField(4)
  int? get amount;
  @override
  @JsonKey(name: "description")
  @HiveField(6)
  String? get desc;
  @override
  @JsonKey(name: "created_at")
  @HiveField(7)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(8)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(9)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseItemCopyWith<_$_ExpenseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseTitle _$ExpenseTitleFromJson(Map<String, dynamic> json) {
  return _ExpenseTitle.fromJson(json);
}

/// @nodoc
mixin _$ExpenseTitle {
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(2)
  Owner? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(7)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(8)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(9)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseTitleCopyWith<ExpenseTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTitleCopyWith<$Res> {
  factory $ExpenseTitleCopyWith(
          ExpenseTitle value, $Res Function(ExpenseTitle) then) =
      _$ExpenseTitleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) Owner? ownerId,
      @JsonKey(name: "name") @HiveField(3) String? name,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});

  $OwnerCopyWith<$Res>? get ownerId;
}

/// @nodoc
class _$ExpenseTitleCopyWithImpl<$Res> implements $ExpenseTitleCopyWith<$Res> {
  _$ExpenseTitleCopyWithImpl(this._value, this._then);

  final ExpenseTitle _value;
  // ignore: unused_field
  final $Res Function(ExpenseTitle) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as Owner?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $OwnerCopyWith<$Res>? get ownerId {
    if (_value.ownerId == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.ownerId!, (value) {
      return _then(_value.copyWith(ownerId: value));
    });
  }
}

/// @nodoc
abstract class _$$_ExpenseTitleCopyWith<$Res>
    implements $ExpenseTitleCopyWith<$Res> {
  factory _$$_ExpenseTitleCopyWith(
          _$_ExpenseTitle value, $Res Function(_$_ExpenseTitle) then) =
      __$$_ExpenseTitleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) Owner? ownerId,
      @JsonKey(name: "name") @HiveField(3) String? name,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});

  @override
  $OwnerCopyWith<$Res>? get ownerId;
}

/// @nodoc
class __$$_ExpenseTitleCopyWithImpl<$Res>
    extends _$ExpenseTitleCopyWithImpl<$Res>
    implements _$$_ExpenseTitleCopyWith<$Res> {
  __$$_ExpenseTitleCopyWithImpl(
      _$_ExpenseTitle _value, $Res Function(_$_ExpenseTitle) _then)
      : super(_value, (v) => _then(v as _$_ExpenseTitle));

  @override
  _$_ExpenseTitle get _value => super._value as _$_ExpenseTitle;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_ExpenseTitle(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as Owner?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 17)
class _$_ExpenseTitle implements _ExpenseTitle {
  const _$_ExpenseTitle(
      @JsonKey(name: "status") @HiveField(0) this.status,
      @JsonKey(name: "_id") @HiveField(1) this.id,
      @JsonKey(name: "ownerid") @HiveField(2) this.ownerId,
      @JsonKey(name: "name") @HiveField(3) this.name,
      @JsonKey(name: "created_at") @HiveField(7) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(9) this.version);

  factory _$_ExpenseTitle.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseTitleFromJson(json);

  @override
  @JsonKey(name: "status")
  @HiveField(0)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(1)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(2)
  final Owner? ownerId;
  @override
  @JsonKey(name: "name")
  @HiveField(3)
  final String? name;
  @override
  @JsonKey(name: "created_at")
  @HiveField(7)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(8)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(9)
  final int? version;

  @override
  String toString() {
    return 'ExpenseTitle(status: $status, id: $id, ownerId: $ownerId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseTitle &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_ExpenseTitleCopyWith<_$_ExpenseTitle> get copyWith =>
      __$$_ExpenseTitleCopyWithImpl<_$_ExpenseTitle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseTitleToJson(
      this,
    );
  }
}

abstract class _ExpenseTitle implements ExpenseTitle {
  const factory _ExpenseTitle(
      @JsonKey(name: "status") @HiveField(0) final bool? status,
      @JsonKey(name: "_id") @HiveField(1) final String? id,
      @JsonKey(name: "ownerid") @HiveField(2) final Owner? ownerId,
      @JsonKey(name: "name") @HiveField(3) final String? name,
      @JsonKey(name: "created_at") @HiveField(7) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) final int? version) = _$_ExpenseTitle;

  factory _ExpenseTitle.fromJson(Map<String, dynamic> json) =
      _$_ExpenseTitle.fromJson;

  @override
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(2)
  Owner? get ownerId;
  @override
  @JsonKey(name: "name")
  @HiveField(3)
  String? get name;
  @override
  @JsonKey(name: "created_at")
  @HiveField(7)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(8)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(9)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseTitleCopyWith<_$_ExpenseTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseTitleItem _$ExpenseTitleItemFromJson(Map<String, dynamic> json) {
  return _ExpenseTitleItem.fromJson(json);
}

/// @nodoc
mixin _$ExpenseTitleItem {
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(2)
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(7)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(8)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(9)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseTitleItemCopyWith<ExpenseTitleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTitleItemCopyWith<$Res> {
  factory $ExpenseTitleItemCopyWith(
          ExpenseTitleItem value, $Res Function(ExpenseTitleItem) then) =
      _$ExpenseTitleItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) String? ownerId,
      @JsonKey(name: "name") @HiveField(3) String? name,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});
}

/// @nodoc
class _$ExpenseTitleItemCopyWithImpl<$Res>
    implements $ExpenseTitleItemCopyWith<$Res> {
  _$ExpenseTitleItemCopyWithImpl(this._value, this._then);

  final ExpenseTitleItem _value;
  // ignore: unused_field
  final $Res Function(ExpenseTitleItem) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ExpenseTitleItemCopyWith<$Res>
    implements $ExpenseTitleItemCopyWith<$Res> {
  factory _$$_ExpenseTitleItemCopyWith(
          _$_ExpenseTitleItem value, $Res Function(_$_ExpenseTitleItem) then) =
      __$$_ExpenseTitleItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) String? ownerId,
      @JsonKey(name: "name") @HiveField(3) String? name,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});
}

/// @nodoc
class __$$_ExpenseTitleItemCopyWithImpl<$Res>
    extends _$ExpenseTitleItemCopyWithImpl<$Res>
    implements _$$_ExpenseTitleItemCopyWith<$Res> {
  __$$_ExpenseTitleItemCopyWithImpl(
      _$_ExpenseTitleItem _value, $Res Function(_$_ExpenseTitleItem) _then)
      : super(_value, (v) => _then(v as _$_ExpenseTitleItem));

  @override
  _$_ExpenseTitleItem get _value => super._value as _$_ExpenseTitleItem;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_ExpenseTitleItem(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 18)
class _$_ExpenseTitleItem implements _ExpenseTitleItem {
  const _$_ExpenseTitleItem(
      @JsonKey(name: "status") @HiveField(0) this.status,
      @JsonKey(name: "_id") @HiveField(1) this.id,
      @JsonKey(name: "ownerid") @HiveField(2) this.ownerId,
      @JsonKey(name: "name") @HiveField(3) this.name,
      @JsonKey(name: "created_at") @HiveField(7) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(9) this.version);

  factory _$_ExpenseTitleItem.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseTitleItemFromJson(json);

  @override
  @JsonKey(name: "status")
  @HiveField(0)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(1)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(2)
  final String? ownerId;
  @override
  @JsonKey(name: "name")
  @HiveField(3)
  final String? name;
  @override
  @JsonKey(name: "created_at")
  @HiveField(7)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(8)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(9)
  final int? version;

  @override
  String toString() {
    return 'ExpenseTitleItem(status: $status, id: $id, ownerId: $ownerId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseTitleItem &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_ExpenseTitleItemCopyWith<_$_ExpenseTitleItem> get copyWith =>
      __$$_ExpenseTitleItemCopyWithImpl<_$_ExpenseTitleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseTitleItemToJson(
      this,
    );
  }
}

abstract class _ExpenseTitleItem implements ExpenseTitleItem {
  const factory _ExpenseTitleItem(
          @JsonKey(name: "status") @HiveField(0) final bool? status,
          @JsonKey(name: "_id") @HiveField(1) final String? id,
          @JsonKey(name: "ownerid") @HiveField(2) final String? ownerId,
          @JsonKey(name: "name") @HiveField(3) final String? name,
          @JsonKey(name: "created_at") @HiveField(7) final String? createdAt,
          @JsonKey(name: "updated_at") @HiveField(8) final String? updatedAt,
          @JsonKey(name: "__v") @HiveField(9) final int? version) =
      _$_ExpenseTitleItem;

  factory _ExpenseTitleItem.fromJson(Map<String, dynamic> json) =
      _$_ExpenseTitleItem.fromJson;

  @override
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(2)
  String? get ownerId;
  @override
  @JsonKey(name: "name")
  @HiveField(3)
  String? get name;
  @override
  @JsonKey(name: "created_at")
  @HiveField(7)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(8)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(9)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseTitleItemCopyWith<_$_ExpenseTitleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
