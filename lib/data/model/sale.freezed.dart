// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sale _$SaleFromJson(Map<String, dynamic> json) {
  return _Sale.fromJson(json);
}

/// @nodoc
mixin _$Sale {
  @JsonKey(name: "total_amount")
  @HiveField(0)
  int? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "reduce_price")
  @HiveField(1)
  int? get reducePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(2)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type")
  @HiveField(3)
  String? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "has_credit")
  @HiveField(4)
  String? get hasCredit => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_amount")
  @HiveField(5)
  int? get creditAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(6)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(7)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(8)
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "employeeid")
  @HiveField(9)
  Employee? get emp => throw _privateConstructorUsedError;
  @JsonKey(name: "customerid")
  @HiveField(10)
  CustomerItem? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  @HiveField(11)
  List<SaleItem> get itemList => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  @HiveField(12)
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(13)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(14)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(15)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleCopyWith<Sale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleCopyWith<$Res> {
  factory $SaleCopyWith(Sale value, $Res Function(Sale) then) =
      _$SaleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "total_amount") @HiveField(0) int? totalAmount,
      @JsonKey(name: "reduce_price") @HiveField(1) int? reducePrice,
      @JsonKey(name: "description") @HiveField(2) String? desc,
      @JsonKey(name: "payment_type") @HiveField(3) String? paymentType,
      @JsonKey(name: "has_credit") @HiveField(4) String? hasCredit,
      @JsonKey(name: "credit_amount") @HiveField(5) int? creditAmount,
      @JsonKey(name: "status") @HiveField(6) String? status,
      @JsonKey(name: "_id") @HiveField(7) String? id,
      @JsonKey(name: "ownerid") @HiveField(8) Owner? owner,
      @JsonKey(name: "employeeid") @HiveField(9) Employee? emp,
      @JsonKey(name: "customerid") @HiveField(10) CustomerItem? customer,
      @JsonKey(name: "items") @HiveField(11) List<SaleItem> itemList,
      @JsonKey(name: "code") @HiveField(12) String? code,
      @JsonKey(name: "created_at") @HiveField(13) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(14) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(15) int? version});

  $OwnerCopyWith<$Res>? get owner;
  $EmployeeCopyWith<$Res>? get emp;
  $CustomerItemCopyWith<$Res>? get customer;
}

/// @nodoc
class _$SaleCopyWithImpl<$Res> implements $SaleCopyWith<$Res> {
  _$SaleCopyWithImpl(this._value, this._then);

  final Sale _value;
  // ignore: unused_field
  final $Res Function(Sale) _then;

  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? reducePrice = freezed,
    Object? desc = freezed,
    Object? paymentType = freezed,
    Object? hasCredit = freezed,
    Object? creditAmount = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? emp = freezed,
    Object? customer = freezed,
    Object? itemList = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      reducePrice: reducePrice == freezed
          ? _value.reducePrice
          : reducePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCredit: hasCredit == freezed
          ? _value.hasCredit
          : hasCredit // ignore: cast_nullable_to_non_nullable
              as String?,
      creditAmount: creditAmount == freezed
          ? _value.creditAmount
          : creditAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      emp: emp == freezed
          ? _value.emp
          : emp // ignore: cast_nullable_to_non_nullable
              as Employee?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerItem?,
      itemList: itemList == freezed
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<SaleItem>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
  $EmployeeCopyWith<$Res>? get emp {
    if (_value.emp == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.emp!, (value) {
      return _then(_value.copyWith(emp: value));
    });
  }

