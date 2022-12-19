// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerRequest _$CustomerRequestFromJson(Map<String, dynamic> json) {
  return _CustomerRequest.fromJson(json);
}

/// @nodoc
mixin _$CustomerRequest {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerRequestCopyWith<CustomerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerRequestCopyWith<$Res> {
  factory $CustomerRequestCopyWith(
          CustomerRequest value, $Res Function(CustomerRequest) then) =
      _$CustomerRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "description") String? desc,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "address") String? address});
}

/// @nodoc
class _$CustomerRequestCopyWithImpl<$Res>
    implements $CustomerRequestCopyWith<$Res> {
  _$CustomerRequestCopyWithImpl(this._value, this._then);

  final CustomerRequest _value;
  // ignore: unused_field
  final $Res Function(CustomerRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? desc = freezed,
    Object? status = freezed,
    Object? ownerId = freezed,
    Object? address = freezed,
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
              as String?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerRequestCopyWith<$Res>
    implements $CustomerRequestCopyWith<$Res> {
  factory _$$_CustomerRequestCopyWith(
          _$_CustomerRequest value, $Res Function(_$_CustomerRequest) then) =
      __$$_CustomerRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "description") String? desc,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "address") String? address});
}

/// @nodoc
class __$$_CustomerRequestCopyWithImpl<$Res>
    extends _$CustomerRequestCopyWithImpl<$Res>
    implements _$$_CustomerRequestCopyWith<$Res> {
  __$$_CustomerRequestCopyWithImpl(
      _$_CustomerRequest _value, $Res Function(_$_CustomerRequest) _then)
      : super(_value, (v) => _then(v as _$_CustomerRequest));

  @override
  _$_CustomerRequest get _value => super._value as _$_CustomerRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? desc = freezed,
    Object? status = freezed,
    Object? ownerId = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_CustomerRequest(
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
              as String?,
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerRequest implements _CustomerRequest {
  const _$_CustomerRequest(
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "description") this.desc,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "ownerid") this.ownerId,
      @JsonKey(name: "address") this.address);

  factory _$_CustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerRequestFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "description")
  final String? desc;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "ownerid")
  final String? ownerId;
  @override
  @JsonKey(name: "address")
  final String? address;

  @override
  String toString() {
    return 'CustomerRequest(name: $name, email: $email, phone: $phone, desc: $desc, status: $status, ownerId: $ownerId, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.address, address));
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
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerRequestCopyWith<_$_CustomerRequest> get copyWith =>
      __$$_CustomerRequestCopyWithImpl<_$_CustomerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerRequestToJson(
      this,
    );
  }
}

abstract class _CustomerRequest implements CustomerRequest {
  const factory _CustomerRequest(
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "description") final String? desc,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "ownerid") final String? ownerId,
      @JsonKey(name: "address") final String? address) = _$_CustomerRequest;

  factory _CustomerRequest.fromJson(Map<String, dynamic> json) =
      _$_CustomerRequest.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "description")
  String? get desc;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "ownerid")
  String? get ownerId;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerRequestCopyWith<_$_CustomerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
