// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesRequest _$SalesRequestFromJson(Map<String, dynamic> json) {
  return _SalesRequest.fromJson(json);
}

/// @nodoc
mixin _$SalesRequest {
  @JsonKey(name: "ownerid")
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "employeeid")
  String? get empId => throw _privateConstructorUsedError;
  @JsonKey(name: "customerid")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "reduce_price")
  int? get reducePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "has_credit")
  String? get hasCredit => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_amount")
  int? get creditAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  int? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type")
  String? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<SaleReqItem> get saleItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesRequestCopyWith<SalesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesRequestCopyWith<$Res> {
  factory $SalesRequestCopyWith(
          SalesRequest value, $Res Function(SalesRequest) then) =
      _$SalesRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "employeeid") String? empId,
      @JsonKey(name: "customerid") String? customerId,
      @JsonKey(name: "reduce_price") int? reducePrice,
      @JsonKey(name: "has_credit") String? hasCredit,
      @JsonKey(name: "credit_amount") int? creditAmount,
      @JsonKey(name: "total_amount") int? totalAmount,
      @JsonKey(name: "payment_type") String? paymentType,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "items") List<SaleReqItem> saleItems});
}

/// @nodoc
class _$SalesRequestCopyWithImpl<$Res> implements $SalesRequestCopyWith<$Res> {
  _$SalesRequestCopyWithImpl(this._value, this._then);

  final SalesRequest _value;
  // ignore: unused_field
  final $Res Function(SalesRequest) _then;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? empId = freezed,
    Object? customerId = freezed,
    Object? reducePrice = freezed,
    Object? hasCredit = freezed,
    Object? creditAmount = freezed,
    Object? totalAmount = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? saleItems = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      empId: empId == freezed
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      reducePrice: reducePrice == freezed
          ? _value.reducePrice
          : reducePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      hasCredit: hasCredit == freezed
          ? _value.hasCredit
          : hasCredit // ignore: cast_nullable_to_non_nullable
              as String?,
      creditAmount: creditAmount == freezed
          ? _value.creditAmount
          : creditAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      saleItems: saleItems == freezed
          ? _value.saleItems
          : saleItems // ignore: cast_nullable_to_non_nullable
              as List<SaleReqItem>,
    ));
  }
}

/// @nodoc
abstract class _$$_SalesRequestCopyWith<$Res>
    implements $SalesRequestCopyWith<$Res> {
  factory _$$_SalesRequestCopyWith(
          _$_SalesRequest value, $Res Function(_$_SalesRequest) then) =
      __$$_SalesRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "ownerid") String? ownerId,
      @JsonKey(name: "employeeid") String? empId,
      @JsonKey(name: "customerid") String? customerId,
      @JsonKey(name: "reduce_price") int? reducePrice,
      @JsonKey(name: "has_credit") String? hasCredit,
      @JsonKey(name: "credit_amount") int? creditAmount,
      @JsonKey(name: "total_amount") int? totalAmount,
      @JsonKey(name: "payment_type") String? paymentType,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "items") List<SaleReqItem> saleItems});
}

