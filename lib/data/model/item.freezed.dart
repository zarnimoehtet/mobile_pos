// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: "presentation")
  @HiveField(0)
  Presentation? get presentation => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "cost")
  @HiveField(2)
  int? get cost => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  @HiveField(3)
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(4)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "is_discount")
  @HiveField(5)
  String? get isDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  @HiveField(6)
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  @HiveField(7)
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(8)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(9)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(10)
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(11)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryid")
  @HiveField(12)
  CategoryItem? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  @HiveField(13)
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  @HiveField(14)
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant")
  @HiveField(15)
  List<Varient>? get variant => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(16)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(17)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_date")
  @HiveField(18)
  String? get expDate => throw _privateConstructorUsedError;
  @JsonKey(name: "unitid")
  @HiveField(19)
  UnitItem? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(20)
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: "is_stock")
  @HiveField(21)
  String? get isStock => throw _privateConstructorUsedError;
  @HiveField(22)
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "presentation") @HiveField(0) Presentation? presentation,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "cost") @HiveField(2) int? cost,
      @JsonKey(name: "stock") @HiveField(3) int? stock,
      @JsonKey(name: "description") @HiveField(4) String? desc,
      @JsonKey(name: "is_discount") @HiveField(5) String? isDiscount,
      @JsonKey(name: "discount_type") @HiveField(6) String? discountType,
      @JsonKey(name: "discount") @HiveField(7) int? discount,
      @JsonKey(name: "status") @HiveField(8) bool? status,
      @JsonKey(name: "_id") @HiveField(9) String? id,
      @JsonKey(name: "ownerid") @HiveField(10) Owner? owner,
      @JsonKey(name: "name") @HiveField(11) String? name,
      @JsonKey(name: "categoryid") @HiveField(12) CategoryItem? category,
      @JsonKey(name: "sku") @HiveField(13) String? sku,
      @JsonKey(name: "barcode") @HiveField(14) String? barcode,
      @JsonKey(name: "variant") @HiveField(15) List<Varient>? variant,
      @JsonKey(name: "created_at") @HiveField(16) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(17) String? updatedAt,
      @JsonKey(name: "expired_date") @HiveField(18) String? expDate,
      @JsonKey(name: "unitid") @HiveField(19) UnitItem? unit,
      @JsonKey(name: "__v") @HiveField(20) int? version,
      @JsonKey(name: "is_stock") @HiveField(21) String? isStock,
      @HiveField(22) int? count});

  $PresentationCopyWith<$Res>? get presentation;
  $OwnerCopyWith<$Res>? get owner;
  $CategoryItemCopyWith<$Res>? get category;
  $UnitItemCopyWith<$Res>? get unit;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? presentation = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? stock = freezed,
    Object? desc = freezed,
    Object? isDiscount = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? variant = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expDate = freezed,
    Object? unit = freezed,
    Object? version = freezed,
    Object? isStock = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      presentation: presentation == freezed
          ? _value.presentation
          : presentation // ignore: cast_nullable_to_non_nullable
              as Presentation?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      isDiscount: isDiscount == freezed
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryItem?,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: variant == freezed
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as List<Varient>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate: expDate == freezed
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as UnitItem?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      isStock: isStock == freezed
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $PresentationCopyWith<$Res>? get presentation {
    if (_value.presentation == null) {
      return null;
    }

    return $PresentationCopyWith<$Res>(_value.presentation!, (value) {
      return _then(_value.copyWith(presentation: value));
    });
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
  $CategoryItemCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryItemCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $UnitItemCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $UnitItemCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "presentation") @HiveField(0) Presentation? presentation,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "cost") @HiveField(2) int? cost,
      @JsonKey(name: "stock") @HiveField(3) int? stock,
      @JsonKey(name: "description") @HiveField(4) String? desc,
      @JsonKey(name: "is_discount") @HiveField(5) String? isDiscount,
      @JsonKey(name: "discount_type") @HiveField(6) String? discountType,
      @JsonKey(name: "discount") @HiveField(7) int? discount,
      @JsonKey(name: "status") @HiveField(8) bool? status,
      @JsonKey(name: "_id") @HiveField(9) String? id,
      @JsonKey(name: "ownerid") @HiveField(10) Owner? owner,
      @JsonKey(name: "name") @HiveField(11) String? name,
      @JsonKey(name: "categoryid") @HiveField(12) CategoryItem? category,
      @JsonKey(name: "sku") @HiveField(13) String? sku,
      @JsonKey(name: "barcode") @HiveField(14) String? barcode,
      @JsonKey(name: "variant") @HiveField(15) List<Varient>? variant,
      @JsonKey(name: "created_at") @HiveField(16) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(17) String? updatedAt,
      @JsonKey(name: "expired_date") @HiveField(18) String? expDate,
      @JsonKey(name: "unitid") @HiveField(19) UnitItem? unit,
      @JsonKey(name: "__v") @HiveField(20) int? version,
      @JsonKey(name: "is_stock") @HiveField(21) String? isStock,
      @HiveField(22) int? count});

  @override
  $PresentationCopyWith<$Res>? get presentation;
  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $CategoryItemCopyWith<$Res>? get category;
  @override
  $UnitItemCopyWith<$Res>? get unit;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, (v) => _then(v as _$_Item));

  @override
  _$_Item get _value => super._value as _$_Item;

  @override
  $Res call({
    Object? presentation = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? stock = freezed,
    Object? desc = freezed,
    Object? isDiscount = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? owner = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? variant = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expDate = freezed,
    Object? unit = freezed,
    Object? version = freezed,
    Object? isStock = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_Item(
      presentation == freezed
          ? _value.presentation
          : presentation // ignore: cast_nullable_to_non_nullable
              as Presentation?,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      isDiscount == freezed
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryItem?,
      sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variant == freezed
          ? _value._variant
          : variant // ignore: cast_nullable_to_non_nullable
              as List<Varient>?,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate == freezed
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as UnitItem?,
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      isStock == freezed
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as String?,
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 7)
class _$_Item implements _Item {
  const _$_Item(
      @JsonKey(name: "presentation") @HiveField(0) this.presentation,
      @JsonKey(name: "price") @HiveField(1) this.price,
      @JsonKey(name: "cost") @HiveField(2) this.cost,
      @JsonKey(name: "stock") @HiveField(3) this.stock,
      @JsonKey(name: "description") @HiveField(4) this.desc,
      @JsonKey(name: "is_discount") @HiveField(5) this.isDiscount,
      @JsonKey(name: "discount_type") @HiveField(6) this.discountType,
      @JsonKey(name: "discount") @HiveField(7) this.discount,
      @JsonKey(name: "status") @HiveField(8) this.status,
      @JsonKey(name: "_id") @HiveField(9) this.id,
      @JsonKey(name: "ownerid") @HiveField(10) this.owner,
      @JsonKey(name: "name") @HiveField(11) this.name,
      @JsonKey(name: "categoryid") @HiveField(12) this.category,
      @JsonKey(name: "sku") @HiveField(13) this.sku,
      @JsonKey(name: "barcode") @HiveField(14) this.barcode,
      @JsonKey(name: "variant") @HiveField(15) final List<Varient>? variant,
      @JsonKey(name: "created_at") @HiveField(16) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(17) this.updatedAt,
      @JsonKey(name: "expired_date") @HiveField(18) this.expDate,
      @JsonKey(name: "unitid") @HiveField(19) this.unit,
      @JsonKey(name: "__v") @HiveField(20) this.version,
      @JsonKey(name: "is_stock") @HiveField(21) this.isStock,
      @HiveField(22) this.count)
      : _variant = variant;

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  @JsonKey(name: "presentation")
  @HiveField(0)
  final Presentation? presentation;
  @override
  @JsonKey(name: "price")
  @HiveField(1)
  final int? price;
  @override
  @JsonKey(name: "cost")
  @HiveField(2)
  final int? cost;
  @override
  @JsonKey(name: "stock")
  @HiveField(3)
  final int? stock;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  final String? desc;
  @override
  @JsonKey(name: "is_discount")
  @HiveField(5)
  final String? isDiscount;
  @override
  @JsonKey(name: "discount_type")
  @HiveField(6)
  final String? discountType;
  @override
  @JsonKey(name: "discount")
  @HiveField(7)
  final int? discount;
  @override
  @JsonKey(name: "status")
  @HiveField(8)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(9)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(10)
  final Owner? owner;
  @override
  @JsonKey(name: "name")
  @HiveField(11)
  final String? name;
  @override
  @JsonKey(name: "categoryid")
  @HiveField(12)
  final CategoryItem? category;
  @override
  @JsonKey(name: "sku")
  @HiveField(13)
  final String? sku;
  @override
  @JsonKey(name: "barcode")
  @HiveField(14)
  final String? barcode;
  final List<Varient>? _variant;
  @override
  @JsonKey(name: "variant")
  @HiveField(15)
  List<Varient>? get variant {
    final value = _variant;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_at")
  @HiveField(16)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(17)
  final String? updatedAt;
  @override
  @JsonKey(name: "expired_date")
  @HiveField(18)
  final String? expDate;
  @override
  @JsonKey(name: "unitid")
  @HiveField(19)
  final UnitItem? unit;
  @override
  @JsonKey(name: "__v")
  @HiveField(20)
  final int? version;
  @override
  @JsonKey(name: "is_stock")
  @HiveField(21)
  final String? isStock;
  @override
  @HiveField(22)
  final int? count;

  @override
  String toString() {
    return 'Item(presentation: $presentation, price: $price, cost: $cost, stock: $stock, desc: $desc, isDiscount: $isDiscount, discountType: $discountType, discount: $discount, status: $status, id: $id, owner: $owner, name: $name, category: $category, sku: $sku, barcode: $barcode, variant: $variant, createdAt: $createdAt, updatedAt: $updatedAt, expDate: $expDate, unit: $unit, version: $version, isStock: $isStock, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            const DeepCollectionEquality()
                .equals(other.presentation, presentation) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality()
                .equals(other.isDiscount, isDiscount) &&
            const DeepCollectionEquality()
                .equals(other.discountType, discountType) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.sku, sku) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other._variant, _variant) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.expDate, expDate) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.isStock, isStock) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(presentation),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(cost),
        const DeepCollectionEquality().hash(stock),
        const DeepCollectionEquality().hash(desc),
        const DeepCollectionEquality().hash(isDiscount),
        const DeepCollectionEquality().hash(discountType),
        const DeepCollectionEquality().hash(discount),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(owner),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(category),
        const DeepCollectionEquality().hash(sku),
        const DeepCollectionEquality().hash(barcode),
        const DeepCollectionEquality().hash(_variant),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(expDate),
        const DeepCollectionEquality().hash(unit),
        const DeepCollectionEquality().hash(version),
        const DeepCollectionEquality().hash(isStock),
        const DeepCollectionEquality().hash(count)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      @JsonKey(name: "presentation")
      @HiveField(0)
          final Presentation? presentation,
      @JsonKey(name: "price")
      @HiveField(1)
          final int? price,
      @JsonKey(name: "cost")
      @HiveField(2)
          final int? cost,
      @JsonKey(name: "stock")
      @HiveField(3)
          final int? stock,
      @JsonKey(name: "description")
      @HiveField(4)
          final String? desc,
      @JsonKey(name: "is_discount")
      @HiveField(5)
          final String? isDiscount,
      @JsonKey(name: "discount_type")
      @HiveField(6)
          final String? discountType,
      @JsonKey(name: "discount")
      @HiveField(7)
          final int? discount,
      @JsonKey(name: "status")
      @HiveField(8)
          final bool? status,
      @JsonKey(name: "_id")
      @HiveField(9)
          final String? id,
      @JsonKey(name: "ownerid")
      @HiveField(10)
          final Owner? owner,
      @JsonKey(name: "name")
      @HiveField(11)
          final String? name,
      @JsonKey(name: "categoryid")
      @HiveField(12)
          final CategoryItem? category,
      @JsonKey(name: "sku")
      @HiveField(13)
          final String? sku,
      @JsonKey(name: "barcode")
      @HiveField(14)
          final String? barcode,
      @JsonKey(name: "variant")
      @HiveField(15)
          final List<Varient>? variant,
      @JsonKey(name: "created_at")
      @HiveField(16)
          final String? createdAt,
      @JsonKey(name: "updated_at")
      @HiveField(17)
          final String? updatedAt,
      @JsonKey(name: "expired_date")
      @HiveField(18)
          final String? expDate,
      @JsonKey(name: "unitid")
      @HiveField(19)
          final UnitItem? unit,
      @JsonKey(name: "__v")
      @HiveField(20)
          final int? version,
      @JsonKey(name: "is_stock")
      @HiveField(21)
          final String? isStock,
      @HiveField(22)
          final int? count) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  @JsonKey(name: "presentation")
  @HiveField(0)
  Presentation? get presentation;
  @override
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price;
  @override
  @JsonKey(name: "cost")
  @HiveField(2)
  int? get cost;
  @override
  @JsonKey(name: "stock")
  @HiveField(3)
  int? get stock;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  String? get desc;
  @override
  @JsonKey(name: "is_discount")
  @HiveField(5)
  String? get isDiscount;
  @override
  @JsonKey(name: "discount_type")
  @HiveField(6)
  String? get discountType;
  @override
  @JsonKey(name: "discount")
  @HiveField(7)
  int? get discount;
  @override
  @JsonKey(name: "status")
  @HiveField(8)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(9)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(10)
  Owner? get owner;
  @override
  @JsonKey(name: "name")
  @HiveField(11)
  String? get name;
  @override
  @JsonKey(name: "categoryid")
  @HiveField(12)
  CategoryItem? get category;
  @override
  @JsonKey(name: "sku")
  @HiveField(13)
  String? get sku;
  @override
  @JsonKey(name: "barcode")
  @HiveField(14)
  String? get barcode;
  @override
  @JsonKey(name: "variant")
  @HiveField(15)
  List<Varient>? get variant;
  @override
  @JsonKey(name: "created_at")
  @HiveField(16)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(17)
  String? get updatedAt;
  @override
  @JsonKey(name: "expired_date")
  @HiveField(18)
  String? get expDate;
  @override
  @JsonKey(name: "unitid")
  @HiveField(19)
  UnitItem? get unit;
  @override
  @JsonKey(name: "__v")
  @HiveField(20)
  int? get version;
  @override
  @JsonKey(name: "is_stock")
  @HiveField(21)
  String? get isStock;
  @override
  @HiveField(22)
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}

