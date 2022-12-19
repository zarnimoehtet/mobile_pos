// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Supplier _$SupplierFromJson(Map<String, dynamic> json) {
  return _Supplier.fromJson(json);
}

/// @nodoc
mixin _$Supplier {
  @JsonKey(name: "name")
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  @HiveField(1)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  @HiveField(2)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(3)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(4)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(5)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(6)
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  @HiveField(7)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(8)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(9)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(10)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierCopyWith<Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierCopyWith<$Res> {
  factory $SupplierCopyWith(Supplier value, $Res Function(Supplier) then) =
      _$SupplierCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "email") @HiveField(1) String? email,
      @JsonKey(name: "phone") @HiveField(2) String? phone,
      @JsonKey(name: "description") @HiveField(3) String? desc,
      @JsonKey(name: "status") @HiveField(4) bool? status,
      @JsonKey(name: "_id") @HiveField(5) String? id,
      @JsonKey(name: "ownerid") @HiveField(6) Owner? owner,
      @JsonKey(name: "address") @HiveField(7) String? address,
      @JsonKey(name: "created_at") @HiveField(8) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(9) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(10) int? version});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$SupplierCopyWithImpl<$Res> implements $SupplierCopyWith<$Res> {
  _$SupplierCopyWithImpl(this._value, this._then);

  final Supplier _value;
  // ignore: unused_field
  final $Res Function(Supplier) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? desc = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_SupplierCopyWith<$Res> implements $SupplierCopyWith<$Res> {
  factory _$$_SupplierCopyWith(
          _$_Supplier value, $Res Function(_$_Supplier) then) =
      __$$_SupplierCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "email") @HiveField(1) String? email,
      @JsonKey(name: "phone") @HiveField(2) String? phone,
      @JsonKey(name: "description") @HiveField(3) String? desc,
      @JsonKey(name: "status") @HiveField(4) bool? status,
      @JsonKey(name: "_id") @HiveField(5) String? id,
      @JsonKey(name: "ownerid") @HiveField(6) Owner? owner,
      @JsonKey(name: "address") @HiveField(7) String? address,
      @JsonKey(name: "created_at") @HiveField(8) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(9) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(10) int? version});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_SupplierCopyWithImpl<$Res> extends _$SupplierCopyWithImpl<$Res>
    implements _$$_SupplierCopyWith<$Res> {
  __$$_SupplierCopyWithImpl(
      _$_Supplier _value, $Res Function(_$_Supplier) _then)
      : super(_value, (v) => _then(v as _$_Supplier));

  @override
  _$_Supplier get _value => super._value as _$_Supplier;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? desc = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_Supplier(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 13)
class _$_Supplier implements _Supplier {
  const _$_Supplier(
      @JsonKey(name: "name") @HiveField(0) this.name,
      @JsonKey(name: "email") @HiveField(1) this.email,
      @JsonKey(name: "phone") @HiveField(2) this.phone,
      @JsonKey(name: "description") @HiveField(3) this.desc,
      @JsonKey(name: "status") @HiveField(4) this.status,
      @JsonKey(name: "_id") @HiveField(5) this.id,
      @JsonKey(name: "ownerid") @HiveField(6) this.owner,
      @JsonKey(name: "address") @HiveField(7) this.address,
      @JsonKey(name: "created_at") @HiveField(8) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(9) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(10) this.version);

  factory _$_Supplier.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierFromJson(json);

  @override
  @JsonKey(name: "name")
  @HiveField(0)
  final String? name;
  @override
  @JsonKey(name: "email")
  @HiveField(1)
  final String? email;
  @override
  @JsonKey(name: "phone")
  @HiveField(2)
  final String? phone;
  @override
  @JsonKey(name: "description")
  @HiveField(3)
  final String? desc;
  @override
  @JsonKey(name: "status")
  @HiveField(4)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(5)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(6)
  final Owner? owner;
  @override
  @JsonKey(name: "address")
  @HiveField(7)
  final String? address;
  @override
  @JsonKey(name: "created_at")
  @HiveField(8)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(9)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(10)
  final int? version;

  @override
  String toString() {
    return 'Supplier(name: $name, email: $email, phone: $phone, desc: $desc, status: $status, id: $id, owner: $owner, address: $address, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Supplier &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_SupplierCopyWith<_$_Supplier> get copyWith =>
      __$$_SupplierCopyWithImpl<_$_Supplier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierToJson(
      this,
    );
  }
}

abstract class _Supplier implements Supplier {
  const factory _Supplier(
      @JsonKey(name: "name") @HiveField(0) final String? name,
      @JsonKey(name: "email") @HiveField(1) final String? email,
      @JsonKey(name: "phone") @HiveField(2) final String? phone,
      @JsonKey(name: "description") @HiveField(3) final String? desc,
      @JsonKey(name: "status") @HiveField(4) final bool? status,
      @JsonKey(name: "_id") @HiveField(5) final String? id,
      @JsonKey(name: "ownerid") @HiveField(6) final Owner? owner,
      @JsonKey(name: "address") @HiveField(7) final String? address,
      @JsonKey(name: "created_at") @HiveField(8) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(9) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(10) final int? version) = _$_Supplier;

  factory _Supplier.fromJson(Map<String, dynamic> json) = _$_Supplier.fromJson;

  @override
  @JsonKey(name: "name")
  @HiveField(0)
  String? get name;
  @override
  @JsonKey(name: "email")
  @HiveField(1)
  String? get email;
  @override
  @JsonKey(name: "phone")
  @HiveField(2)
  String? get phone;
  @override
  @JsonKey(name: "description")
  @HiveField(3)
  String? get desc;
  @override
  @JsonKey(name: "status")
  @HiveField(4)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(5)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(6)
  Owner? get owner;
  @override
  @JsonKey(name: "address")
  @HiveField(7)
  String? get address;
  @override
  @JsonKey(name: "created_at")
  @HiveField(8)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(9)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(10)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierCopyWith<_$_Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}

SupplierItem _$SupplierItemFromJson(Map<String, dynamic> json) {
  return _SupplierItem.fromJson(json);
}

/// @nodoc
mixin _$SupplierItem {
  @JsonKey(name: "name")
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  @HiveField(1)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  @HiveField(2)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(3)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(4)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(5)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(6)
  String? get ownerid => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  @HiveField(7)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(8)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(9)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(10)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierItemCopyWith<SupplierItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierItemCopyWith<$Res> {
  factory $SupplierItemCopyWith(
          SupplierItem value, $Res Function(SupplierItem) then) =
      _$SupplierItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "email") @HiveField(1) String? email,
      @JsonKey(name: "phone") @HiveField(2) String? phone,
      @JsonKey(name: "description") @HiveField(3) String? desc,
      @JsonKey(name: "status") @HiveField(4) bool? status,
      @JsonKey(name: "_id") @HiveField(5) String? id,
      @JsonKey(name: "ownerid") @HiveField(6) String? ownerid,
      @JsonKey(name: "address") @HiveField(7) String? address,
      @JsonKey(name: "created_at") @HiveField(8) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(9) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(10) int? version});
}