/// @nodoc
class __$$_SalesRequestCopyWithImpl<$Res>
    extends _$SalesRequestCopyWithImpl<$Res>
    implements _$$_SalesRequestCopyWith<$Res> {
  __$$_SalesRequestCopyWithImpl(
      _$_SalesRequest _value, $Res Function(_$_SalesRequest) _then)
      : super(_value, (v) => _then(v as _$_SalesRequest));

  @override
  _$_SalesRequest get _value => super._value as _$_SalesRequest;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? empId = freezed,
    Object? customerId = freezed,
    Object? reducePrice = freezed,
    Object? hasCredit = freezed,
    Object? creditAmount = freezed,
    Object? totalAmount = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? saleItems = freezed,
  }) {
    return _then(_$_SalesRequest(
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      empId == freezed
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      reducePrice == freezed
          ? _value.reducePrice
          : reducePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      hasCredit == freezed
          ? _value.hasCredit
          : hasCredit // ignore: cast_nullable_to_non_nullable
              as String?,
      creditAmount == freezed
          ? _value.creditAmount
          : creditAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      saleItems == freezed
          ? _value._saleItems
          : saleItems // ignore: cast_nullable_to_non_nullable
              as List<SaleReqItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesRequest implements _SalesRequest {
  const _$_SalesRequest(
      @JsonKey(name: "ownerid") this.ownerId,
      @JsonKey(name: "employeeid") this.empId,
      @JsonKey(name: "customerid") this.customerId,
      @JsonKey(name: "reduce_price") this.reducePrice,
      @JsonKey(name: "has_credit") this.hasCredit,
      @JsonKey(name: "credit_amount") this.creditAmount,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "payment_type") this.paymentType,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "items") final List<SaleReqItem> saleItems)
      : _saleItems = saleItems;

  factory _$_SalesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SalesRequestFromJson(json);

  @override
  @JsonKey(name: "ownerid")
  final String? ownerId;
  @override
  @JsonKey(name: "employeeid")
  final String? empId;
  @override
  @JsonKey(name: "customerid")
  final String? customerId;
  @override
  @JsonKey(name: "reduce_price")
  final int? reducePrice;
  @override
  @JsonKey(name: "has_credit")
  final String? hasCredit;
  @override
  @JsonKey(name: "credit_amount")
  final int? creditAmount;
  @override
  @JsonKey(name: "total_amount")
  final int? totalAmount;
  @override
  @JsonKey(name: "payment_type")
  final String? paymentType;
  @override
  @JsonKey(name: "status")
  final String? status;
  final List<SaleReqItem> _saleItems;
  @override
  @JsonKey(name: "items")
  List<SaleReqItem> get saleItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleItems);
  }

  @override
  String toString() {
    return 'SalesRequest(ownerId: $ownerId, empId: $empId, customerId: $customerId, reducePrice: $reducePrice, hasCredit: $hasCredit, creditAmount: $creditAmount, totalAmount: $totalAmount, paymentType: $paymentType, status: $status, saleItems: $saleItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesRequest &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.empId, empId) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.reducePrice, reducePrice) &&
            const DeepCollectionEquality().equals(other.hasCredit, hasCredit) &&
            const DeepCollectionEquality()
                .equals(other.creditAmount, creditAmount) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality()
                .equals(other.paymentType, paymentType) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._saleItems, _saleItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(empId),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(reducePrice),
      const DeepCollectionEquality().hash(hasCredit),
      const DeepCollectionEquality().hash(creditAmount),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(paymentType),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_saleItems));

  @JsonKey(ignore: true)
  @override
  _$$_SalesRequestCopyWith<_$_SalesRequest> get copyWith =>
      __$$_SalesRequestCopyWithImpl<_$_SalesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesRequestToJson(
      this,
    );
  }
}

abstract class _SalesRequest implements SalesRequest {
  const factory _SalesRequest(
          @JsonKey(name: "ownerid") final String? ownerId,
          @JsonKey(name: "employeeid") final String? empId,
          @JsonKey(name: "customerid") final String? customerId,
          @JsonKey(name: "reduce_price") final int? reducePrice,
          @JsonKey(name: "has_credit") final String? hasCredit,
          @JsonKey(name: "credit_amount") final int? creditAmount,
          @JsonKey(name: "total_amount") final int? totalAmount,
          @JsonKey(name: "payment_type") final String? paymentType,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "items") final List<SaleReqItem> saleItems) =
      _$_SalesRequest;

  factory _SalesRequest.fromJson(Map<String, dynamic> json) =
      _$_SalesRequest.fromJson;

  @override
  @JsonKey(name: "ownerid")
  String? get ownerId;
  @override
  @JsonKey(name: "employeeid")
  String? get empId;
  @override
  @JsonKey(name: "customerid")
  String? get customerId;
  @override
  @JsonKey(name: "reduce_price")
  int? get reducePrice;
  @override
  @JsonKey(name: "has_credit")
  String? get hasCredit;
  @override
  @JsonKey(name: "credit_amount")
  int? get creditAmount;
  @override
  @JsonKey(name: "total_amount")
  int? get totalAmount;
  @override
  @JsonKey(name: "payment_type")
  String? get paymentType;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "items")
  List<SaleReqItem> get saleItems;
  @override
  @JsonKey(ignore: true)
  _$$_SalesRequestCopyWith<_$_SalesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleReqItem _$SaleReqItemFromJson(Map<String, dynamic> json) {
  return _SaleReqItem.fromJson(json);
}

