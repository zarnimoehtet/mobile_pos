// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "theme")
  @HiveField(0)
  String? get theme => throw _privateConstructorUsedError;
  @JsonKey(name: "employees")
  @HiveField(1)
  List<Employee>? get employees => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(2)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(3)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "logo")
  @HiveField(4)
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  @HiveField(5)
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  @HiveField(6)
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_password")
  @HiveField(7)
  String? get mobilePassword => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  @HiveField(8)
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(9)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(10)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(11)
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: "shop")
  @HiveField(12)
  Shop? get shop => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  @HiveField(13)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "cityid")
  @HiveField(14)
  String? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  @HiveField(15)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "ownertype")
  @HiveField(16)
  String? get ownerType => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  @HiveField(17)
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "theme") @HiveField(0) String? theme,
      @JsonKey(name: "employees") @HiveField(1) List<Employee>? employees,
      @JsonKey(name: "status") @HiveField(2) bool? status,
      @JsonKey(name: "_id") @HiveField(3) String? id,
      @JsonKey(name: "logo") @HiveField(4) String? logo,
      @JsonKey(name: "username") @HiveField(5) String? userName,
      @JsonKey(name: "password") @HiveField(6) String? password,
      @JsonKey(name: "mobile_password") @HiveField(7) String? mobilePassword,
      @JsonKey(name: "role") @HiveField(8) String? role,
      @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(11) int? version,
      @JsonKey(name: "shop") @HiveField(12) Shop? shop,
      @JsonKey(name: "address") @HiveField(13) String? address,
      @JsonKey(name: "cityid") @HiveField(14) String? cityId,
      @JsonKey(name: "email") @HiveField(15) String? email,
      @JsonKey(name: "ownertype") @HiveField(16) String? ownerType,
      @JsonKey(name: "phone") @HiveField(17) String? phone});

  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? theme = freezed,
    Object? employees = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? logo = freezed,
    Object? userName = freezed,
    Object? password = freezed,
    Object? mobilePassword = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
    Object? shop = freezed,
    Object? address = freezed,
    Object? cityId = freezed,
    Object? email = freezed,
    Object? ownerType = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePassword: mobilePassword == freezed
          ? _value.mobilePassword
          : mobilePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
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
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerType: ownerType == freezed
          ? _value.ownerType
          : ownerType // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ShopCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "theme") @HiveField(0) String? theme,
      @JsonKey(name: "employees") @HiveField(1) List<Employee>? employees,
      @JsonKey(name: "status") @HiveField(2) bool? status,
      @JsonKey(name: "_id") @HiveField(3) String? id,
      @JsonKey(name: "logo") @HiveField(4) String? logo,
      @JsonKey(name: "username") @HiveField(5) String? userName,
      @JsonKey(name: "password") @HiveField(6) String? password,
      @JsonKey(name: "mobile_password") @HiveField(7) String? mobilePassword,
      @JsonKey(name: "role") @HiveField(8) String? role,
      @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(11) int? version,
      @JsonKey(name: "shop") @HiveField(12) Shop? shop,
      @JsonKey(name: "address") @HiveField(13) String? address,
      @JsonKey(name: "cityid") @HiveField(14) String? cityId,
      @JsonKey(name: "email") @HiveField(15) String? email,
      @JsonKey(name: "ownertype") @HiveField(16) String? ownerType,
      @JsonKey(name: "phone") @HiveField(17) String? phone});

  @override
  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? theme = freezed,
    Object? employees = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? logo = freezed,
    Object? userName = freezed,
    Object? password = freezed,
    Object? mobilePassword = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
    Object? shop = freezed,
    Object? address = freezed,
    Object? cityId = freezed,
    Object? email = freezed,
    Object? ownerType = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_User(
      theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      employees == freezed
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePassword == freezed
          ? _value.mobilePassword
          : mobilePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
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
      shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop?,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerType == freezed
          ? _value.ownerType
          : ownerType // ignore: cast_nullable_to_non_nullable
              as String?,
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_User implements _User {
  const _$_User(
      @JsonKey(name: "theme") @HiveField(0) this.theme,
      @JsonKey(name: "employees") @HiveField(1) final List<Employee>? employees,
      @JsonKey(name: "status") @HiveField(2) this.status,
      @JsonKey(name: "_id") @HiveField(3) this.id,
      @JsonKey(name: "logo") @HiveField(4) this.logo,
      @JsonKey(name: "username") @HiveField(5) this.userName,
      @JsonKey(name: "password") @HiveField(6) this.password,
      @JsonKey(name: "mobile_password") @HiveField(7) this.mobilePassword,
      @JsonKey(name: "role") @HiveField(8) this.role,
      @JsonKey(name: "created_at") @HiveField(9) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(11) this.version,
      @JsonKey(name: "shop") @HiveField(12) this.shop,
      @JsonKey(name: "address") @HiveField(13) this.address,
      @JsonKey(name: "cityid") @HiveField(14) this.cityId,
      @JsonKey(name: "email") @HiveField(15) this.email,
      @JsonKey(name: "ownertype") @HiveField(16) this.ownerType,
      @JsonKey(name: "phone") @HiveField(17) this.phone)
      : _employees = employees;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: "theme")
  @HiveField(0)
  final String? theme;
  final List<Employee>? _employees;
  @override
  @JsonKey(name: "employees")
  @HiveField(1)
  List<Employee>? get employees {
    final value = _employees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "status")
  @HiveField(2)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(3)
  final String? id;
  @override
  @JsonKey(name: "logo")
  @HiveField(4)
  final String? logo;
  @override
  @JsonKey(name: "username")
  @HiveField(5)
  final String? userName;
  @override
  @JsonKey(name: "password")
  @HiveField(6)
  final String? password;
  @override
  @JsonKey(name: "mobile_password")
  @HiveField(7)
  final String? mobilePassword;
  @override
  @JsonKey(name: "role")
  @HiveField(8)
  final String? role;
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
  @JsonKey(name: "shop")
  @HiveField(12)
  final Shop? shop;
  @override
  @JsonKey(name: "address")
  @HiveField(13)
  final String? address;
  @override
  @JsonKey(name: "cityid")
  @HiveField(14)
  final String? cityId;
  @override
  @JsonKey(name: "email")
  @HiveField(15)
  final String? email;
  @override
  @JsonKey(name: "ownertype")
  @HiveField(16)
  final String? ownerType;
  @override
  @JsonKey(name: "phone")
  @HiveField(17)
  final String? phone;

  @override
  String toString() {
    return 'User(theme: $theme, employees: $employees, status: $status, id: $id, logo: $logo, userName: $userName, password: $password, mobilePassword: $mobilePassword, role: $role, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, shop: $shop, address: $address, cityId: $cityId, email: $email, ownerType: $ownerType, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.theme, theme) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.mobilePassword, mobilePassword) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.ownerType, ownerType) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(theme),
      const DeepCollectionEquality().hash(_employees),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(mobilePassword),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(ownerType),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      @JsonKey(name: "theme")
      @HiveField(0)
          final String? theme,
      @JsonKey(name: "employees")
      @HiveField(1)
          final List<Employee>? employees,
      @JsonKey(name: "status")
      @HiveField(2)
          final bool? status,
      @JsonKey(name: "_id")
      @HiveField(3)
          final String? id,
      @JsonKey(name: "logo")
      @HiveField(4)
          final String? logo,
      @JsonKey(name: "username")
      @HiveField(5)
          final String? userName,
      @JsonKey(name: "password")
      @HiveField(6)
          final String? password,
      @JsonKey(name: "mobile_password")
      @HiveField(7)
          final String? mobilePassword,
      @JsonKey(name: "role")
      @HiveField(8)
          final String? role,
      @JsonKey(name: "created_at")
      @HiveField(9)
          final String? createdAt,
      @JsonKey(name: "updated_at")
      @HiveField(10)
          final String? updatedAt,
      @JsonKey(name: "__v")
      @HiveField(11)
          final int? version,
      @JsonKey(name: "shop")
      @HiveField(12)
          final Shop? shop,
      @JsonKey(name: "address")
      @HiveField(13)
          final String? address,
      @JsonKey(name: "cityid")
      @HiveField(14)
          final String? cityId,
      @JsonKey(name: "email")
      @HiveField(15)
          final String? email,
      @JsonKey(name: "ownertype")
      @HiveField(16)
          final String? ownerType,
      @JsonKey(name: "phone")
      @HiveField(17)
          final String? phone) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: "theme")
  @HiveField(0)
  String? get theme;
  @override
  @JsonKey(name: "employees")
  @HiveField(1)
  List<Employee>? get employees;
  @override
  @JsonKey(name: "status")
  @HiveField(2)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(3)
  String? get id;
  @override
  @JsonKey(name: "logo")
  @HiveField(4)
  String? get logo;
  @override
  @JsonKey(name: "username")
  @HiveField(5)
  String? get userName;
  @override
  @JsonKey(name: "password")
  @HiveField(6)
  String? get password;
  @override
  @JsonKey(name: "mobile_password")
  @HiveField(7)
  String? get mobilePassword;
  @override
  @JsonKey(name: "role")
  @HiveField(8)
  String? get role;
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
  @JsonKey(name: "shop")
  @HiveField(12)
  Shop? get shop;
  @override
  @JsonKey(name: "address")
  @HiveField(13)
  String? get address;
  @override
  @JsonKey(name: "cityid")
  @HiveField(14)
  String? get cityId;
  @override
  @JsonKey(name: "email")
  @HiveField(15)
  String? get email;
  @override
  @JsonKey(name: "ownertype")
  @HiveField(16)
  String? get ownerType;
  @override
  @JsonKey(name: "phone")
  @HiveField(17)
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
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
  String? get ownerId => throw _privateConstructorUsedError;
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
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "email") @HiveField(1) String? email,
      @JsonKey(name: "phone") @HiveField(2) String? phone,
      @JsonKey(name: "role") @HiveField(3) String? role,
      @JsonKey(name: "description") @HiveField(4) String? description,
      @JsonKey(name: "status") @HiveField(5) bool? status,
      @JsonKey(name: "_id") @HiveField(6) String? id,
      @JsonKey(name: "ownerid") @HiveField(7) String? ownerId,
      @JsonKey(name: "pincode") @HiveField(8) String? pincode,
      @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(11) int? version});
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res> implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  final Employee _value;
  // ignore: unused_field
  final $Res Function(Employee) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
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
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$_EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$$_EmployeeCopyWith(
          _$_Employee value, $Res Function(_$_Employee) then) =
      __$$_EmployeeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "email") @HiveField(1) String? email,
      @JsonKey(name: "phone") @HiveField(2) String? phone,
      @JsonKey(name: "role") @HiveField(3) String? role,
      @JsonKey(name: "description") @HiveField(4) String? description,
      @JsonKey(name: "status") @HiveField(5) bool? status,
      @JsonKey(name: "_id") @HiveField(6) String? id,
      @JsonKey(name: "ownerid") @HiveField(7) String? ownerId,
      @JsonKey(name: "pincode") @HiveField(8) String? pincode,
      @JsonKey(name: "created_at") @HiveField(9) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(11) int? version});
}

