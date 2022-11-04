// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: "color")
  @HiveField(0)
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(1)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(2)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(3)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(4)
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(5)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(6)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(7)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(8)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "color") @HiveField(0) String? color,
      @JsonKey(name: "description") @HiveField(1) String? description,
      @JsonKey(name: "status") @HiveField(2) bool? status,
      @JsonKey(name: "_id") @HiveField(3) String? id,
      @JsonKey(name: "ownerid") @HiveField(4) Owner? owner,
      @JsonKey(name: "name") @HiveField(5) String? name,
      @JsonKey(name: "created_at") @HiveField(6) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(7) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(8) int? version});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "color") @HiveField(0) String? color,
      @JsonKey(name: "description") @HiveField(1) String? description,
      @JsonKey(name: "status") @HiveField(2) bool? status,
      @JsonKey(name: "_id") @HiveField(3) String? id,
      @JsonKey(name: "ownerid") @HiveField(4) Owner? owner,
      @JsonKey(name: "name") @HiveField(5) String? name,
      @JsonKey(name: "created_at") @HiveField(6) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(7) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(8) int? version});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, (v) => _then(v as _$_Category));

  @override
  _$_Category get _value => super._value as _$_Category;

  @override
  $Res call({
    Object? color = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_Category(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 3)
class _$_Category implements _Category {
  const _$_Category(
      @JsonKey(name: "color") @HiveField(0) this.color,
      @JsonKey(name: "description") @HiveField(1) this.description,
      @JsonKey(name: "status") @HiveField(2) this.status,
      @JsonKey(name: "_id") @HiveField(3) this.id,
      @JsonKey(name: "ownerid") @HiveField(4) this.owner,
      @JsonKey(name: "name") @HiveField(5) this.name,
      @JsonKey(name: "created_at") @HiveField(6) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(7) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(8) this.version);

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  @JsonKey(name: "color")
  @HiveField(0)
  final String? color;
  @override
  @JsonKey(name: "description")
  @HiveField(1)
  final String? description;
  @override
  @JsonKey(name: "status")
  @HiveField(2)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(3)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(4)
  final Owner? owner;
  @override
  @JsonKey(name: "name")
  @HiveField(5)
  final String? name;
  @override
  @JsonKey(name: "created_at")
  @HiveField(6)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(7)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(8)
  final int? version;

  @override
  String toString() {
    return 'Category(color: $color, description: $description, status: $status, id: $id, owner: $owner, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      @JsonKey(name: "color") @HiveField(0) final String? color,
      @JsonKey(name: "description") @HiveField(1) final String? description,
      @JsonKey(name: "status") @HiveField(2) final bool? status,
      @JsonKey(name: "_id") @HiveField(3) final String? id,
      @JsonKey(name: "ownerid") @HiveField(4) final Owner? owner,
      @JsonKey(name: "name") @HiveField(5) final String? name,
      @JsonKey(name: "created_at") @HiveField(6) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(7) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(8) final int? version) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  @JsonKey(name: "color")
  @HiveField(0)
  String? get color;
  @override
  @JsonKey(name: "description")
  @HiveField(1)
  String? get description;
  @override
  @JsonKey(name: "status")
  @HiveField(2)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(3)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(4)
  Owner? get owner;
  @override
  @JsonKey(name: "name")
  @HiveField(5)
  String? get name;
  @override
  @JsonKey(name: "created_at")
  @HiveField(6)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(7)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(8)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  @JsonKey(name: "_id")
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  @HiveField(1)
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") @HiveField(0) String? id,
      @JsonKey(name: "username") @HiveField(1) String? username});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res> implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  final Owner _value;
  // ignore: unused_field
  final $Res Function(Owner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$_OwnerCopyWith(_$_Owner value, $Res Function(_$_Owner) then) =
      __$$_OwnerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") @HiveField(0) String? id,
      @JsonKey(name: "username") @HiveField(1) String? username});
}

/// @nodoc
class __$$_OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res>
    implements _$$_OwnerCopyWith<$Res> {
  __$$_OwnerCopyWithImpl(_$_Owner _value, $Res Function(_$_Owner) _then)
      : super(_value, (v) => _then(v as _$_Owner));

  @override
  _$_Owner get _value => super._value as _$_Owner;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_Owner(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4)
class _$_Owner implements _Owner {
  const _$_Owner(@JsonKey(name: "_id") @HiveField(0) this.id,
      @JsonKey(name: "username") @HiveField(1) this.username);

  factory _$_Owner.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerFromJson(json);

  @override
  @JsonKey(name: "_id")
  @HiveField(0)
  final String? id;
  @override
  @JsonKey(name: "username")
  @HiveField(1)
  final String? username;

  @override
  String toString() {
    return 'Owner(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Owner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      __$$_OwnerCopyWithImpl<_$_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(@JsonKey(name: "_id") @HiveField(0) final String? id,
          @JsonKey(name: "username") @HiveField(1) final String? username) =
      _$_Owner;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$_Owner.fromJson;

  @override
  @JsonKey(name: "_id")
  @HiveField(0)
  String? get id;
  @override
  @JsonKey(name: "username")
  @HiveField(1)
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryItem _$CategoryItemFromJson(Map<String, dynamic> json) {
  return _CategoryItem.fromJson(json);
}

/// @nodoc
mixin _$CategoryItem {
  @JsonKey(name: "color")
  @HiveField(0)
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(1)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(2)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(3)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(4)
  String? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(5)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(6)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(7)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(8)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemCopyWith<CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemCopyWith<$Res> {
  factory $CategoryItemCopyWith(
          CategoryItem value, $Res Function(CategoryItem) then) =
      _$CategoryItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "color") @HiveField(0) String? color,
      @JsonKey(name: "description") @HiveField(1) String? description,
      @JsonKey(name: "status") @HiveField(2) bool? status,
      @JsonKey(name: "_id") @HiveField(3) String? id,
      @JsonKey(name: "ownerid") @HiveField(4) String? owner,
      @JsonKey(name: "name") @HiveField(5) String? name,
      @JsonKey(name: "created_at") @HiveField(6) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(7) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(8) int? version});
}

