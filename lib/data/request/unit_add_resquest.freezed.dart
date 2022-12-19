// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unit_add_resquest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitAddRequest _$UnitAddRequestFromJson(Map<String, dynamic> json) {
  return _UnitAddRequest.fromJson(json);
}

/// @nodoc
mixin _$UnitAddRequest {
  @JsonKey(name: "ownerid")
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitAddRequestCopyWith<UnitAddRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitAddRequestCopyWith<$Res> {
  factory $UnitAddRequestCopyWith(
          UnitAddRequest value, $Res Function(UnitAddRequest) then) =
      _$UnitAddRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$UnitAddRequestCopyWithImpl<$Res>
    implements $UnitAddRequestCopyWith<$Res> {
  _$UnitAddRequestCopyWithImpl(this._value, this._then);

  final UnitAddRequest _value;
  // ignore: unused_field
  final $Res Function(UnitAddRequest) _then;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? description = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UnitAddRequestCopyWith<$Res>
    implements $UnitAddRequestCopyWith<$Res> {
  factory _$$_UnitAddRequestCopyWith(
          _$_UnitAddRequest value, $Res Function(_$_UnitAddRequest) then) =
      __$$_UnitAddRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class __$$_UnitAddRequestCopyWithImpl<$Res>
    extends _$UnitAddRequestCopyWithImpl<$Res>
    implements _$$_UnitAddRequestCopyWith<$Res> {
  __$$_UnitAddRequestCopyWithImpl(
      _$_UnitAddRequest _value, $Res Function(_$_UnitAddRequest) _then)
      : super(_value, (v) => _then(v as _$_UnitAddRequest));

  @override
  _$_UnitAddRequest get _value => super._value as _$_UnitAddRequest;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_UnitAddRequest(
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$_UnitAddRequest implements _UnitAddRequest {
  const _$_UnitAddRequest(
      @JsonKey(name: "ownerid") this.ownerId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "status") this.status);

  factory _$_UnitAddRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UnitAddRequestFromJson(json);

  @override
  @JsonKey(name: "ownerid")
  final String? ownerId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'UnitAddRequest(ownerId: $ownerId, name: $name, description: $description, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitAddRequest &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_UnitAddRequestCopyWith<_$_UnitAddRequest> get copyWith =>
      __$$_UnitAddRequestCopyWithImpl<_$_UnitAddRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitAddRequestToJson(
      this,
    );
  }
}

abstract class _UnitAddRequest implements UnitAddRequest {
  const factory _UnitAddRequest(
      @JsonKey(name: "ownerid") final String? ownerId,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "status") final String? status) = _$_UnitAddRequest;

  factory _UnitAddRequest.fromJson(Map<String, dynamic> json) =
      _$_UnitAddRequest.fromJson;

  @override
  @JsonKey(name: "ownerid")
  String? get ownerId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_UnitAddRequestCopyWith<_$_UnitAddRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
