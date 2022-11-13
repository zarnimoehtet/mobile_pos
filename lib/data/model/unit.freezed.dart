// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Unit _$UnitFromJson(Map<String, dynamic> json) {
  return _Unit.fromJson(json);
}

/// @nodoc
mixin _$Unit {
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(2)
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(4)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(5)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(6)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(7)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitCopyWith<Unit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitCopyWith<$Res> {
  factory $UnitCopyWith(Unit value, $Res Function(Unit) then) =
      _$UnitCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) Owner? owner,
      @JsonKey(name: "name") @HiveField(3) String? name,
      @JsonKey(name: "description") @HiveField(4) String? desc,
      @JsonKey(name: "created_at") @HiveField(5) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(6) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(7) int? version});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$UnitCopyWithImpl<$Res> implements $UnitCopyWith<$Res> {
  _$UnitCopyWithImpl(this._value, this._then);

  final Unit _value;
  // ignore: unused_field
  final $Res Function(Unit) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? name = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$_UnitCopyWith<$Res> implements $UnitCopyWith<$Res> {
  factory _$$_UnitCopyWith(_$_Unit value, $Res Function(_$_Unit) then) =
      __$$_UnitCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) Owner? owner,
      @JsonKey(name: "name") @HiveField(3) String? name,
      @JsonKey(name: "description") @HiveField(4) String? desc,
      @JsonKey(name: "created_at") @HiveField(5) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(6) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(7) int? version});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_UnitCopyWithImpl<$Res> extends _$UnitCopyWithImpl<$Res>
    implements _$$_UnitCopyWith<$Res> {
  __$$_UnitCopyWithImpl(_$_Unit _value, $Res Function(_$_Unit) _then)
      : super(_value, (v) => _then(v as _$_Unit));

  @override
  _$_Unit get _value => super._value as _$_Unit;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_Unit(
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
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
@HiveType(typeId: 10)
class _$_Unit implements _Unit {
  const _$_Unit(
      @JsonKey(name: "status") @HiveField(0) this.status,
      @JsonKey(name: "_id") @HiveField(1) this.id,
      @JsonKey(name: "ownerid") @HiveField(2) this.owner,
      @JsonKey(name: "name") @HiveField(3) this.name,
      @JsonKey(name: "description") @HiveField(4) this.desc,
      @JsonKey(name: "created_at") @HiveField(5) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(6) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(7) this.version);

  factory _$_Unit.fromJson(Map<String, dynamic> json) => _$$_UnitFromJson(json);

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
  @JsonKey(name: "name")
  @HiveField(3)
  final String? name;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  final String? desc;
  @override
  @JsonKey(name: "created_at")
  @HiveField(5)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(6)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(7)
  final int? version;

  @override
  String toString() {
    return 'Unit(status: $status, id: $id, owner: $owner, name: $name, desc: $desc, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unit &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.name, name) &&
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
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_UnitCopyWith<_$_Unit> get copyWith =>
      __$$_UnitCopyWithImpl<_$_Unit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitToJson(
      this,
    );
  }
}

abstract class _Unit implements Unit {
  const factory _Unit(
      @JsonKey(name: "status") @HiveField(0) final bool? status,
      @JsonKey(name: "_id") @HiveField(1) final String? id,
      @JsonKey(name: "ownerid") @HiveField(2) final Owner? owner,
      @JsonKey(name: "name") @HiveField(3) final String? name,
      @JsonKey(name: "description") @HiveField(4) final String? desc,
      @JsonKey(name: "created_at") @HiveField(5) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(6) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(7) final int? version) = _$_Unit;

  factory _Unit.fromJson(Map<String, dynamic> json) = _$_Unit.fromJson;

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
  @JsonKey(name: "name")
  @HiveField(3)
  String? get name;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  String? get desc;
  @override
  @JsonKey(name: "created_at")
  @HiveField(5)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(6)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(7)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_UnitCopyWith<_$_Unit> get copyWith => throw _privateConstructorUsedError;
}

UnitItem _$UnitItemFromJson(Map<String, dynamic> json) {
  return _UnitItem.fromJson(json);
}

/// @nodoc
mixin _$UnitItem {
  @JsonKey(name: "status")
  @HiveField(0)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(2)
  String? get ownerid => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(4)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(5)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(6)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(7)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitItemCopyWith<UnitItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitItemCopyWith<$Res> {
  factory $UnitItemCopyWith(UnitItem value, $Res Function(UnitItem) then) =
      _$UnitItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) String? ownerid,
      @JsonKey(name: "name") @HiveField(3) String? name,
      @JsonKey(name: "description") @HiveField(4) String? desc,
      @JsonKey(name: "created_at") @HiveField(5) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(6) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(7) int? version});
}