/// @nodoc
class __$$_EmployeeCopyWithImpl<$Res> extends _$EmployeeCopyWithImpl<$Res>
    implements _$$_EmployeeCopyWith<$Res> {
  __$$_EmployeeCopyWithImpl(
      _$_Employee _value, $Res Function(_$_Employee) _then)
      : super(_value, (v) => _then(v as _$_Employee));

  @override
  _$_Employee get _value => super._value as _$_Employee;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? pincode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_Employee(
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
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
@HiveType(typeId: 1)
class _$_Employee implements _Employee {
  const _$_Employee(
      @JsonKey(name: "name") @HiveField(0) this.name,
      @JsonKey(name: "email") @HiveField(1) this.email,
      @JsonKey(name: "phone") @HiveField(2) this.phone,
      @JsonKey(name: "role") @HiveField(3) this.role,
      @JsonKey(name: "description") @HiveField(4) this.description,
      @JsonKey(name: "status") @HiveField(5) this.status,
      @JsonKey(name: "_id") @HiveField(6) this.id,
      @JsonKey(name: "ownerid") @HiveField(7) this.ownerId,
      @JsonKey(name: "pincode") @HiveField(8) this.pincode,
      @JsonKey(name: "created_at") @HiveField(9) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(11) this.version);

  factory _$_Employee.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeFromJson(json);

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
  final String? ownerId;
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
    return 'Employee(name: $name, email: $email, phone: $phone, role: $role, description: $description, status: $status, id: $id, ownerId: $ownerId, pincode: $pincode, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Employee &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
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
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(pincode),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      __$$_EmployeeCopyWithImpl<_$_Employee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeToJson(
      this,
    );
  }
}

abstract class _Employee implements Employee {
  const factory _Employee(
      @JsonKey(name: "name") @HiveField(0) final String? name,
      @JsonKey(name: "email") @HiveField(1) final String? email,
      @JsonKey(name: "phone") @HiveField(2) final String? phone,
      @JsonKey(name: "role") @HiveField(3) final String? role,
      @JsonKey(name: "description") @HiveField(4) final String? description,
      @JsonKey(name: "status") @HiveField(5) final bool? status,
      @JsonKey(name: "_id") @HiveField(6) final String? id,
      @JsonKey(name: "ownerid") @HiveField(7) final String? ownerId,
      @JsonKey(name: "pincode") @HiveField(8) final String? pincode,
      @JsonKey(name: "created_at") @HiveField(9) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(10) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(11) final int? version) = _$_Employee;

  factory _Employee.fromJson(Map<String, dynamic> json) = _$_Employee.fromJson;

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
  String? get ownerId;
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
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
  @JsonKey(name: "name")
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  @HiveField(1)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(3)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(4)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(5)
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  @HiveField(6)
  String? get phone => throw _privateConstructorUsedError;
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
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "address") @HiveField(1) String? address,
      @JsonKey(name: "description") @HiveField(2) String? description,
      @JsonKey(name: "status") @HiveField(3) bool? status,
      @JsonKey(name: "_id") @HiveField(4) String? id,
      @JsonKey(name: "ownerid") @HiveField(5) String? ownerId,
      @JsonKey(name: "phone") @HiveField(6) String? phone,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});
}