  @override
  $CustomerItemCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerItemCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc
abstract class _$$_SaleCopyWith<$Res> implements $SaleCopyWith<$Res> {
  factory _$$_SaleCopyWith(_$_Sale value, $Res Function(_$_Sale) then) =
      __$$_SaleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "total_amount") @HiveField(0) int? totalAmount,
      @JsonKey(name: "reduce_price") @HiveField(1) int? reducePrice,
      @JsonKey(name: "description") @HiveField(2) String? desc,
      @JsonKey(name: "payment_type") @HiveField(3) String? paymentType,
      @JsonKey(name: "has_credit") @HiveField(4) String? hasCredit,
      @JsonKey(name: "credit_amount") @HiveField(5) int? creditAmount,
      @JsonKey(name: "status") @HiveField(6) String? status,
      @JsonKey(name: "_id") @HiveField(7) String? id,
      @JsonKey(name: "ownerid") @HiveField(8) Owner? owner,
      @JsonKey(name: "employeeid") @HiveField(9) Employee? emp,
      @JsonKey(name: "customerid") @HiveField(10) CustomerItem? customer,
      @JsonKey(name: "items") @HiveField(11) List<SaleItem> itemList,
      @JsonKey(name: "code") @HiveField(12) String? code,
      @JsonKey(name: "created_at") @HiveField(13) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(14) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(15) int? version});

  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $EmployeeCopyWith<$Res>? get emp;
  @override
  $CustomerItemCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$_SaleCopyWithImpl<$Res> extends _$SaleCopyWithImpl<$Res>
    implements _$$_SaleCopyWith<$Res> {
  __$$_SaleCopyWithImpl(_$_Sale _value, $Res Function(_$_Sale) _then)
      : super(_value, (v) => _then(v as _$_Sale));

  @override
  _$_Sale get _value => super._value as _$_Sale;

  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? reducePrice = freezed,
    Object? desc = freezed,
    Object? paymentType = freezed,
    Object? hasCredit = freezed,
    Object? creditAmount = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? emp = freezed,
    Object? customer = freezed,
    Object? itemList = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_Sale(
      totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      reducePrice == freezed
          ? _value.reducePrice
          : reducePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCredit == freezed
          ? _value.hasCredit
          : hasCredit // ignore: cast_nullable_to_non_nullable
              as String?,
      creditAmount == freezed
          ? _value.creditAmount
          : creditAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      emp == freezed
          ? _value.emp
          : emp // ignore: cast_nullable_to_non_nullable
              as Employee?,
      customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerItem?,
      itemList == freezed
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<SaleItem>,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 22)
class _$_Sale implements _Sale {
  const _$_Sale(
      @JsonKey(name: "total_amount") @HiveField(0) this.totalAmount,
      @JsonKey(name: "reduce_price") @HiveField(1) this.reducePrice,
      @JsonKey(name: "description") @HiveField(2) this.desc,
      @JsonKey(name: "payment_type") @HiveField(3) this.paymentType,
      @JsonKey(name: "has_credit") @HiveField(4) this.hasCredit,
      @JsonKey(name: "credit_amount") @HiveField(5) this.creditAmount,
      @JsonKey(name: "status") @HiveField(6) this.status,
      @JsonKey(name: "_id") @HiveField(7) this.id,
      @JsonKey(name: "ownerid") @HiveField(8) this.owner,
      @JsonKey(name: "employeeid") @HiveField(9) this.emp,
      @JsonKey(name: "customerid") @HiveField(10) this.customer,
      @JsonKey(name: "items") @HiveField(11) final List<SaleItem> itemList,
      @JsonKey(name: "code") @HiveField(12) this.code,
      @JsonKey(name: "created_at") @HiveField(13) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(14) this.updatedAt,
      @JsonKey(name: "__v") @HiveField(15) this.version)
      : _itemList = itemList;

  factory _$_Sale.fromJson(Map<String, dynamic> json) => _$$_SaleFromJson(json);

  @override
  @JsonKey(name: "total_amount")
  @HiveField(0)
  final int? totalAmount;
  @override
  @JsonKey(name: "reduce_price")
  @HiveField(1)
  final int? reducePrice;
  @override
  @JsonKey(name: "description")
  @HiveField(2)
  final String? desc;
  @override
  @JsonKey(name: "payment_type")
  @HiveField(3)
  final String? paymentType;
  @override
  @JsonKey(name: "has_credit")
  @HiveField(4)
  final String? hasCredit;
  @override
  @JsonKey(name: "credit_amount")
  @HiveField(5)
  final int? creditAmount;
  @override
  @JsonKey(name: "status")
  @HiveField(6)
  final String? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(7)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(8)
  final Owner? owner;
  @override
  @JsonKey(name: "employeeid")
  @HiveField(9)
  final Employee? emp;
  @override
  @JsonKey(name: "customerid")
  @HiveField(10)
  final CustomerItem? customer;
  final List<SaleItem> _itemList;
  @override
  @JsonKey(name: "items")
  @HiveField(11)
  List<SaleItem> get itemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  @JsonKey(name: "code")
  @HiveField(12)
  final String? code;
  @override
  @JsonKey(name: "created_at")
  @HiveField(13)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(14)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(15)
  final int? version;

  @override
  String toString() {
    return 'Sale(totalAmount: $totalAmount, reducePrice: $reducePrice, desc: $desc, paymentType: $paymentType, hasCredit: $hasCredit, creditAmount: $creditAmount, status: $status, id: $id, owner: $owner, emp: $emp, customer: $customer, itemList: $itemList, code: $code, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sale &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality()
                .equals(other.reducePrice, reducePrice) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality()
                .equals(other.paymentType, paymentType) &&
            const DeepCollectionEquality().equals(other.hasCredit, hasCredit) &&
            const DeepCollectionEquality()
                .equals(other.creditAmount, creditAmount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.emp, emp) &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(reducePrice),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(paymentType),
      const DeepCollectionEquality().hash(hasCredit),
      const DeepCollectionEquality().hash(creditAmount),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(emp),
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(_itemList),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_SaleCopyWith<_$_Sale> get copyWith =>
      __$$_SaleCopyWithImpl<_$_Sale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleToJson(
      this,
    );
  }
}

abstract class _Sale implements Sale {
  const factory _Sale(
      @JsonKey(name: "total_amount") @HiveField(0) final int? totalAmount,
      @JsonKey(name: "reduce_price") @HiveField(1) final int? reducePrice,
      @JsonKey(name: "description") @HiveField(2) final String? desc,
      @JsonKey(name: "payment_type") @HiveField(3) final String? paymentType,
      @JsonKey(name: "has_credit") @HiveField(4) final String? hasCredit,
      @JsonKey(name: "credit_amount") @HiveField(5) final int? creditAmount,
      @JsonKey(name: "status") @HiveField(6) final String? status,
      @JsonKey(name: "_id") @HiveField(7) final String? id,
      @JsonKey(name: "ownerid") @HiveField(8) final Owner? owner,
      @JsonKey(name: "employeeid") @HiveField(9) final Employee? emp,
      @JsonKey(name: "customerid") @HiveField(10) final CustomerItem? customer,
      @JsonKey(name: "items") @HiveField(11) final List<SaleItem> itemList,
      @JsonKey(name: "code") @HiveField(12) final String? code,
      @JsonKey(name: "created_at") @HiveField(13) final String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(14) final String? updatedAt,
      @JsonKey(name: "__v") @HiveField(15) final int? version) = _$_Sale;

  factory _Sale.fromJson(Map<String, dynamic> json) = _$_Sale.fromJson;

  @override
  @JsonKey(name: "total_amount")
  @HiveField(0)
  int? get totalAmount;
  @override
  @JsonKey(name: "reduce_price")
  @HiveField(1)
  int? get reducePrice;
  @override
  @JsonKey(name: "description")
  @HiveField(2)
  String? get desc;
  @override
  @JsonKey(name: "payment_type")
  @HiveField(3)
  String? get paymentType;
  @override
  @JsonKey(name: "has_credit")
  @HiveField(4)
  String? get hasCredit;
  @override
  @JsonKey(name: "credit_amount")
  @HiveField(5)
  int? get creditAmount;
  @override
  @JsonKey(name: "status")
  @HiveField(6)
  String? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(7)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(8)
  Owner? get owner;
  @override
  @JsonKey(name: "employeeid")
  @HiveField(9)
  Employee? get emp;
  @override
  @JsonKey(name: "customerid")
  @HiveField(10)
  CustomerItem? get customer;
  @override
  @JsonKey(name: "items")
  @HiveField(11)
  List<SaleItem> get itemList;
  @override
  @JsonKey(name: "code")
  @HiveField(12)
  String? get code;
  @override
  @JsonKey(name: "created_at")
  @HiveField(13)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(14)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(15)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_SaleCopyWith<_$_Sale> get copyWith => throw _privateConstructorUsedError;
}

SaleItem _$SaleItemFromJson(Map<String, dynamic> json) {
  return _SaleItem.fromJson(json);
}

/// @nodoc
mixin _$SaleItem {
  @JsonKey(name: "quantity")
  @HiveField(0)
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  @HiveField(1)
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  @HiveField(2)
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_price")
  @HiveField(3)
  int? get discountPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  @HiveField(4)
  int? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "origin_price")
  @HiveField(5)
  int? get originPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(6)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "productid")
  @HiveField(7)
  ItemRes? get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleItemCopyWith<SaleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleItemCopyWith<$Res> {
  factory $SaleItemCopyWith(SaleItem value, $Res Function(SaleItem) then) =
      _$SaleItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "quantity") @HiveField(0) int? qty,
      @JsonKey(name: "discount_type") @HiveField(1) String? discountType,
      @JsonKey(name: "discount") @HiveField(2) int? discount,
      @JsonKey(name: "discount_price") @HiveField(3) int? discountPrice,
      @JsonKey(name: "sale_price") @HiveField(4) int? salePrice,
      @JsonKey(name: "origin_price") @HiveField(5) int? originPrice,
      @JsonKey(name: "_id") @HiveField(6) String? id,
      @JsonKey(name: "productid") @HiveField(7) ItemRes? item});

  $ItemResCopyWith<$Res>? get item;
}