/// @nodoc
class _$UnitItemCopyWithImpl<$Res> implements $UnitItemCopyWith<$Res> {
  _$UnitItemCopyWithImpl(this._value, this._then);

  final UnitItem _value;
  // ignore: unused_field
  final $Res Function(UnitItem) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerid = freezed,
    Object? name = freezed,
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
      ownerid: ownerid == freezed
          ? _value.ownerid
          : ownerid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_UnitItemCopyWith<$Res> implements $UnitItemCopyWith<$Res> {
  factory _$$_UnitItemCopyWith(
          _$_UnitItem value, $Res Function(_$_UnitItem) then) =
      __$$_UnitItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") @HiveField(0) bool? status,
      @JsonKey(name: "_id") @HiveField(1) String? id,
      @JsonKey(name: "ownerid") @HiveField(2) String? ownerid,
      @JsonKey(name: "name") @HiveField(3) String? name,
      @JsonKey(name: "description") @HiveField(4) String? desc,
      @JsonKey(name: "created_at") @HiveField(5) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(6) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(7) int? version});
}

/// @nodoc
class __$$_UnitItemCopyWithImpl<$Res> extends _$UnitItemCopyWithImpl<$Res>
    implements _$$_UnitItemCopyWith<$Res> {
  __$$_UnitItemCopyWithImpl(
      _$_UnitItem _value, $Res Function(_$_UnitItem) _then)
      : super(_value, (v) => _then(v as _$_UnitItem));

  @override
  _$_UnitItem get _value => super._value as _$_UnitItem;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerid = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_UnitItem(
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
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
@HiveType(typeId: 11)
class _$_UnitItem implements _UnitItem {
  const _$_UnitItem(
      @JsonKey(name: "status") @HiveField(0) this.status,
      @JsonKey(name: "_id") @HiveField(1) this.id,
      @JsonKey(name: "ownerid") @HiveField(2) this.ownerid,
      @JsonKey(name: "name") @HiveField(3) this.name,
      @JsonKey(name: "description") @HiveField(4) this.desc,
      @JsonKey(name: "created_at") @HiveField(5) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(6) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(7) this.version);

  factory _$_UnitItem.fromJson(Map<String, dynamic> json) =>
      _$$_UnitItemFromJson(json);

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
  final String? ownerid;
  @override
  @JsonKey(name: "name")
  @HiveField(3)
  final String? name;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  final String? desc;
  @override
  @JsonKey(name: "created_at")
  @HiveField(5)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(6)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(7)
  final int? version;

  @override
  String toString() {
    return 'UnitItem(status: $status, id: $id, ownerid: $ownerid, name: $name, desc: $desc, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitItem &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerid, ownerid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
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
      const DeepCollectionEquality().hash(ownerid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_UnitItemCopyWith<_$_UnitItem> get copyWith =>
      __$$_UnitItemCopyWithImpl<_$_UnitItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitItemToJson(
      this,
    );
  }
}

abstract class _UnitItem implements UnitItem {
  const factory _UnitItem(
      @JsonKey(name: "status") @HiveField(0) final bool? status,
      @JsonKey(name: "_id") @HiveField(1) final String? id,
      @JsonKey(name: "ownerid") @HiveField(2) final String? ownerid,
      @JsonKey(name: "name") @HiveField(3) final String? name,
      @JsonKey(name: "description") @HiveField(4) final String? desc,
      @JsonKey(name: "created_at") @HiveField(5) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(6) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(7) final int? version) = _$_UnitItem;

  factory _UnitItem.fromJson(Map<String, dynamic> json) = _$_UnitItem.fromJson;

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
  String? get ownerid;
  @override
  @JsonKey(name: "name")
  @HiveField(3)
  String? get name;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  String? get desc;
  @override
  @JsonKey(name: "created_at")
  @HiveField(5)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(6)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(7)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_UnitItemCopyWith<_$_UnitItem> get copyWith =>
      throw _privateConstructorUsedError;
}
