// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeItem _$EmployeeItemFromJson(Map<String, dynamic> json) {
  return _EmployeeItem.fromJson(json);
}

/// @nodoc
mixin _$EmployeeItem {
  @JsonKey(name: "name")
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  @HiveField(1)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  @HiveField(2)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  @HiveField(3)
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(5)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(6)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(7)
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "pincode")
  @HiveField(8)
  String? get pincode => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(9)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(10)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(11)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeItemCopyWith<EmployeeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeItemCopyWith<$Res> {
  factory $EmployeeItemCopyWith(
          EmployeeItem value, $Res Function(EmployeeItem) then) =
      _$EmployeeItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "email") @HiveField(1) String? email,
      @JsonKey(name: "phone") @HiveField(2) String? phone,
      @JsonKey(name: "role") @HiveField(3) String? role,
      @JsonKey(name: "description") @HiveField(4) String? description,
      @JsonKey(name: "status") @HiveField(5) bool? status,
      @JsonKey(name: "_id") @HiveField(6) String? id,
      @JsonKey(name: "ownerid") @HiveField(7) Owner? owner,
      @JsonKey(name: "pincode") @HiveField(8) String? pincode,
      @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(11) int? version});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$EmployeeItemCopyWithImpl<$Res> implements $EmployeeItemCopyWith<$Res> {
  _$EmployeeItemCopyWithImpl(this._value, this._then);

  final EmployeeItem _value;
  // ignore: unused_field
  final $Res Function(EmployeeItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? pincode = freezed,
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
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_EmployeeItemCopyWith<$Res>
    implements $EmployeeItemCopyWith<$Res> {
  factory _$$_EmployeeItemCopyWith(
          _$_EmployeeItem value, $Res Function(_$_EmployeeItem) then) =
      __$$_EmployeeItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "email") @HiveField(1) String? email,
      @JsonKey(name: "phone") @HiveField(2) String? phone,
      @JsonKey(name: "role") @HiveField(3) String? role,
      @JsonKey(name: "description") @HiveField(4) String? description,
      @JsonKey(name: "status") @HiveField(5) bool? status,
      @JsonKey(name: "_id") @HiveField(6) String? id,
      @JsonKey(name: "ownerid") @HiveField(7) Owner? owner,
      @JsonKey(name: "pincode") @HiveField(8) String? pincode,
      @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(11) int? version});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_EmployeeItemCopyWithImpl<$Res>
    extends _$EmployeeItemCopyWithImpl<$Res>
    implements _$$_EmployeeItemCopyWith<$Res> {
  __$$_EmployeeItemCopyWithImpl(
      _$_EmployeeItem _value, $Res Function(_$_EmployeeItem) _then)
      : super(_value, (v) => _then(v as _$_EmployeeItem));

  @override
  _$_EmployeeItem get _value => super._value as _$_EmployeeItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? pincode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_EmployeeItem(
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
      role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 6)
class _$_EmployeeItem implements _EmployeeItem {
  const _$_EmployeeItem(
      @JsonKey(name: "name") @HiveField(0) this.name,
      @JsonKey(name: "email") @HiveField(1) this.email,
      @JsonKey(name: "phone") @HiveField(2) this.phone,
      @JsonKey(name: "role") @HiveField(3) this.role,
      @JsonKey(name: "description") @HiveField(4) this.description,
      @JsonKey(name: "status") @HiveField(5) this.status,
      @JsonKey(name: "_id") @HiveField(6) this.id,
      @JsonKey(name: "ownerid") @HiveField(7) this.owner,
      @JsonKey(name: "pincode") @HiveField(8) this.pincode,
      @JsonKey(name: "created_at") @HiveField(9) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(11) this.version);

  factory _$_EmployeeItem.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeItemFromJson(json);

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
  @JsonKey(name: "role")
  @HiveField(3)
  final String? role;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  final String? description;
  @override
  @JsonKey(name: "status")
  @HiveField(5)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(6)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(7)
  final Owner? owner;
  @override
  @JsonKey(name: "pincode")
  @HiveField(8)
  final String? pincode;
  @override
  @JsonKey(name: "created_at")
  @HiveField(9)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(10)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(11)
  final int? version;

  @override
  String toString() {
    return 'EmployeeItem(name: $name, email: $email, phone: $phone, role: $role, description: $description, status: $status, id: $id, owner: $owner, pincode: $pincode, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeItem &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.pincode, pincode) &&
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
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(pincode),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeItemCopyWith<_$_EmployeeItem> get copyWith =>
      __$$_EmployeeItemCopyWithImpl<_$_EmployeeItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeItemToJson(
      this,
    );
  }
}

abstract class _EmployeeItem implements EmployeeItem {
  const factory _EmployeeItem(
          @JsonKey(name: "name") @HiveField(0) final String? name,
          @JsonKey(name: "email") @HiveField(1) final String? email,
          @JsonKey(name: "phone") @HiveField(2) final String? phone,
          @JsonKey(name: "role") @HiveField(3) final String? role,
          @JsonKey(name: "description") @HiveField(4) final String? description,
          @JsonKey(name: "status") @HiveField(5) final bool? status,
          @JsonKey(name: "_id") @HiveField(6) final String? id,
          @JsonKey(name: "ownerid") @HiveField(7) final Owner? owner,
          @JsonKey(name: "pincode") @HiveField(8) final String? pincode,
          @JsonKey(name: "created_at") @HiveField(9) final String? createdAt,
          @JsonKey(name: "updated_at") @HiveField(10) final String? updatedAt,
          @JsonKey(name: "__v") @HiveField(11) final int? version) =
      _$_EmployeeItem;

  factory _EmployeeItem.fromJson(Map<String, dynamic> json) =
      _$_EmployeeItem.fromJson;

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
  @JsonKey(name: "role")
  @HiveField(3)
  String? get role;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  String? get description;
  @override
  @JsonKey(name: "status")
  @HiveField(5)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(6)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(7)
  Owner? get owner;
  @override
  @JsonKey(name: "pincode")
  @HiveField(8)
  String? get pincode;
  @override
  @JsonKey(name: "created_at")
  @HiveField(9)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(10)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(11)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeItemCopyWith<_$_EmployeeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