/// @nodoc
class _$SaleItemCopyWithImpl<$Res> implements $SaleItemCopyWith<$Res> {
  _$SaleItemCopyWithImpl(this._value, this._then);

  final SaleItem _value;
  // ignore: unused_field
  final $Res Function(SaleItem) _then;

  @override
  $Res call({
    Object? qty = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? discountPrice = freezed,
    Object? salePrice = freezed,
    Object? originPrice = freezed,
    Object? id = freezed,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      originPrice: originPrice == freezed
          ? _value.originPrice
          : originPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemRes?,
    ));
  }

  @override
  $ItemResCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemResCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_SaleItemCopyWith<$Res> implements $SaleItemCopyWith<$Res> {
  factory _$$_SaleItemCopyWith(
          _$_SaleItem value, $Res Function(_$_SaleItem) then) =
      __$$_SaleItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "quantity") @HiveField(0) int? qty,
      @JsonKey(name: "discount_type") @HiveField(1) String? discountType,
      @JsonKey(name: "discount") @HiveField(2) int? discount,
      @JsonKey(name: "discount_price") @HiveField(3) int? discountPrice,
      @JsonKey(name: "sale_price") @HiveField(4) int? salePrice,
      @JsonKey(name: "origin_price") @HiveField(5) int? originPrice,
      @JsonKey(name: "_id") @HiveField(6) String? id,
      @JsonKey(name: "productid") @HiveField(7) ItemRes? item});

  @override
  $ItemResCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_SaleItemCopyWithImpl<$Res> extends _$SaleItemCopyWithImpl<$Res>
    implements _$$_SaleItemCopyWith<$Res> {
  __$$_SaleItemCopyWithImpl(
      _$_SaleItem _value, $Res Function(_$_SaleItem) _then)
      : super(_value, (v) => _then(v as _$_SaleItem));

  @override
  _$_SaleItem get _value => super._value as _$_SaleItem;

  @override
  $Res call({
    Object? qty = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? discountPrice = freezed,
    Object? salePrice = freezed,
    Object? originPrice = freezed,
    Object? id = freezed,
    Object? item = freezed,
  }) {
    return _then(_$_SaleItem(
      qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      originPrice == freezed
          ? _value.originPrice
          : originPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemRes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 23)
class _$_SaleItem implements _SaleItem {
  const _$_SaleItem(
      @JsonKey(name: "quantity") @HiveField(0) this.qty,
      @JsonKey(name: "discount_type") @HiveField(1) this.discountType,
      @JsonKey(name: "discount") @HiveField(2) this.discount,
      @JsonKey(name: "discount_price") @HiveField(3) this.discountPrice,
      @JsonKey(name: "sale_price") @HiveField(4) this.salePrice,
      @JsonKey(name: "origin_price") @HiveField(5) this.originPrice,
      @JsonKey(name: "_id") @HiveField(6) this.id,
      @JsonKey(name: "productid") @HiveField(7) this.item);

  factory _$_SaleItem.fromJson(Map<String, dynamic> json) =>
      _$$_SaleItemFromJson(json);

  @override
  @JsonKey(name: "quantity")
  @HiveField(0)
  final int? qty;
  @override
  @JsonKey(name: "discount_type")
  @HiveField(1)
  final String? discountType;
  @override
  @JsonKey(name: "discount")
  @HiveField(2)
  final int? discount;
  @override
  @JsonKey(name: "discount_price")
  @HiveField(3)
  final int? discountPrice;
  @override
  @JsonKey(name: "sale_price")
  @HiveField(4)
  final int? salePrice;
  @override
  @JsonKey(name: "origin_price")
  @HiveField(5)
  final int? originPrice;
  @override
  @JsonKey(name: "_id")
  @HiveField(6)
  final String? id;
  @override
  @JsonKey(name: "productid")
  @HiveField(7)
  final ItemRes? item;

  @override
  String toString() {
    return 'SaleItem(qty: $qty, discountType: $discountType, discount: $discount, discountPrice: $discountPrice, salePrice: $salePrice, originPrice: $originPrice, id: $id, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleItem &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality()
                .equals(other.discountType, discountType) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality()
                .equals(other.discountPrice, discountPrice) &&
            const DeepCollectionEquality().equals(other.salePrice, salePrice) &&
            const DeepCollectionEquality()
                .equals(other.originPrice, originPrice) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(discountType),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(discountPrice),
      const DeepCollectionEquality().hash(salePrice),
      const DeepCollectionEquality().hash(originPrice),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_SaleItemCopyWith<_$_SaleItem> get copyWith =>
      __$$_SaleItemCopyWithImpl<_$_SaleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleItemToJson(
      this,
    );
  }
}

abstract class _SaleItem implements SaleItem {
  const factory _SaleItem(
      @JsonKey(name: "quantity")
      @HiveField(0)
          final int? qty,
      @JsonKey(name: "discount_type")
      @HiveField(1)
          final String? discountType,
      @JsonKey(name: "discount")
      @HiveField(2)
          final int? discount,
      @JsonKey(name: "discount_price")
      @HiveField(3)
          final int? discountPrice,
      @JsonKey(name: "sale_price")
      @HiveField(4)
          final int? salePrice,
      @JsonKey(name: "origin_price")
      @HiveField(5)
          final int? originPrice,
      @JsonKey(name: "_id")
      @HiveField(6)
          final String? id,
      @JsonKey(name: "productid")
      @HiveField(7)
          final ItemRes? item) = _$_SaleItem;

  factory _SaleItem.fromJson(Map<String, dynamic> json) = _$_SaleItem.fromJson;

  @override
  @JsonKey(name: "quantity")
  @HiveField(0)
  int? get qty;
  @override
  @JsonKey(name: "discount_type")
  @HiveField(1)
  String? get discountType;
  @override
  @JsonKey(name: "discount")
  @HiveField(2)
  int? get discount;
  @override
  @JsonKey(name: "discount_price")
  @HiveField(3)
  int? get discountPrice;
  @override
  @JsonKey(name: "sale_price")
  @HiveField(4)
  int? get salePrice;
  @override
  @JsonKey(name: "origin_price")
  @HiveField(5)
  int? get originPrice;
  @override
  @JsonKey(name: "_id")
  @HiveField(6)
  String? get id;
  @override
  @JsonKey(name: "productid")
  @HiveField(7)
  ItemRes? get item;
  @override
  @JsonKey(ignore: true)
  _$$_SaleItemCopyWith<_$_SaleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  @JsonKey(name: "total_amount")
  @HiveField(0)
  int? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "reduce_price")
  @HiveField(1)
  int? get reducePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(2)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type")
  @HiveField(3)
  String? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "has_credit")
  @HiveField(4)
  String? get hasCredit => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_amount")
  @HiveField(5)
  int? get creditAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(6)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(7)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(8)
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "employeeid")
  @HiveField(9)
  String? get emp => throw _privateConstructorUsedError;
  @JsonKey(name: "customerid")
  @HiveField(10)
  String? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  @HiveField(11)
  List<SaleInvoiceItem> get itemList => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  @HiveField(12)
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(13)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(14)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(15)
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "total_amount") @HiveField(0) int? totalAmount,
      @JsonKey(name: "reduce_price") @HiveField(1) int? reducePrice,
      @JsonKey(name: "description") @HiveField(2) String? desc,
      @JsonKey(name: "payment_type") @HiveField(3) String? paymentType,
      @JsonKey(name: "has_credit") @HiveField(4) String? hasCredit,
      @JsonKey(name: "credit_amount") @HiveField(5) int? creditAmount,
      @JsonKey(name: "status") @HiveField(6) String? status,
      @JsonKey(name: "_id") @HiveField(7) String? id,
      @JsonKey(name: "ownerid") @HiveField(8) Owner? owner,
      @JsonKey(name: "employeeid") @HiveField(9) String? emp,
      @JsonKey(name: "customerid") @HiveField(10) String? customer,
      @JsonKey(name: "items") @HiveField(11) List<SaleInvoiceItem> itemList,
      @JsonKey(name: "code") @HiveField(12) String? code,
      @JsonKey(name: "created_at") @HiveField(13) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(14) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(15) int? version});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  final Invoice _value;
  // ignore: unused_field
  final $Res Function(Invoice) _then;

  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? reducePrice = freezed,
    Object? desc = freezed,
    Object? paymentType = freezed,
    Object? hasCredit = freezed,
    Object? creditAmount = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? emp = freezed,
    Object? customer = freezed,
    Object? itemList = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      reducePrice: reducePrice == freezed
          ? _value.reducePrice
          : reducePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCredit: hasCredit == freezed
          ? _value.hasCredit
          : hasCredit // ignore: cast_nullable_to_non_nullable
              as String?,
      creditAmount: creditAmount == freezed
          ? _value.creditAmount
          : creditAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      emp: emp == freezed
          ? _value.emp
          : emp // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      itemList: itemList == freezed
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<SaleInvoiceItem>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$_InvoiceCopyWith(
          _$_Invoice value, $Res Function(_$_Invoice) then) =
      __$$_InvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "total_amount") @HiveField(0) int? totalAmount,
      @JsonKey(name: "reduce_price") @HiveField(1) int? reducePrice,
      @JsonKey(name: "description") @HiveField(2) String? desc,
      @JsonKey(name: "payment_type") @HiveField(3) String? paymentType,
      @JsonKey(name: "has_credit") @HiveField(4) String? hasCredit,
      @JsonKey(name: "credit_amount") @HiveField(5) int? creditAmount,
      @JsonKey(name: "status") @HiveField(6) String? status,
      @JsonKey(name: "_id") @HiveField(7) String? id,
      @JsonKey(name: "ownerid") @HiveField(8) Owner? owner,
      @JsonKey(name: "employeeid") @HiveField(9) String? emp,
      @JsonKey(name: "customerid") @HiveField(10) String? customer,
      @JsonKey(name: "items") @HiveField(11) List<SaleInvoiceItem> itemList,
      @JsonKey(name: "code") @HiveField(12) String? code,
      @JsonKey(name: "created_at") @HiveField(13) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(14) String? updatedAt,
      @JsonKey(name: "__v") @HiveField(15) int? version});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_InvoiceCopyWithImpl<$Res> extends _$InvoiceCopyWithImpl<$Res>
    implements _$$_InvoiceCopyWith<$Res> {
  __$$_InvoiceCopyWithImpl(_$_Invoice _value, $Res Function(_$_Invoice) _then)
      : super(_value, (v) => _then(v as _$_Invoice));

  @override
  _$_Invoice get _value => super._value as _$_Invoice;

  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? reducePrice = freezed,
    Object? desc = freezed,
    Object? paymentType = freezed,
    Object? hasCredit = freezed,
    Object? creditAmount = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? emp = freezed,
    Object? customer = freezed,
    Object? itemList = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_Invoice(
      totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      reducePrice == freezed
          ? _value.reducePrice
          : reducePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCredit == freezed
          ? _value.hasCredit
          : hasCredit // ignore: cast_nullable_to_non_nullable
              as String?,
      creditAmount == freezed
          ? _value.creditAmount
          : creditAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      emp == freezed
          ? _value.emp
          : emp // ignore: cast_nullable_to_non_nullable
              as String?,
      customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      itemList == freezed
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<SaleInvoiceItem>,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 24)
class _$_Invoice implements _Invoice {
  const _$_Invoice(
      @JsonKey(name: "total_amount")
      @HiveField(0)
          this.totalAmount,
      @JsonKey(name: "reduce_price")
      @HiveField(1)
          this.reducePrice,
      @JsonKey(name: "description")
      @HiveField(2)
          this.desc,
      @JsonKey(name: "payment_type")
      @HiveField(3)
          this.paymentType,
      @JsonKey(name: "has_credit")
      @HiveField(4)
          this.hasCredit,
      @JsonKey(name: "credit_amount")
      @HiveField(5)
          this.creditAmount,
      @JsonKey(name: "status")
      @HiveField(6)
          this.status,
      @JsonKey(name: "_id")
      @HiveField(7)
          this.id,
      @JsonKey(name: "ownerid")
      @HiveField(8)
          this.owner,
      @JsonKey(name: "employeeid")
      @HiveField(9)
          this.emp,
      @JsonKey(name: "customerid")
      @HiveField(10)
          this.customer,
      @JsonKey(name: "items")
      @HiveField(11)
          final List<SaleInvoiceItem> itemList,
      @JsonKey(name: "code")
      @HiveField(12)
          this.code,
      @JsonKey(name: "created_at")
      @HiveField(13)
          this.createdAt,
      @JsonKey(name: "updated_at")
      @HiveField(14)
          this.updatedAt,
      @JsonKey(name: "__v")
      @HiveField(15)
          this.version)
      : _itemList = itemList;

  factory _$_Invoice.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceFromJson(json);

  @override
  @JsonKey(name: "total_amount")
  @HiveField(0)
  final int? totalAmount;
  @override
  @JsonKey(name: "reduce_price")
  @HiveField(1)
  final int? reducePrice;
  @override
  @JsonKey(name: "description")
  @HiveField(2)
  final String? desc;
  @override
  @JsonKey(name: "payment_type")
  @HiveField(3)
  final String? paymentType;
  @override
  @JsonKey(name: "has_credit")
  @HiveField(4)
  final String? hasCredit;
  @override
  @JsonKey(name: "credit_amount")
  @HiveField(5)
  final int? creditAmount;
  @override
  @JsonKey(name: "status")
  @HiveField(6)
  final String? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(7)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(8)
  final Owner? owner;
  @override
  @JsonKey(name: "employeeid")
  @HiveField(9)
  final String? emp;
  @override
  @JsonKey(name: "customerid")
  @HiveField(10)
  final String? customer;
  final List<SaleInvoiceItem> _itemList;
  @override
  @JsonKey(name: "items")
  @HiveField(11)
  List<SaleInvoiceItem> get itemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  @JsonKey(name: "code")
  @HiveField(12)
  final String? code;
  @override
  @JsonKey(name: "created_at")
  @HiveField(13)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(14)
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(15)
  final int? version;

  @override
  String toString() {
    return 'Invoice(totalAmount: $totalAmount, reducePrice: $reducePrice, desc: $desc, paymentType: $paymentType, hasCredit: $hasCredit, creditAmount: $creditAmount, status: $status, id: $id, owner: $owner, emp: $emp, customer: $customer, itemList: $itemList, code: $code, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invoice &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality()
                .equals(other.reducePrice, reducePrice) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality()
                .equals(other.paymentType, paymentType) &&
            const DeepCollectionEquality().equals(other.hasCredit, hasCredit) &&
            const DeepCollectionEquality()
                .equals(other.creditAmount, creditAmount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.emp, emp) &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(reducePrice),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(paymentType),
      const DeepCollectionEquality().hash(hasCredit),
      const DeepCollectionEquality().hash(creditAmount),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(emp),
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(_itemList),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      __$$_InvoiceCopyWithImpl<_$_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      @JsonKey(name: "total_amount")
      @HiveField(0)
          final int? totalAmount,
      @JsonKey(name: "reduce_price")
      @HiveField(1)
          final int? reducePrice,
      @JsonKey(name: "description")
      @HiveField(2)
          final String? desc,
      @JsonKey(name: "payment_type")
      @HiveField(3)
          final String? paymentType,
      @JsonKey(name: "has_credit")
      @HiveField(4)
          final String? hasCredit,
      @JsonKey(name: "credit_amount")
      @HiveField(5)
          final int? creditAmount,
      @JsonKey(name: "status")
      @HiveField(6)
          final String? status,
      @JsonKey(name: "_id")
      @HiveField(7)
          final String? id,
      @JsonKey(name: "ownerid")
      @HiveField(8)
          final Owner? owner,
      @JsonKey(name: "employeeid")
      @HiveField(9)
          final String? emp,
      @JsonKey(name: "customerid")
      @HiveField(10)
          final String? customer,
      @JsonKey(name: "items")
      @HiveField(11)
          final List<SaleInvoiceItem> itemList,
      @JsonKey(name: "code")
      @HiveField(12)
          final String? code,
      @JsonKey(name: "created_at")
      @HiveField(13)
          final String? createdAt,
      @JsonKey(name: "updated_at")
      @HiveField(14)
          final String? updatedAt,
      @JsonKey(name: "__v")
      @HiveField(15)
          final int? version) = _$_Invoice;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$_Invoice.fromJson;

  @override
  @JsonKey(name: "total_amount")
  @HiveField(0)
  int? get totalAmount;
  @override
  @JsonKey(name: "reduce_price")
  @HiveField(1)
  int? get reducePrice;
  @override
  @JsonKey(name: "description")
  @HiveField(2)
  String? get desc;
  @override
  @JsonKey(name: "payment_type")
  @HiveField(3)
  String? get paymentType;
  @override
  @JsonKey(name: "has_credit")
  @HiveField(4)
  String? get hasCredit;
  @override
  @JsonKey(name: "credit_amount")
  @HiveField(5)
  int? get creditAmount;
  @override
  @JsonKey(name: "status")
  @HiveField(6)
  String? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(7)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(8)
  Owner? get owner;
  @override
  @JsonKey(name: "employeeid")
  @HiveField(9)
  String? get emp;
  @override
  @JsonKey(name: "customerid")
  @HiveField(10)
  String? get customer;
  @override
  @JsonKey(name: "items")
  @HiveField(11)
  List<SaleInvoiceItem> get itemList;
  @override
  @JsonKey(name: "code")
  @HiveField(12)
  String? get code;
  @override
  @JsonKey(name: "created_at")
  @HiveField(13)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(14)
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  @HiveField(15)
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleInvoiceItem _$SaleInvoiceItemFromJson(Map<String, dynamic> json) {
  return _SaleInvoiceItem.fromJson(json);
}

/// @nodoc
mixin _$SaleInvoiceItem {
  @JsonKey(name: "quantity")
  @HiveField(0)
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  @HiveField(1)
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  @HiveField(2)
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_price")
  @HiveField(3)
  int? get discountPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  @HiveField(4)
  int? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "origin_price")
  @HiveField(5)
  int? get originPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(6)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "productid")
  @HiveField(7)
  String? get itemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleInvoiceItemCopyWith<SaleInvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInvoiceItemCopyWith<$Res> {
  factory $SaleInvoiceItemCopyWith(
          SaleInvoiceItem value, $Res Function(SaleInvoiceItem) then) =
      _$SaleInvoiceItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "quantity") @HiveField(0) int? qty,
      @JsonKey(name: "discount_type") @HiveField(1) String? discountType,
      @JsonKey(name: "discount") @HiveField(2) int? discount,
      @JsonKey(name: "discount_price") @HiveField(3) int? discountPrice,
      @JsonKey(name: "sale_price") @HiveField(4) int? salePrice,
      @JsonKey(name: "origin_price") @HiveField(5) int? originPrice,
      @JsonKey(name: "_id") @HiveField(6) String? id,
      @JsonKey(name: "productid") @HiveField(7) String? itemId});
}