/// @nodoc
class _$ShopCopyWithImpl<$Res> implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  final Shop _value;
  // ignore: unused_field
  final $Res Function(Shop) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? phone = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$_ShopCopyWith(_$_Shop value, $Res Function(_$_Shop) then) =
      __$$_ShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") @HiveField(0) String? name,
      @JsonKey(name: "address") @HiveField(1) String? address,
      @JsonKey(name: "description") @HiveField(2) String? description,
      @JsonKey(name: "status") @HiveField(3) bool? status,
      @JsonKey(name: "_id") @HiveField(4) String? id,
      @JsonKey(name: "ownerid") @HiveField(5) String? ownerId,
      @JsonKey(name: "phone") @HiveField(6) String? phone,
      @JsonKey(name: "created_at") @HiveField(7) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) int? version});
}

/// @nodoc
class __$$_ShopCopyWithImpl<$Res> extends _$ShopCopyWithImpl<$Res>
    implements _$$_ShopCopyWith<$Res> {
  __$$_ShopCopyWithImpl(_$_Shop _value, $Res Function(_$_Shop) _then)
      : super(_value, (v) => _then(v as _$_Shop));

  @override
  _$_Shop get _value => super._value as _$_Shop;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? phone = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_Shop(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 2)
class _$_Shop implements _Shop {
  const _$_Shop(
      @JsonKey(name: "name") @HiveField(0) this.name,
      @JsonKey(name: "address") @HiveField(1) this.address,
      @JsonKey(name: "description") @HiveField(2) this.description,
      @JsonKey(name: "status") @HiveField(3) this.status,
      @JsonKey(name: "_id") @HiveField(4) this.id,
      @JsonKey(name: "ownerid") @HiveField(5) this.ownerId,
      @JsonKey(name: "phone") @HiveField(6) this.phone,
      @JsonKey(name: "created_at") @HiveField(7) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(9) this.version);

  factory _$_Shop.fromJson(Map<String, dynamic> json) => _$$_ShopFromJson(json);

  @override
  @JsonKey(name: "name")
  @HiveField(0)
  final String? name;
  @override
  @JsonKey(name: "address")
  @HiveField(1)
  final String? address;
  @override
  @JsonKey(name: "description")
  @HiveField(2)
  final String? description;
  @override
  @JsonKey(name: "status")
  @HiveField(3)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(4)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(5)
  final String? ownerId;
  @override
  @JsonKey(name: "phone")
  @HiveField(6)
  final String? phone;
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
    return 'Shop(name: $name, address: $address, description: $description, status: $status, id: $id, ownerId: $ownerId, phone: $phone, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shop &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_ShopCopyWith<_$_Shop> get copyWith =>
      __$$_ShopCopyWithImpl<_$_Shop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopToJson(
      this,
    );
  }
}