Presentation _$PresentationFromJson(Map<String, dynamic> json) {
  return _Presentation.fromJson(json);
}

/// @nodoc
mixin _$Presentation {
  @JsonKey(name: "present_type")
  @HiveField(0)
  String? get presentType => throw _privateConstructorUsedError;
  @JsonKey(name: "present_image")
  @HiveField(1)
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "present_color")
  @HiveField(2)
  List<String>? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresentationCopyWith<Presentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationCopyWith<$Res> {
  factory $PresentationCopyWith(
          Presentation value, $Res Function(Presentation) then) =
      _$PresentationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "present_type") @HiveField(0) String? presentType,
      @JsonKey(name: "present_image") @HiveField(1) List<String>? images,
      @JsonKey(name: "present_color") @HiveField(2) List<String>? color});
}

/// @nodoc
class _$PresentationCopyWithImpl<$Res> implements $PresentationCopyWith<$Res> {
  _$PresentationCopyWithImpl(this._value, this._then);

  final Presentation _value;
  // ignore: unused_field
  final $Res Function(Presentation) _then;

  @override
  $Res call({
    Object? presentType = freezed,
    Object? images = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      presentType: presentType == freezed
          ? _value.presentType
          : presentType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PresentationCopyWith<$Res>
    implements $PresentationCopyWith<$Res> {
  factory _$$_PresentationCopyWith(
          _$_Presentation value, $Res Function(_$_Presentation) then) =
      __$$_PresentationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "present_type") @HiveField(0) String? presentType,
      @JsonKey(name: "present_image") @HiveField(1) List<String>? images,
      @JsonKey(name: "present_color") @HiveField(2) List<String>? color});
}