/// @nodoc
class _$SaleInvoiceItemCopyWithImpl<$Res>
    implements $SaleInvoiceItemCopyWith<$Res> {
  _$SaleInvoiceItemCopyWithImpl(this._value, this._then);

  final SaleInvoiceItem _value;
  // ignore: unused_field
  final $Res Function(SaleInvoiceItem) _then;

  @override
  $Res call({
    Object? qty = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? discountPrice = freezed,
    Object? salePrice = freezed,
    Object? originPrice = freezed,
    Object? id = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_value.copyWith(
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      originPrice: originPrice == freezed
          ? _value.originPrice
          : originPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SaleInvoiceItemCopyWith<$Res>
    implements $SaleInvoiceItemCopyWith<$Res> {
  factory _$$_SaleInvoiceItemCopyWith(
          _$_SaleInvoiceItem value, $Res Function(_$_SaleInvoiceItem) then) =
      __$$_SaleInvoiceItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "quantity") @HiveField(0) int? qty,
      @JsonKey(name: "discount_type") @HiveField(1) String? discountType,
      @JsonKey(name: "discount") @HiveField(2) int? discount,
      @JsonKey(name: "discount_price") @HiveField(3) int? discountPrice,
      @JsonKey(name: "sale_price") @HiveField(4) int? salePrice,
      @JsonKey(name: "origin_price") @HiveField(5) int? originPrice,
      @JsonKey(name: "_id") @HiveField(6) String? id,
      @JsonKey(name: "productid") @HiveField(7) String? itemId});
}

/// @nodoc
class __$$_SaleInvoiceItemCopyWithImpl<$Res>
    extends _$SaleInvoiceItemCopyWithImpl<$Res>
    implements _$$_SaleInvoiceItemCopyWith<$Res> {
  __$$_SaleInvoiceItemCopyWithImpl(
      _$_SaleInvoiceItem _value, $Res Function(_$_SaleInvoiceItem) _then)
      : super(_value, (v) => _then(v as _$_SaleInvoiceItem));

  @override
  _$_SaleInvoiceItem get _value => super._value as _$_SaleInvoiceItem;

  @override
  $Res call({
    Object? qty = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? discountPrice = freezed,
    Object? salePrice = freezed,
    Object? originPrice = freezed,
    Object? id = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_$_SaleInvoiceItem(
      qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      originPrice == freezed
          ? _value.originPrice
          : originPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 25)
class _$_SaleInvoiceItem implements _SaleInvoiceItem {
  const _$_SaleInvoiceItem(
      @JsonKey(name: "quantity") @HiveField(0) this.qty,
      @JsonKey(name: "discount_type") @HiveField(1) this.discountType,
      @JsonKey(name: "discount") @HiveField(2) this.discount,
      @JsonKey(name: "discount_price") @HiveField(3) this.discountPrice,
      @JsonKey(name: "sale_price") @HiveField(4) this.salePrice,
      @JsonKey(name: "origin_price") @HiveField(5) this.originPrice,
      @JsonKey(name: "_id") @HiveField(6) this.id,
      @JsonKey(name: "productid") @HiveField(7) this.itemId);

  factory _$_SaleInvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$$_SaleInvoiceItemFromJson(json);

  @override
  @JsonKey(name: "quantity")
  @HiveField(0)
  final int? qty;
  @override
  @JsonKey(name: "discount_type")
  @HiveField(1)
  final String? discountType;
  @override
  @JsonKey(name: "discount")
  @HiveField(2)
  final int? discount;
  @override
  @JsonKey(name: "discount_price")
  @HiveField(3)
  final int? discountPrice;
  @override
  @JsonKey(name: "sale_price")
  @HiveField(4)
  final int? salePrice;
  @override
  @JsonKey(name: "origin_price")
  @HiveField(5)
  final int? originPrice;
  @override
  @JsonKey(name: "_id")
  @HiveField(6)
  final String? id;
  @override
  @JsonKey(name: "productid")
  @HiveField(7)
  final String? itemId;

  @override
  String toString() {
    return 'SaleInvoiceItem(qty: $qty, discountType: $discountType, discount: $discount, discountPrice: $discountPrice, salePrice: $salePrice, originPrice: $originPrice, id: $id, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleInvoiceItem &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality()
                .equals(other.discountType, discountType) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality()
                .equals(other.discountPrice, discountPrice) &&
            const DeepCollectionEquality().equals(other.salePrice, salePrice) &&
            const DeepCollectionEquality()
                .equals(other.originPrice, originPrice) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(discountType),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(discountPrice),
      const DeepCollectionEquality().hash(salePrice),
      const DeepCollectionEquality().hash(originPrice),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$$_SaleInvoiceItemCopyWith<_$_SaleInvoiceItem> get copyWith =>
      __$$_SaleInvoiceItemCopyWithImpl<_$_SaleInvoiceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleInvoiceItemToJson(
      this,
    );
  }
}

abstract class _SaleInvoiceItem implements SaleInvoiceItem {
  const factory _SaleInvoiceItem(
      @JsonKey(name: "quantity")
      @HiveField(0)
          final int? qty,
      @JsonKey(name: "discount_type")
      @HiveField(1)
          final String? discountType,
      @JsonKey(name: "discount")
      @HiveField(2)
          final int? discount,
      @JsonKey(name: "discount_price")
      @HiveField(3)
          final int? discountPrice,
      @JsonKey(name: "sale_price")
      @HiveField(4)
          final int? salePrice,
      @JsonKey(name: "origin_price")
      @HiveField(5)
          final int? originPrice,
      @JsonKey(name: "_id")
      @HiveField(6)
          final String? id,
      @JsonKey(name: "productid")
      @HiveField(7)
          final String? itemId) = _$_SaleInvoiceItem;

  factory _SaleInvoiceItem.fromJson(Map<String, dynamic> json) =
      _$_SaleInvoiceItem.fromJson;

  @override
  @JsonKey(name: "quantity")
  @HiveField(0)
  int? get qty;
  @override
  @JsonKey(name: "discount_type")
  @HiveField(1)
  String? get discountType;
  @override
  @JsonKey(name: "discount")
  @HiveField(2)
  int? get discount;
  @override
  @JsonKey(name: "discount_price")
  @HiveField(3)
  int? get discountPrice;
  @override
  @JsonKey(name: "sale_price")
  @HiveField(4)
  int? get salePrice;
  @override
  @JsonKey(name: "origin_price")
  @HiveField(5)
  int? get originPrice;
  @override
  @JsonKey(name: "_id")
  @HiveField(6)
  String? get id;
  @override
  @JsonKey(name: "productid")
  @HiveField(7)
  String? get itemId;
  @override
  @JsonKey(ignore: true)
  _$$_SaleInvoiceItemCopyWith<_$_SaleInvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}