abstract class _Shop implements Shop {
  const factory _Shop(
      @JsonKey(name: "name") @HiveField(0) final String? name,
      @JsonKey(name: "address") @HiveField(1) final String? address,
      @JsonKey(name: "description") @HiveField(2) final String? description,
      @JsonKey(name: "status") @HiveField(3) final bool? status,
      @JsonKey(name: "_id") @HiveField(4) final String? id,
      @JsonKey(name: "ownerid") @HiveField(5) final String? ownerId,
      @JsonKey(name: "phone") @HiveField(6) final String? phone,
      @JsonKey(name: "created_at") @HiveField(7) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(8) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(9) final int? version) = _$_Shop;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$_Shop.fromJson;

  @override
  @JsonKey(name: "name")
  @HiveField(0)
  String? get name;
  @override
  @JsonKey(name: "address")
  @HiveField(1)
  String? get address;
  @override
  @JsonKey(name: "description")
  @HiveField(2)
  String? get description;
  @override
  @JsonKey(name: "status")
  @HiveField(3)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(4)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(5)
  String? get ownerId;
  @override
  @JsonKey(name: "phone")
  @HiveField(6)
  String? get phone;
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
  _$$_ShopCopyWith<_$_Shop> get copyWith => throw _privateConstructorUsedError;
}