/// @nodoc
mixin _$SaleReqItem {
  @JsonKey(name: "productid")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_stock")
  String? get isStock => throw _privateConstructorUsedError;
  @JsonKey(name: "is_discount")
  String? get isDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_price")
  int? get discountPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  int? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "origin_price")
  int? get originPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleReqItemCopyWith<SaleReqItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleReqItemCopyWith<$Res> {
  factory $SaleReqItemCopyWith(
          SaleReqItem value, $Res Function(SaleReqItem) then) =
      _$SaleReqItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "productid") String? productId,
      @JsonKey(name: "is_stock") String? isStock,
      @JsonKey(name: "is_discount") String? isDiscount,
      @JsonKey(name: "quantity") int? qty,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "discount_price") int? discountPrice,
      @JsonKey(name: "sale_price") int? salePrice,
      @JsonKey(name: "origin_price") int? originPrice});
}

/// @nodoc
class _$SaleReqItemCopyWithImpl<$Res> implements $SaleReqItemCopyWith<$Res> {
  _$SaleReqItemCopyWithImpl(this._value, this._then);

  final SaleReqItem _value;
  // ignore: unused_field
  final $Res Function(SaleReqItem) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? isStock = freezed,
    Object? isDiscount = freezed,
    Object? qty = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? discountPrice = freezed,
    Object? salePrice = freezed,
    Object? originPrice = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      isStock: isStock == freezed
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as String?,
      isDiscount: isDiscount == freezed
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
abstract class _$$_SaleReqItemCopyWith<$Res>
    implements $SaleReqItemCopyWith<$Res> {
  factory _$$_SaleReqItemCopyWith(
          _$_SaleReqItem value, $Res Function(_$_SaleReqItem) then) =
      __$$_SaleReqItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "productid") String? productId,
      @JsonKey(name: "is_stock") String? isStock,
      @JsonKey(name: "is_discount") String? isDiscount,
      @JsonKey(name: "quantity") int? qty,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "discount_price") int? discountPrice,
      @JsonKey(name: "sale_price") int? salePrice,
      @JsonKey(name: "origin_price") int? originPrice});
}

