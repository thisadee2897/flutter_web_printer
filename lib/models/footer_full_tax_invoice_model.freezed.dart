// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'footer_full_tax_invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FooterFullTaxInvoiceModel _$FooterFullTaxInvoiceModelFromJson(
    Map<String, dynamic> json) {
  return _FooterFullTaxInvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$FooterFullTaxInvoiceModel {
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_exempt')
  num? get vatExempt => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_included')
  num? get vatIncluded => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_amount')
  num? get vatAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'withholding_tax')
  num? get withholdingTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_amount')
  num? get netAmount => throw _privateConstructorUsedError;

  /// Serializes this FooterFullTaxInvoiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FooterFullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FooterFullTaxInvoiceModelCopyWith<FooterFullTaxInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooterFullTaxInvoiceModelCopyWith<$Res> {
  factory $FooterFullTaxInvoiceModelCopyWith(FooterFullTaxInvoiceModel value,
          $Res Function(FooterFullTaxInvoiceModel) then) =
      _$FooterFullTaxInvoiceModelCopyWithImpl<$Res, FooterFullTaxInvoiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'vat_exempt') num? vatExempt,
      @JsonKey(name: 'vat_included') num? vatIncluded,
      @JsonKey(name: 'vat_amount') num? vatAmount,
      @JsonKey(name: 'withholding_tax') num? withholdingTax,
      @JsonKey(name: 'net_amount') num? netAmount});
}

/// @nodoc
class _$FooterFullTaxInvoiceModelCopyWithImpl<$Res,
        $Val extends FooterFullTaxInvoiceModel>
    implements $FooterFullTaxInvoiceModelCopyWith<$Res> {
  _$FooterFullTaxInvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FooterFullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = freezed,
    Object? vatExempt = freezed,
    Object? vatIncluded = freezed,
    Object? vatAmount = freezed,
    Object? withholdingTax = freezed,
    Object? netAmount = freezed,
  }) {
    return _then(_value.copyWith(
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      vatExempt: freezed == vatExempt
          ? _value.vatExempt
          : vatExempt // ignore: cast_nullable_to_non_nullable
              as num?,
      vatIncluded: freezed == vatIncluded
          ? _value.vatIncluded
          : vatIncluded // ignore: cast_nullable_to_non_nullable
              as num?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      withholdingTax: freezed == withholdingTax
          ? _value.withholdingTax
          : withholdingTax // ignore: cast_nullable_to_non_nullable
              as num?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FooterFullTaxInvoiceModelImplCopyWith<$Res>
    implements $FooterFullTaxInvoiceModelCopyWith<$Res> {
  factory _$$FooterFullTaxInvoiceModelImplCopyWith(
          _$FooterFullTaxInvoiceModelImpl value,
          $Res Function(_$FooterFullTaxInvoiceModelImpl) then) =
      __$$FooterFullTaxInvoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'vat_exempt') num? vatExempt,
      @JsonKey(name: 'vat_included') num? vatIncluded,
      @JsonKey(name: 'vat_amount') num? vatAmount,
      @JsonKey(name: 'withholding_tax') num? withholdingTax,
      @JsonKey(name: 'net_amount') num? netAmount});
}

