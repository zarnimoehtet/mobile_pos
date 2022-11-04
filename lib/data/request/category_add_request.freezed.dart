// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryAddRequest _$CategoryAddRequestFromJson(Map<String, dynamic> json) {
  return _CategoryAddRequest.fromJson(json);
}

/// @nodoc
mixin _$CategoryAddRequest {
  @JsonKey(name: "ownerid")
  String? get ownerid => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryAddRequestCopyWith<CategoryAddRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAddRequestCopyWith<$Res> {
  factory $CategoryAddRequestCopyWith(
          CategoryAddRequest value, $Res Function(CategoryAddRequest) then) =
      _$CategoryAddRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerid,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "status") bool? status});
}

/// @nodoc
class _$CategoryAddRequestCopyWithImpl<$Res>
    implements $CategoryAddRequestCopyWith<$Res> {
  _$CategoryAddRequestCopyWithImpl(this._value, this._then);

  final CategoryAddRequest _value;
  // ignore: unused_field
  final $Res Function(CategoryAddRequest) _then;

  @override
  $Res call({
    Object? ownerid = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      ownerid: ownerid == freezed
          ? _value.ownerid
          : ownerid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryAddRequestCopyWith<$Res>
    implements $CategoryAddRequestCopyWith<$Res> {
  factory _$$_CategoryAddRequestCopyWith(_$_CategoryAddRequest value,
          $Res Function(_$_CategoryAddRequest) then) =
      __$$_CategoryAddRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerid,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "status") bool? status});
}

/// @nodoc
class __$$_CategoryAddRequestCopyWithImpl<$Res>
    extends _$CategoryAddRequestCopyWithImpl<$Res>
    implements _$$_CategoryAddRequestCopyWith<$Res> {
  __$$_CategoryAddRequestCopyWithImpl(
      _$_CategoryAddRequest _value, $Res Function(_$_CategoryAddRequest) _then)
      : super(_value, (v) => _then(v as _$_CategoryAddRequest));

  @override
  _$_CategoryAddRequest get _value => super._value as _$_CategoryAddRequest;

  @override
  $Res call({
    Object? ownerid = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_CategoryAddRequest(
      ownerid == freezed
          ? _value.ownerid
          : ownerid // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryAddRequest implements _CategoryAddRequest {
  const _$_CategoryAddRequest(
      @JsonKey(name: "ownerid") this.ownerid,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "status") this.status);

  factory _$_CategoryAddRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryAddRequestFromJson(json);

  @override
  @JsonKey(name: "ownerid")
  final String? ownerid;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "color")
  final String? color;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "status")
  final bool? status;

  @override
  String toString() {
    return 'CategoryAddRequest(ownerid: $ownerid, name: $name, color: $color, description: $description, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryAddRequest &&
            const DeepCollectionEquality().equals(other.ownerid, ownerid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryAddRequestCopyWith<_$_CategoryAddRequest> get copyWith =>
      __$$_CategoryAddRequestCopyWithImpl<_$_CategoryAddRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryAddRequestToJson(
      this,
    );
  }
}

abstract class _CategoryAddRequest implements CategoryAddRequest {
  const factory _CategoryAddRequest(
      @JsonKey(name: "ownerid") final String? ownerid,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "color") final String? color,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "status") final bool? status) = _$_CategoryAddRequest;

  factory _CategoryAddRequest.fromJson(Map<String, dynamic> json) =
      _$_CategoryAddRequest.fromJson;

  @override
  @JsonKey(name: "ownerid")
  String? get ownerid;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryAddRequestCopyWith<_$_CategoryAddRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