/// @nodoc
class _$CategoryItemCopyWithImpl<$Res> implements $CategoryItemCopyWith<$Res> {
  _$CategoryItemCopyWithImpl(this._value, this._then);

  final CategoryItem _value;
  // ignore: unused_field
  final $Res Function(CategoryItem) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CategoryItemCopyWith<$Res>
    implements $CategoryItemCopyWith<$Res> {
  factory _$$_CategoryItemCopyWith(
          _$_CategoryItem value, $Res Function(_$_CategoryItem) then) =
      __$$_CategoryItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "color") @HiveField(0) String? color,
      @JsonKey(name: "description") @HiveField(1) String? description,
      @JsonKey(name: "status") @HiveField(2) bool? status,
      @JsonKey(name: "_id") @HiveField(3) String? id,
      @JsonKey(name: "ownerid") @HiveField(4) String? owner,
      @JsonKey(name: "name") @HiveField(5) String? name,
      @JsonKey(name: "created_at") @HiveField(6) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(7) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(8) int? version});
}

/// @nodoc
class __$$_CategoryItemCopyWithImpl<$Res>
    extends _$CategoryItemCopyWithImpl<$Res>
    implements _$$_CategoryItemCopyWith<$Res> {
  __$$_CategoryItemCopyWithImpl(
      _$_CategoryItem _value, $Res Function(_$_CategoryItem) _then)
      : super(_value, (v) => _then(v as _$_CategoryItem));

  @override
  _$_CategoryItem get _value => super._value as _$_CategoryItem;

  @override
  $Res call({
    Object? color = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_CategoryItem(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 5)
class _$_CategoryItem implements _CategoryItem {
  const _$_CategoryItem(
      @JsonKey(name: "color") @HiveField(0) this.color,
      @JsonKey(name: "description") @HiveField(1) this.description,
      @JsonKey(name: "status") @HiveField(2) this.status,
      @JsonKey(name: "_id") @HiveField(3) this.id,
      @JsonKey(name: "ownerid") @HiveField(4) this.owner,
      @JsonKey(name: "name") @HiveField(5) this.name,
      @JsonKey(name: "created_at") @HiveField(6) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(7) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(8) this.version);

  factory _$_CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryItemFromJson(json);

  @override
  @JsonKey(name: "color")
  @HiveField(0)
  final String? color;
  @override
  @JsonKey(name: "description")
  @HiveField(1)
  final String? description;
  @override
  @JsonKey(name: "status")
  @HiveField(2)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(3)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(4)
  final String? owner;
  @override
  @JsonKey(name: "name")
  @HiveField(5)
  final String? name;
  @override
  @JsonKey(name: "created_at")
  @HiveField(6)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(7)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(8)
  final int? version;

  @override
  String toString() {
    return 'CategoryItem(color: $color, description: $description, status: $status, id: $id, owner: $owner, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryItem &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryItemCopyWith<_$_CategoryItem> get copyWith =>
      __$$_CategoryItemCopyWithImpl<_$_CategoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryItemToJson(
      this,
    );
  }
}

abstract class _CategoryItem implements CategoryItem {
  const factory _CategoryItem(
      @JsonKey(name: "color") @HiveField(0) final String? color,
      @JsonKey(name: "description") @HiveField(1) final String? description,
      @JsonKey(name: "status") @HiveField(2) final bool? status,
      @JsonKey(name: "_id") @HiveField(3) final String? id,
      @JsonKey(name: "ownerid") @HiveField(4) final String? owner,
      @JsonKey(name: "name") @HiveField(5) final String? name,
      @JsonKey(name: "created_at") @HiveField(6) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(7) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(8) final int? version) = _$_CategoryItem;

  factory _CategoryItem.fromJson(Map<String, dynamic> json) =
      _$_CategoryItem.fromJson;

  @override
  @JsonKey(name: "color")
  @HiveField(0)
  String? get color;
  @override
  @JsonKey(name: "description")
  @HiveField(1)
  String? get description;
  @override
  @JsonKey(name: "status")
  @HiveField(2)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(3)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(4)
  String? get owner;
  @override
  @JsonKey(name: "name")
  @HiveField(5)
  String? get name;
  @override
  @JsonKey(name: "created_at")
  @HiveField(6)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(7)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(8)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryItemCopyWith<_$_CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