/// @nodoc
class _$SupplierItemCopyWithImpl<$Res> implements $SupplierItemCopyWith<$Res> {
  _$SupplierItemCopyWithImpl(this._value, this._then);

  final SupplierItem _value;
  // ignore: unused_field
  final $Res Function(SupplierItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? desc = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerid = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerid: ownerid == freezed
          ? _value.ownerid
          : ownerid // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SupplierItemCopyWith<$Res>
    implements $SupplierItemCopyWith<$Res> {
  factory _$$_SupplierItemCopyWith(
          _$_SupplierItem value, $Res Function(_$_SupplierItem) then) =
      __$$_SupplierItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "email") @HiveField(1) String? email,
      @JsonKey(name: "phone") @HiveField(2) String? phone,
      @JsonKey(name: "description") @HiveField(3) String? desc,
      @JsonKey(name: "status") @HiveField(4) bool? status,
      @JsonKey(name: "_id") @HiveField(5) String? id,
      @JsonKey(name: "ownerid") @HiveField(6) String? ownerid,
      @JsonKey(name: "address") @HiveField(7) String? address,
      @JsonKey(name: "created_at") @HiveField(8) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(9) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(10) int? version});
}

/// @nodoc
class __$$_SupplierItemCopyWithImpl<$Res>
    extends _$SupplierItemCopyWithImpl<$Res>
    implements _$$_SupplierItemCopyWith<$Res> {
  __$$_SupplierItemCopyWithImpl(
      _$_SupplierItem _value, $Res Function(_$_SupplierItem) _then)
      : super(_value, (v) => _then(v as _$_SupplierItem));

  @override
  _$_SupplierItem get _value => super._value as _$_SupplierItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? desc = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerid = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_SupplierItem(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerid == freezed
          ? _value.ownerid
          : ownerid // ignore: cast_nullable_to_non_nullable
              as String?,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 14)
class _$_SupplierItem implements _SupplierItem {
  const _$_SupplierItem(
      @JsonKey(name: "name") @HiveField(0) this.name,
      @JsonKey(name: "email") @HiveField(1) this.email,
      @JsonKey(name: "phone") @HiveField(2) this.phone,
      @JsonKey(name: "description") @HiveField(3) this.desc,
      @JsonKey(name: "status") @HiveField(4) this.status,
      @JsonKey(name: "_id") @HiveField(5) this.id,
      @JsonKey(name: "ownerid") @HiveField(6) this.ownerid,
      @JsonKey(name: "address") @HiveField(7) this.address,
      @JsonKey(name: "created_at") @HiveField(8) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(9) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(10) this.version);

  factory _$_SupplierItem.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierItemFromJson(json);

  @override
  @JsonKey(name: "name")
  @HiveField(0)
  final String? name;
  @override
  @JsonKey(name: "email")
  @HiveField(1)
  final String? email;
  @override
  @JsonKey(name: "phone")
  @HiveField(2)
  final String? phone;
  @override
  @JsonKey(name: "description")
  @HiveField(3)
  final String? desc;
  @override
  @JsonKey(name: "status")
  @HiveField(4)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(5)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(6)
  final String? ownerid;
  @override
  @JsonKey(name: "address")
  @HiveField(7)
  final String? address;
  @override
  @JsonKey(name: "created_at")
  @HiveField(8)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(9)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(10)
  final int? version;

  @override
  String toString() {
    return 'SupplierItem(name: $name, email: $email, phone: $phone, desc: $desc, status: $status, id: $id, ownerid: $ownerid, address: $address, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupplierItem &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerid, ownerid) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerid),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_SupplierItemCopyWith<_$_SupplierItem> get copyWith =>
      __$$_SupplierItemCopyWithImpl<_$_SupplierItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierItemToJson(
      this,
    );
  }
}

abstract class _SupplierItem implements SupplierItem {
  const factory _SupplierItem(
          @JsonKey(name: "name") @HiveField(0) final String? name,
          @JsonKey(name: "email") @HiveField(1) final String? email,
          @JsonKey(name: "phone") @HiveField(2) final String? phone,
          @JsonKey(name: "description") @HiveField(3) final String? desc,
          @JsonKey(name: "status") @HiveField(4) final bool? status,
          @JsonKey(name: "_id") @HiveField(5) final String? id,
          @JsonKey(name: "ownerid") @HiveField(6) final String? ownerid,
          @JsonKey(name: "address") @HiveField(7) final String? address,
          @JsonKey(name: "created_at") @HiveField(8) final String? createdAt,
          @JsonKey(name: "updated_at") @HiveField(9) final String? updatedAt,
          @JsonKey(name: "__v") @HiveField(10) final int? version) =
      _$_SupplierItem;

  factory _SupplierItem.fromJson(Map<String, dynamic> json) =
      _$_SupplierItem.fromJson;

  @override
  @JsonKey(name: "name")
  @HiveField(0)
  String? get name;
  @override
  @JsonKey(name: "email")
  @HiveField(1)
  String? get email;
  @override
  @JsonKey(name: "phone")
  @HiveField(2)
  String? get phone;
  @override
  @JsonKey(name: "description")
  @HiveField(3)
  String? get desc;
  @override
  @JsonKey(name: "status")
  @HiveField(4)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(5)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(6)
  String? get ownerid;
  @override
  @JsonKey(name: "address")
  @HiveField(7)
  String? get address;
  @override
  @JsonKey(name: "created_at")
  @HiveField(8)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(9)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(10)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierItemCopyWith<_$_SupplierItem> get copyWith =>
      throw _privateConstructorUsedError;
}