/// @nodoc
class __$$_PresentationCopyWithImpl<$Res>
    extends _$PresentationCopyWithImpl<$Res>
    implements _$$_PresentationCopyWith<$Res> {
  __$$_PresentationCopyWithImpl(
      _$_Presentation _value, $Res Function(_$_Presentation) _then)
      : super(_value, (v) => _then(v as _$_Presentation));

  @override
  _$_Presentation get _value => super._value as _$_Presentation;

  @override
  $Res call({
    Object? presentType = freezed,
    Object? images = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_Presentation(
      presentType == freezed
          ? _value.presentType
          : presentType // ignore: cast_nullable_to_non_nullable
              as String?,
      images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      color == freezed
          ? _value._color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 8)
class _$_Presentation implements _Presentation {
  const _$_Presentation(
      @JsonKey(name: "present_type") @HiveField(0) this.presentType,
      @JsonKey(name: "present_image") @HiveField(1) final List<String>? images,
      @JsonKey(name: "present_color") @HiveField(2) final List<String>? color)
      : _images = images,
        _color = color;

  factory _$_Presentation.fromJson(Map<String, dynamic> json) =>
      _$$_PresentationFromJson(json);

  @override
  @JsonKey(name: "present_type")
  @HiveField(0)
  final String? presentType;
  final List<String>? _images;
  @override
  @JsonKey(name: "present_image")
  @HiveField(1)
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _color;
  @override
  @JsonKey(name: "present_color")
  @HiveField(2)
  List<String>? get color {
    final value = _color;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Presentation(presentType: $presentType, images: $images, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Presentation &&
            const DeepCollectionEquality()
                .equals(other.presentType, presentType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._color, _color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(presentType),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_color));

  @JsonKey(ignore: true)
  @override
  _$$_PresentationCopyWith<_$_Presentation> get copyWith =>
      __$$_PresentationCopyWithImpl<_$_Presentation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresentationToJson(
      this,
    );
  }
}

abstract class _Presentation implements Presentation {
  const factory _Presentation(
      @JsonKey(name: "present_type")
      @HiveField(0)
          final String? presentType,
      @JsonKey(name: "present_image")
      @HiveField(1)
          final List<String>? images,
      @JsonKey(name: "present_color")
      @HiveField(2)
          final List<String>? color) = _$_Presentation;

  factory _Presentation.fromJson(Map<String, dynamic> json) =
      _$_Presentation.fromJson;

  @override
  @JsonKey(name: "present_type")
  @HiveField(0)
  String? get presentType;
  @override
  @JsonKey(name: "present_image")
  @HiveField(1)
  List<String>? get images;
  @override
  @JsonKey(name: "present_color")
  @HiveField(2)
  List<String>? get color;
  @override
  @JsonKey(ignore: true)
  _$$_PresentationCopyWith<_$_Presentation> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemRes _$ItemResFromJson(Map<String, dynamic> json) {
  return _ItemRes.fromJson(json);
}

/// @nodoc
mixin _$ItemRes {
  @JsonKey(name: "presentation")
  @HiveField(0)
  Presentation? get presentation => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "cost")
  @HiveField(2)
  int? get cost => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  @HiveField(3)
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  @HiveField(4)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "is_discount")
  @HiveField(5)
  String? get isDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  @HiveField(6)
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  @HiveField(7)
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @HiveField(8)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(9)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerid")
  @HiveField(10)
  String? get ownerid => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(11)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryid")
  @HiveField(12)
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  @HiveField(13)
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  @HiveField(14)
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant")
  @HiveField(15)
  List<Varient>? get variant => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  @HiveField(16)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  @HiveField(17)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_date")
  @HiveField(18)
  String? get expDate => throw _privateConstructorUsedError;
  @JsonKey(name: "unitid")
  @HiveField(19)
  String? get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  @HiveField(20)
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: "is_stock")
  @HiveField(21)
  String? get isStock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemResCopyWith<ItemRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemResCopyWith<$Res> {
  factory $ItemResCopyWith(ItemRes value, $Res Function(ItemRes) then) =
      _$ItemResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "presentation") @HiveField(0) Presentation? presentation,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "cost") @HiveField(2) int? cost,
      @JsonKey(name: "stock") @HiveField(3) int? stock,
      @JsonKey(name: "description") @HiveField(4) String? desc,
      @JsonKey(name: "is_discount") @HiveField(5) String? isDiscount,
      @JsonKey(name: "discount_type") @HiveField(6) String? discountType,
      @JsonKey(name: "discount") @HiveField(7) int? discount,
      @JsonKey(name: "status") @HiveField(8) bool? status,
      @JsonKey(name: "_id") @HiveField(9) String? id,
      @JsonKey(name: "ownerid") @HiveField(10) String? ownerid,
      @JsonKey(name: "name") @HiveField(11) String? name,
      @JsonKey(name: "categoryid") @HiveField(12) String? categoryId,
      @JsonKey(name: "sku") @HiveField(13) String? sku,
      @JsonKey(name: "barcode") @HiveField(14) String? barcode,
      @JsonKey(name: "variant") @HiveField(15) List<Varient>? variant,
      @JsonKey(name: "created_at") @HiveField(16) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(17) String? updatedAt,
      @JsonKey(name: "expired_date") @HiveField(18) String? expDate,
      @JsonKey(name: "unitid") @HiveField(19) String? unitId,
      @JsonKey(name: "__v") @HiveField(20) int? version,
      @JsonKey(name: "is_stock") @HiveField(21) String? isStock});

  $PresentationCopyWith<$Res>? get presentation;
}

