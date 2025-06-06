// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tax_invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailTaxInvoiceModel _$DetailTaxInvoiceModelFromJson(
    Map<String, dynamic> json) {
  return _DetailTaxInvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$DetailTaxInvoiceModel {
  @JsonKey(name: 'list_no')
  num? get listNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_name')
  String? get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  num? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  num? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  num? get amount => throw _privateConstructorUsedError;

  /// Serializes this DetailTaxInvoiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailTaxInvoiceModelCopyWith<DetailTaxInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTaxInvoiceModelCopyWith<$Res> {
  factory $DetailTaxInvoiceModelCopyWith(DetailTaxInvoiceModel value,
          $Res Function(DetailTaxInvoiceModel) then) =
      _$DetailTaxInvoiceModelCopyWithImpl<$Res, DetailTaxInvoiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'list_no') num? listNo,
      @JsonKey(name: 'item_name') String? itemName,
      @JsonKey(name: 'unit_price') num? unitPrice,
      @JsonKey(name: 'quantity') num? quantity,
      @JsonKey(name: 'amount') num? amount});
}

/// @nodoc
class _$DetailTaxInvoiceModelCopyWithImpl<$Res,
        $Val extends DetailTaxInvoiceModel>
    implements $DetailTaxInvoiceModelCopyWith<$Res> {
  _$DetailTaxInvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listNo = freezed,
    Object? itemName = freezed,
    Object? unitPrice = freezed,
    Object? quantity = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      listNo: freezed == listNo
          ? _value.listNo
          : listNo // ignore: cast_nullable_to_non_nullable
              as num?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailTaxInvoiceModelImplCopyWith<$Res>
    implements $DetailTaxInvoiceModelCopyWith<$Res> {
  factory _$$DetailTaxInvoiceModelImplCopyWith(
          _$DetailTaxInvoiceModelImpl value,
          $Res Function(_$DetailTaxInvoiceModelImpl) then) =
      __$$DetailTaxInvoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'list_no') num? listNo,
      @JsonKey(name: 'item_name') String? itemName,
      @JsonKey(name: 'unit_price') num? unitPrice,
      @JsonKey(name: 'quantity') num? quantity,
      @JsonKey(name: 'amount') num? amount});
}

/// @nodoc
class __$$DetailTaxInvoiceModelImplCopyWithImpl<$Res>
    extends _$DetailTaxInvoiceModelCopyWithImpl<$Res,
        _$DetailTaxInvoiceModelImpl>
    implements _$$DetailTaxInvoiceModelImplCopyWith<$Res> {
  __$$DetailTaxInvoiceModelImplCopyWithImpl(_$DetailTaxInvoiceModelImpl _value,
      $Res Function(_$DetailTaxInvoiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listNo = freezed,
    Object? itemName = freezed,
    Object? unitPrice = freezed,
    Object? quantity = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$DetailTaxInvoiceModelImpl(
      listNo: freezed == listNo
          ? _value.listNo
          : listNo // ignore: cast_nullable_to_non_nullable
              as num?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTaxInvoiceModelImpl implements _DetailTaxInvoiceModel {
  const _$DetailTaxInvoiceModelImpl(
      {@JsonKey(name: 'list_no') this.listNo,
      @JsonKey(name: 'item_name') this.itemName,
      @JsonKey(name: 'unit_price') this.unitPrice,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'amount') this.amount});

  factory _$DetailTaxInvoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTaxInvoiceModelImplFromJson(json);

  @override
  @JsonKey(name: 'list_no')
  final num? listNo;
  @override
  @JsonKey(name: 'item_name')
  final String? itemName;
  @override
  @JsonKey(name: 'unit_price')
  final num? unitPrice;
  @override
  @JsonKey(name: 'quantity')
  final num? quantity;
  @override
  @JsonKey(name: 'amount')
  final num? amount;

  @override
  String toString() {
    return 'DetailTaxInvoiceModel(listNo: $listNo, itemName: $itemName, unitPrice: $unitPrice, quantity: $quantity, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTaxInvoiceModelImpl &&
            (identical(other.listNo, listNo) || other.listNo == listNo) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, listNo, itemName, unitPrice, quantity, amount);

  /// Create a copy of DetailTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTaxInvoiceModelImplCopyWith<_$DetailTaxInvoiceModelImpl>
      get copyWith => __$$DetailTaxInvoiceModelImplCopyWithImpl<
          _$DetailTaxInvoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTaxInvoiceModelImplToJson(
      this,
    );
  }
}

abstract class _DetailTaxInvoiceModel implements DetailTaxInvoiceModel {
  const factory _DetailTaxInvoiceModel(
          {@JsonKey(name: 'list_no') final num? listNo,
          @JsonKey(name: 'item_name') final String? itemName,
          @JsonKey(name: 'unit_price') final num? unitPrice,
          @JsonKey(name: 'quantity') final num? quantity,
          @JsonKey(name: 'amount') final num? amount}) =
      _$DetailTaxInvoiceModelImpl;

  factory _DetailTaxInvoiceModel.fromJson(Map<String, dynamic> json) =
      _$DetailTaxInvoiceModelImpl.fromJson;

  @override
  @JsonKey(name: 'list_no')
  num? get listNo;
  @override
  @JsonKey(name: 'item_name')
  String? get itemName;
  @override
  @JsonKey(name: 'unit_price')
  num? get unitPrice;
  @override
  @JsonKey(name: 'quantity')
  num? get quantity;
  @override
  @JsonKey(name: 'amount')
  num? get amount;

  /// Create a copy of DetailTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailTaxInvoiceModelImplCopyWith<_$DetailTaxInvoiceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