/// @nodoc
class __$$_SaleReqItemCopyWithImpl<$Res> extends _$SaleReqItemCopyWithImpl<$Res>
    implements _$$_SaleReqItemCopyWith<$Res> {
  __$$_SaleReqItemCopyWithImpl(
      _$_SaleReqItem _value, $Res Function(_$_SaleReqItem) _then)
      : super(_value, (v) => _then(v as _$_SaleReqItem));

  @override
  _$_SaleReqItem get _value => super._value as _$_SaleReqItem;

  @override
  $Res call({
    Object? productId = freezed,
    Object? isStock = freezed,
    Object? isDiscount = freezed,
    Object? qty = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? discountPrice = freezed,
    Object? salePrice = freezed,
    Object? originPrice = freezed,
  }) {
    return _then(_$_SaleReqItem(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      isStock == freezed
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as String?,
      isDiscount == freezed
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleReqItem implements _SaleReqItem {
  const _$_SaleReqItem(
      @JsonKey(name: "productid") this.productId,
      @JsonKey(name: "is_stock") this.isStock,
      @JsonKey(name: "is_discount") this.isDiscount,
      @JsonKey(name: "quantity") this.qty,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "discount_price") this.discountPrice,
      @JsonKey(name: "sale_price") this.salePrice,
      @JsonKey(name: "origin_price") this.originPrice);

  factory _$_SaleReqItem.fromJson(Map<String, dynamic> json) =>
      _$$_SaleReqItemFromJson(json);

  @override
  @JsonKey(name: "productid")
  final String? productId;
  @override
  @JsonKey(name: "is_stock")
  final String? isStock;
  @override
  @JsonKey(name: "is_discount")
  final String? isDiscount;
  @override
  @JsonKey(name: "quantity")
  final int? qty;
  @override
  @JsonKey(name: "discount_type")
  final String? discountType;
  @override
  @JsonKey(name: "discount")
  final int? discount;
  @override
  @JsonKey(name: "discount_price")
  final int? discountPrice;
  @override
  @JsonKey(name: "sale_price")
  final int? salePrice;
  @override
  @JsonKey(name: "origin_price")
  final int? originPrice;

  @override
  String toString() {
    return 'SaleReqItem(productId: $productId, isStock: $isStock, isDiscount: $isDiscount, qty: $qty, discountType: $discountType, discount: $discount, discountPrice: $discountPrice, salePrice: $salePrice, originPrice: $originPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleReqItem &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.isStock, isStock) &&
            const DeepCollectionEquality()
                .equals(other.isDiscount, isDiscount) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality()
                .equals(other.discountType, discountType) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality()
                .equals(other.discountPrice, discountPrice) &&
            const DeepCollectionEquality().equals(other.salePrice, salePrice) &&
            const DeepCollectionEquality()
                .equals(other.originPrice, originPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(isStock),
      const DeepCollectionEquality().hash(isDiscount),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(discountType),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(discountPrice),
      const DeepCollectionEquality().hash(salePrice),
      const DeepCollectionEquality().hash(originPrice));

  @JsonKey(ignore: true)
  @override
  _$$_SaleReqItemCopyWith<_$_SaleReqItem> get copyWith =>
      __$$_SaleReqItemCopyWithImpl<_$_SaleReqItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleReqItemToJson(
      this,
    );
  }
}

abstract class _SaleReqItem implements SaleReqItem {
  const factory _SaleReqItem(
      @JsonKey(name: "productid") final String? productId,
      @JsonKey(name: "is_stock") final String? isStock,
      @JsonKey(name: "is_discount") final String? isDiscount,
      @JsonKey(name: "quantity") final int? qty,
      @JsonKey(name: "discount_type") final String? discountType,
      @JsonKey(name: "discount") final int? discount,
      @JsonKey(name: "discount_price") final int? discountPrice,
      @JsonKey(name: "sale_price") final int? salePrice,
      @JsonKey(name: "origin_price") final int? originPrice) = _$_SaleReqItem;

  factory _SaleReqItem.fromJson(Map<String, dynamic> json) =
      _$_SaleReqItem.fromJson;

  @override
  @JsonKey(name: "productid")
  String? get productId;
  @override
  @JsonKey(name: "is_stock")
  String? get isStock;
  @override
  @JsonKey(name: "is_discount")
  String? get isDiscount;
  @override
  @JsonKey(name: "quantity")
  int? get qty;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(name: "discount_price")
  int? get discountPrice;
  @override
  @JsonKey(name: "sale_price")
  int? get salePrice;
  @override
  @JsonKey(name: "origin_price")
  int? get originPrice;
  @override
  @JsonKey(ignore: true)
  _$$_SaleReqItemCopyWith<_$_SaleReqItem> get copyWith =>
      throw _privateConstructorUsedError;
}