/// @nodoc
class __$$FooterFullTaxInvoiceModelImplCopyWithImpl<$Res>
    extends _$FooterFullTaxInvoiceModelCopyWithImpl<$Res,
        _$FooterFullTaxInvoiceModelImpl>
    implements _$$FooterFullTaxInvoiceModelImplCopyWith<$Res> {
  __$$FooterFullTaxInvoiceModelImplCopyWithImpl(
      _$FooterFullTaxInvoiceModelImpl _value,
      $Res Function(_$FooterFullTaxInvoiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FooterFullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = freezed,
    Object? vatExempt = freezed,
    Object? vatIncluded = freezed,
    Object? vatAmount = freezed,
    Object? withholdingTax = freezed,
    Object? netAmount = freezed,
  }) {
    return _then(_$FooterFullTaxInvoiceModelImpl(
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      vatExempt: freezed == vatExempt
          ? _value.vatExempt
          : vatExempt // ignore: cast_nullable_to_non_nullable
              as num?,
      vatIncluded: freezed == vatIncluded
          ? _value.vatIncluded
          : vatIncluded // ignore: cast_nullable_to_non_nullable
              as num?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      withholdingTax: freezed == withholdingTax
          ? _value.withholdingTax
          : withholdingTax // ignore: cast_nullable_to_non_nullable
              as num?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FooterFullTaxInvoiceModelImpl implements _FooterFullTaxInvoiceModel {
  const _$FooterFullTaxInvoiceModelImpl(
      {@JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'vat_exempt') this.vatExempt,
      @JsonKey(name: 'vat_included') this.vatIncluded,
      @JsonKey(name: 'vat_amount') this.vatAmount,
      @JsonKey(name: 'withholding_tax') this.withholdingTax,
      @JsonKey(name: 'net_amount') this.netAmount});

  factory _$FooterFullTaxInvoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FooterFullTaxInvoiceModelImplFromJson(json);

  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'vat_exempt')
  final num? vatExempt;
  @override
  @JsonKey(name: 'vat_included')
  final num? vatIncluded;
  @override
  @JsonKey(name: 'vat_amount')
  final num? vatAmount;
  @override
  @JsonKey(name: 'withholding_tax')
  final num? withholdingTax;
  @override
  @JsonKey(name: 'net_amount')
  final num? netAmount;

  @override
  String toString() {
    return 'FooterFullTaxInvoiceModel(paymentMethod: $paymentMethod, vatExempt: $vatExempt, vatIncluded: $vatIncluded, vatAmount: $vatAmount, withholdingTax: $withholdingTax, netAmount: $netAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooterFullTaxInvoiceModelImpl &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.vatExempt, vatExempt) ||
                other.vatExempt == vatExempt) &&
            (identical(other.vatIncluded, vatIncluded) ||
                other.vatIncluded == vatIncluded) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.withholdingTax, withholdingTax) ||
                other.withholdingTax == withholdingTax) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod, vatExempt,
      vatIncluded, vatAmount, withholdingTax, netAmount);

  /// Create a copy of FooterFullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FooterFullTaxInvoiceModelImplCopyWith<_$FooterFullTaxInvoiceModelImpl>
      get copyWith => __$$FooterFullTaxInvoiceModelImplCopyWithImpl<
          _$FooterFullTaxInvoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooterFullTaxInvoiceModelImplToJson(
      this,
    );
  }
}

abstract class _FooterFullTaxInvoiceModel implements FooterFullTaxInvoiceModel {
  const factory _FooterFullTaxInvoiceModel(
          {@JsonKey(name: 'payment_method') final String? paymentMethod,
          @JsonKey(name: 'vat_exempt') final num? vatExempt,
          @JsonKey(name: 'vat_included') final num? vatIncluded,
          @JsonKey(name: 'vat_amount') final num? vatAmount,
          @JsonKey(name: 'withholding_tax') final num? withholdingTax,
          @JsonKey(name: 'net_amount') final num? netAmount}) =
      _$FooterFullTaxInvoiceModelImpl;

  factory _FooterFullTaxInvoiceModel.fromJson(Map<String, dynamic> json) =
      _$FooterFullTaxInvoiceModelImpl.fromJson;

  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'vat_exempt')
  num? get vatExempt;
  @override
  @JsonKey(name: 'vat_included')
  num? get vatIncluded;
  @override
  @JsonKey(name: 'vat_amount')
  num? get vatAmount;
  @override
  @JsonKey(name: 'withholding_tax')
  num? get withholdingTax;
  @override
  @JsonKey(name: 'net_amount')
  num? get netAmount;

  /// Create a copy of FooterFullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FooterFullTaxInvoiceModelImplCopyWith<_$FooterFullTaxInvoiceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