/// @nodoc
class _$ItemResCopyWithImpl<$Res> implements $ItemResCopyWith<$Res> {
  _$ItemResCopyWithImpl(this._value, this._then);

  final ItemRes _value;
  // ignore: unused_field
  final $Res Function(ItemRes) _then;

  @override
  $Res call({
    Object? presentation = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? stock = freezed,
    Object? desc = freezed,
    Object? isDiscount = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerid = freezed,
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? variant = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expDate = freezed,
    Object? unitId = freezed,
    Object? version = freezed,
    Object? isStock = freezed,
  }) {
    return _then(_value.copyWith(
      presentation: presentation == freezed
          ? _value.presentation
          : presentation // ignore: cast_nullable_to_non_nullable
              as Presentation?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      isDiscount: isDiscount == freezed
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: variant == freezed
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as List<Varient>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate: expDate == freezed
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      unitId: unitId == freezed
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      isStock: isStock == freezed
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PresentationCopyWith<$Res>? get presentation {
    if (_value.presentation == null) {
      return null;
    }

    return $PresentationCopyWith<$Res>(_value.presentation!, (value) {
      return _then(_value.copyWith(presentation: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemResCopyWith<$Res> implements $ItemResCopyWith<$Res> {
  factory _$$_ItemResCopyWith(
          _$_ItemRes value, $Res Function(_$_ItemRes) then) =
      __$$_ItemResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "presentation") @HiveField(0) Presentation? presentation,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "cost") @HiveField(2) int? cost,
      @JsonKey(name: "stock") @HiveField(3) int? stock,
      @JsonKey(name: "description") @HiveField(4) String? desc,
      @JsonKey(name: "is_discount") @HiveField(5) String? isDiscount,
      @JsonKey(name: "discount_type") @HiveField(6) String? discountType,
      @JsonKey(name: "discount") @HiveField(7) int? discount,
      @JsonKey(name: "status") @HiveField(8) bool? status,
      @JsonKey(name: "_id") @HiveField(9) String? id,
      @JsonKey(name: "ownerid") @HiveField(10) String? ownerid,
      @JsonKey(name: "name") @HiveField(11) String? name,
      @JsonKey(name: "categoryid") @HiveField(12) String? categoryId,
      @JsonKey(name: "sku") @HiveField(13) String? sku,
      @JsonKey(name: "barcode") @HiveField(14) String? barcode,
      @JsonKey(name: "variant") @HiveField(15) List<Varient>? variant,
      @JsonKey(name: "created_at") @HiveField(16) String? createdAt,
      @JsonKey(name: "updated_at") @HiveField(17) String? updatedAt,
      @JsonKey(name: "expired_date") @HiveField(18) String? expDate,
      @JsonKey(name: "unitid") @HiveField(19) String? unitId,
      @JsonKey(name: "__v") @HiveField(20) int? version,
      @JsonKey(name: "is_stock") @HiveField(21) String? isStock});

  @override
  $PresentationCopyWith<$Res>? get presentation;
}

/// @nodoc
class __$$_ItemResCopyWithImpl<$Res> extends _$ItemResCopyWithImpl<$Res>
    implements _$$_ItemResCopyWith<$Res> {
  __$$_ItemResCopyWithImpl(_$_ItemRes _value, $Res Function(_$_ItemRes) _then)
      : super(_value, (v) => _then(v as _$_ItemRes));

  @override
  _$_ItemRes get _value => super._value as _$_ItemRes;

  @override
  $Res call({
    Object? presentation = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? stock = freezed,
    Object? desc = freezed,
    Object? isDiscount = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? ownerid = freezed,
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? variant = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expDate = freezed,
    Object? unitId = freezed,
    Object? version = freezed,
    Object? isStock = freezed,
  }) {
    return _then(_$_ItemRes(
      presentation == freezed
          ? _value.presentation
          : presentation // ignore: cast_nullable_to_non_nullable
              as Presentation?,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      isDiscount == freezed
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variant == freezed
          ? _value._variant
          : variant // ignore: cast_nullable_to_non_nullable
              as List<Varient>?,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate == freezed
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      unitId == freezed
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      isStock == freezed
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 9)
class _$_ItemRes implements _ItemRes {
  const _$_ItemRes(
      @JsonKey(name: "presentation") @HiveField(0) this.presentation,
      @JsonKey(name: "price") @HiveField(1) this.price,
      @JsonKey(name: "cost") @HiveField(2) this.cost,
      @JsonKey(name: "stock") @HiveField(3) this.stock,
      @JsonKey(name: "description") @HiveField(4) this.desc,
      @JsonKey(name: "is_discount") @HiveField(5) this.isDiscount,
      @JsonKey(name: "discount_type") @HiveField(6) this.discountType,
      @JsonKey(name: "discount") @HiveField(7) this.discount,
      @JsonKey(name: "status") @HiveField(8) this.status,
      @JsonKey(name: "_id") @HiveField(9) this.id,
      @JsonKey(name: "ownerid") @HiveField(10) this.ownerid,
      @JsonKey(name: "name") @HiveField(11) this.name,
      @JsonKey(name: "categoryid") @HiveField(12) this.categoryId,
      @JsonKey(name: "sku") @HiveField(13) this.sku,
      @JsonKey(name: "barcode") @HiveField(14) this.barcode,
      @JsonKey(name: "variant") @HiveField(15) final List<Varient>? variant,
      @JsonKey(name: "created_at") @HiveField(16) this.createdAt,
      @JsonKey(name: "updated_at") @HiveField(17) this.updatedAt,
      @JsonKey(name: "expired_date") @HiveField(18) this.expDate,
      @JsonKey(name: "unitid") @HiveField(19) this.unitId,
      @JsonKey(name: "__v") @HiveField(20) this.version,
      @JsonKey(name: "is_stock") @HiveField(21) this.isStock)
      : _variant = variant;

  factory _$_ItemRes.fromJson(Map<String, dynamic> json) =>
      _$$_ItemResFromJson(json);

  @override
  @JsonKey(name: "presentation")
  @HiveField(0)
  final Presentation? presentation;
  @override
  @JsonKey(name: "price")
  @HiveField(1)
  final int? price;
  @override
  @JsonKey(name: "cost")
  @HiveField(2)
  final int? cost;
  @override
  @JsonKey(name: "stock")
  @HiveField(3)
  final int? stock;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  final String? desc;
  @override
  @JsonKey(name: "is_discount")
  @HiveField(5)
  final String? isDiscount;
  @override
  @JsonKey(name: "discount_type")
  @HiveField(6)
  final String? discountType;
  @override
  @JsonKey(name: "discount")
  @HiveField(7)
  final int? discount;
  @override
  @JsonKey(name: "status")
  @HiveField(8)
  final bool? status;
  @override
  @JsonKey(name: "_id")
  @HiveField(9)
  final String? id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(10)
  final String? ownerid;
  @override
  @JsonKey(name: "name")
  @HiveField(11)
  final String? name;
  @override
  @JsonKey(name: "categoryid")
  @HiveField(12)
  final String? categoryId;
  @override
  @JsonKey(name: "sku")
  @HiveField(13)
  final String? sku;
  @override
  @JsonKey(name: "barcode")
  @HiveField(14)
  final String? barcode;
  final List<Varient>? _variant;
  @override
  @JsonKey(name: "variant")
  @HiveField(15)
  List<Varient>? get variant {
    final value = _variant;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_at")
  @HiveField(16)
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(17)
  final String? updatedAt;
  @override
  @JsonKey(name: "expired_date")
  @HiveField(18)
  final String? expDate;
  @override
  @JsonKey(name: "unitid")
  @HiveField(19)
  final String? unitId;
  @override
  @JsonKey(name: "__v")
  @HiveField(20)
  final int? version;
  @override
  @JsonKey(name: "is_stock")
  @HiveField(21)
  final String? isStock;

  @override
  String toString() {
    return 'ItemRes(presentation: $presentation, price: $price, cost: $cost, stock: $stock, desc: $desc, isDiscount: $isDiscount, discountType: $discountType, discount: $discount, status: $status, id: $id, ownerid: $ownerid, name: $name, categoryId: $categoryId, sku: $sku, barcode: $barcode, variant: $variant, createdAt: $createdAt, updatedAt: $updatedAt, expDate: $expDate, unitId: $unitId, version: $version, isStock: $isStock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemRes &&
            const DeepCollectionEquality()
                .equals(other.presentation, presentation) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality()
                .equals(other.isDiscount, isDiscount) &&
            const DeepCollectionEquality()
                .equals(other.discountType, discountType) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerid, ownerid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.sku, sku) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other._variant, _variant) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.expDate, expDate) &&
            const DeepCollectionEquality().equals(other.unitId, unitId) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.isStock, isStock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(presentation),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(cost),
        const DeepCollectionEquality().hash(stock),
        const DeepCollectionEquality().hash(desc),
        const DeepCollectionEquality().hash(isDiscount),
        const DeepCollectionEquality().hash(discountType),
        const DeepCollectionEquality().hash(discount),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(ownerid),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(categoryId),
        const DeepCollectionEquality().hash(sku),
        const DeepCollectionEquality().hash(barcode),
        const DeepCollectionEquality().hash(_variant),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(expDate),
        const DeepCollectionEquality().hash(unitId),
        const DeepCollectionEquality().hash(version),
        const DeepCollectionEquality().hash(isStock)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ItemResCopyWith<_$_ItemRes> get copyWith =>
      __$$_ItemResCopyWithImpl<_$_ItemRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemResToJson(
      this,
    );
  }
}

abstract class _ItemRes implements ItemRes {
  const factory _ItemRes(
      @JsonKey(name: "presentation")
      @HiveField(0)
          final Presentation? presentation,
      @JsonKey(name: "price")
      @HiveField(1)
          final int? price,
      @JsonKey(name: "cost")
      @HiveField(2)
          final int? cost,
      @JsonKey(name: "stock")
      @HiveField(3)
          final int? stock,
      @JsonKey(name: "description")
      @HiveField(4)
          final String? desc,
      @JsonKey(name: "is_discount")
      @HiveField(5)
          final String? isDiscount,
      @JsonKey(name: "discount_type")
      @HiveField(6)
          final String? discountType,
      @JsonKey(name: "discount")
      @HiveField(7)
          final int? discount,
      @JsonKey(name: "status")
      @HiveField(8)
          final bool? status,
      @JsonKey(name: "_id")
      @HiveField(9)
          final String? id,
      @JsonKey(name: "ownerid")
      @HiveField(10)
          final String? ownerid,
      @JsonKey(name: "name")
      @HiveField(11)
          final String? name,
      @JsonKey(name: "categoryid")
      @HiveField(12)
          final String? categoryId,
      @JsonKey(name: "sku")
      @HiveField(13)
          final String? sku,
      @JsonKey(name: "barcode")
      @HiveField(14)
          final String? barcode,
      @JsonKey(name: "variant")
      @HiveField(15)
          final List<Varient>? variant,
      @JsonKey(name: "created_at")
      @HiveField(16)
          final String? createdAt,
      @JsonKey(name: "updated_at")
      @HiveField(17)
          final String? updatedAt,
      @JsonKey(name: "expired_date")
      @HiveField(18)
          final String? expDate,
      @JsonKey(name: "unitid")
      @HiveField(19)
          final String? unitId,
      @JsonKey(name: "__v")
      @HiveField(20)
          final int? version,
      @JsonKey(name: "is_stock")
      @HiveField(21)
          final String? isStock) = _$_ItemRes;

  factory _ItemRes.fromJson(Map<String, dynamic> json) = _$_ItemRes.fromJson;

  @override
  @JsonKey(name: "presentation")
  @HiveField(0)
  Presentation? get presentation;
  @override
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price;
  @override
  @JsonKey(name: "cost")
  @HiveField(2)
  int? get cost;
  @override
  @JsonKey(name: "stock")
  @HiveField(3)
  int? get stock;
  @override
  @JsonKey(name: "description")
  @HiveField(4)
  String? get desc;
  @override
  @JsonKey(name: "is_discount")
  @HiveField(5)
  String? get isDiscount;
  @override
  @JsonKey(name: "discount_type")
  @HiveField(6)
  String? get discountType;
  @override
  @JsonKey(name: "discount")
  @HiveField(7)
  int? get discount;
  @override
  @JsonKey(name: "status")
  @HiveField(8)
  bool? get status;
  @override
  @JsonKey(name: "_id")
  @HiveField(9)
  String? get id;
  @override
  @JsonKey(name: "ownerid")
  @HiveField(10)
  String? get ownerid;
  @override
  @JsonKey(name: "name")
  @HiveField(11)
  String? get name;
  @override
  @JsonKey(name: "categoryid")
  @HiveField(12)
  String? get categoryId;
  @override
  @JsonKey(name: "sku")
  @HiveField(13)
  String? get sku;
  @override
  @JsonKey(name: "barcode")
  @HiveField(14)
  String? get barcode;
  @override
  @JsonKey(name: "variant")
  @HiveField(15)
  List<Varient>? get variant;
  @override
  @JsonKey(name: "created_at")
  @HiveField(16)
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  @HiveField(17)
  String? get updatedAt;
  @override
  @JsonKey(name: "expired_date")
  @HiveField(18)
  String? get expDate;
  @override
  @JsonKey(name: "unitid")
  @HiveField(19)
  String? get unitId;
  @override
  @JsonKey(name: "__v")
  @HiveField(20)
  int? get version;
  @override
  @JsonKey(name: "is_stock")
  @HiveField(21)
  String? get isStock;
  @override
  @JsonKey(ignore: true)
  _$$_ItemResCopyWith<_$_ItemRes> get copyWith =>
      throw _privateConstructorUsedError;
}

Varient _$VarientFromJson(Map<String, dynamic> json) {
  return _Varient.fromJson(json);
}

/// @nodoc
mixin _$Varient {
  @JsonKey(name: "option_name")
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "option_value")
  @HiveField(1)
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  @HiveField(2)
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VarientCopyWith<Varient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VarientCopyWith<$Res> {
  factory $VarientCopyWith(Varient value, $Res Function(Varient) then) =
      _$VarientCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "option_name") @HiveField(0) String? name,
      @JsonKey(name: "option_value") @HiveField(1) String? value,
      @JsonKey(name: "_id") @HiveField(2) String? id});
}

/// @nodoc
class _$VarientCopyWithImpl<$Res> implements $VarientCopyWith<$Res> {
  _$VarientCopyWithImpl(this._value, this._then);

  final Varient _value;
  // ignore: unused_field
  final $Res Function(Varient) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_VarientCopyWith<$Res> implements $VarientCopyWith<$Res> {
  factory _$$_VarientCopyWith(
          _$_Varient value, $Res Function(_$_Varient) then) =
      __$$_VarientCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "option_name") @HiveField(0) String? name,
      @JsonKey(name: "option_value") @HiveField(1) String? value,
      @JsonKey(name: "_id") @HiveField(2) String? id});
}

/// @nodoc
class __$$_VarientCopyWithImpl<$Res> extends _$VarientCopyWithImpl<$Res>
    implements _$$_VarientCopyWith<$Res> {
  __$$_VarientCopyWithImpl(_$_Varient _value, $Res Function(_$_Varient) _then)
      : super(_value, (v) => _then(v as _$_Varient));

  @override
  _$_Varient get _value => super._value as _$_Varient;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Varient(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 12)
class _$_Varient implements _Varient {
  const _$_Varient(
      @JsonKey(name: "option_name") @HiveField(0) this.name,
      @JsonKey(name: "option_value") @HiveField(1) this.value,
      @JsonKey(name: "_id") @HiveField(2) this.id);

  factory _$_Varient.fromJson(Map<String, dynamic> json) =>
      _$$_VarientFromJson(json);

  @override
  @JsonKey(name: "option_name")
  @HiveField(0)
  final String? name;
  @override
  @JsonKey(name: "option_value")
  @HiveField(1)
  final String? value;
  @override
  @JsonKey(name: "_id")
  @HiveField(2)
  final String? id;

  @override
  String toString() {
    return 'Varient(name: $name, value: $value, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Varient &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_VarientCopyWith<_$_Varient> get copyWith =>
      __$$_VarientCopyWithImpl<_$_Varient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VarientToJson(
      this,
    );
  }
}

abstract class _Varient implements Varient {
  const factory _Varient(
      @JsonKey(name: "option_name") @HiveField(0) final String? name,
      @JsonKey(name: "option_value") @HiveField(1) final String? value,
      @JsonKey(name: "_id") @HiveField(2) final String? id) = _$_Varient;

  factory _Varient.fromJson(Map<String, dynamic> json) = _$_Varient.fromJson;

  @override
  @JsonKey(name: "option_name")
  @HiveField(0)
  String? get name;
  @override
  @JsonKey(name: "option_value")
  @HiveField(1)
  String? get value;
  @override
  @JsonKey(name: "_id")
  @HiveField(2)
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_VarientCopyWith<_$_Varient> get copyWith =>
      throw _privateConstructorUsedError;
}
