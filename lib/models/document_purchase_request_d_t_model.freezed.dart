// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_purchase_request_d_t_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentPurchaseRequestDTModel _$DocumentPurchaseRequestDTModelFromJson(
    Map<String, dynamic> json) {
  return _DocumentPurchaseRequestDTModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentPurchaseRequestDTModel {
  @JsonKey(name: 'purchaserequest_dt_id')
  String? get purchaserequestDtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_hd_id')
  String? get purchaserequestHdId => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_listno')
  num? get purchaserequestDtListno => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_product_id')
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_product_code')
  String? get productCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_unit_id')
  String? get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_unit_name')
  String? get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_price')
  String? get purchaserequestDtPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_qty')
  String? get purchaserequestDtQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_discount')
  String? get purchaserequestDtDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_netamnt')
  String? get purchaserequestDtNetamnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_id')
  String? get purchaserequestDtProductBarcodeId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_code')
  String? get purchaserequestDtProductBarcodeCode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_id')
  String? get purchaserequestDtProductBarcodeMasterUnitId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_name')
  String? get purchaserequestDtProductBarcodeMasterUnitName =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_rate')
  String? get purchaserequestDtProductBarcodeRate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cancel')
  bool? get isCancel => throw _privateConstructorUsedError;

  /// Serializes this DocumentPurchaseRequestDTModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentPurchaseRequestDTModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentPurchaseRequestDTModelCopyWith<DocumentPurchaseRequestDTModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentPurchaseRequestDTModelCopyWith<$Res> {
  factory $DocumentPurchaseRequestDTModelCopyWith(
          DocumentPurchaseRequestDTModel value,
          $Res Function(DocumentPurchaseRequestDTModel) then) =
      _$DocumentPurchaseRequestDTModelCopyWithImpl<$Res,
          DocumentPurchaseRequestDTModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'purchaserequest_dt_id') String? purchaserequestDtId,
      @JsonKey(name: 'purchaserequest_hd_id') String? purchaserequestHdId,
      @JsonKey(name: 'purchaserequest_dt_listno') num? purchaserequestDtListno,
      @JsonKey(name: 'master_product_id') String? productId,
      @JsonKey(name: 'master_product_code') String? productCode,
      @JsonKey(name: 'master_product_name') String? productName,
      @JsonKey(name: 'master_unit_id') String? unitId,
      @JsonKey(name: 'master_unit_name') String? unitName,
      @JsonKey(name: 'purchaserequest_dt_price') String? purchaserequestDtPrice,
      @JsonKey(name: 'purchaserequest_dt_qty') String? purchaserequestDtQty,
      @JsonKey(name: 'purchaserequest_dt_discount')
      String? purchaserequestDtDiscount,
      @JsonKey(name: 'purchaserequest_dt_netamnt')
      String? purchaserequestDtNetamnt,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_id')
      String? purchaserequestDtProductBarcodeId,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_code')
      String? purchaserequestDtProductBarcodeCode,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_id')
      String? purchaserequestDtProductBarcodeMasterUnitId,
      @JsonKey(
          name: 'purchaserequest_dt_master_product_barcode_master_unit_name')
      String? purchaserequestDtProductBarcodeMasterUnitName,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_rate')
      String? purchaserequestDtProductBarcodeRate,
      @JsonKey(name: 'is_cancel') bool? isCancel});
}

/// @nodoc
class _$DocumentPurchaseRequestDTModelCopyWithImpl<$Res,
        $Val extends DocumentPurchaseRequestDTModel>
    implements $DocumentPurchaseRequestDTModelCopyWith<$Res> {
  _$DocumentPurchaseRequestDTModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentPurchaseRequestDTModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaserequestDtId = freezed,
    Object? purchaserequestHdId = freezed,
    Object? purchaserequestDtListno = freezed,
    Object? productId = freezed,
    Object? productCode = freezed,
    Object? productName = freezed,
    Object? unitId = freezed,
    Object? unitName = freezed,
    Object? purchaserequestDtPrice = freezed,
    Object? purchaserequestDtQty = freezed,
    Object? purchaserequestDtDiscount = freezed,
    Object? purchaserequestDtNetamnt = freezed,
    Object? purchaserequestDtProductBarcodeId = freezed,
    Object? purchaserequestDtProductBarcodeCode = freezed,
    Object? purchaserequestDtProductBarcodeMasterUnitId = freezed,
    Object? purchaserequestDtProductBarcodeMasterUnitName = freezed,
    Object? purchaserequestDtProductBarcodeRate = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_value.copyWith(
      purchaserequestDtId: freezed == purchaserequestDtId
          ? _value.purchaserequestDtId
          : purchaserequestDtId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestHdId: freezed == purchaserequestHdId
          ? _value.purchaserequestHdId
          : purchaserequestHdId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtListno: freezed == purchaserequestDtListno
          ? _value.purchaserequestDtListno
          : purchaserequestDtListno // ignore: cast_nullable_to_non_nullable
              as num?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      productCode: freezed == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitName: freezed == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtPrice: freezed == purchaserequestDtPrice
          ? _value.purchaserequestDtPrice
          : purchaserequestDtPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtQty: freezed == purchaserequestDtQty
          ? _value.purchaserequestDtQty
          : purchaserequestDtQty // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtDiscount: freezed == purchaserequestDtDiscount
          ? _value.purchaserequestDtDiscount
          : purchaserequestDtDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtNetamnt: freezed == purchaserequestDtNetamnt
          ? _value.purchaserequestDtNetamnt
          : purchaserequestDtNetamnt // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeId: freezed ==
              purchaserequestDtProductBarcodeId
          ? _value.purchaserequestDtProductBarcodeId
          : purchaserequestDtProductBarcodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeCode: freezed ==
              purchaserequestDtProductBarcodeCode
          ? _value.purchaserequestDtProductBarcodeCode
          : purchaserequestDtProductBarcodeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeMasterUnitId: freezed ==
              purchaserequestDtProductBarcodeMasterUnitId
          ? _value.purchaserequestDtProductBarcodeMasterUnitId
          : purchaserequestDtProductBarcodeMasterUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeMasterUnitName: freezed ==
              purchaserequestDtProductBarcodeMasterUnitName
          ? _value.purchaserequestDtProductBarcodeMasterUnitName
          : purchaserequestDtProductBarcodeMasterUnitName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeRate: freezed ==
              purchaserequestDtProductBarcodeRate
          ? _value.purchaserequestDtProductBarcodeRate
          : purchaserequestDtProductBarcodeRate // ignore: cast_nullable_to_non_nullable
              as String?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentPurchaseRequestDTModelImplCopyWith<$Res>
    implements $DocumentPurchaseRequestDTModelCopyWith<$Res> {
  factory _$$DocumentPurchaseRequestDTModelImplCopyWith(
          _$DocumentPurchaseRequestDTModelImpl value,
          $Res Function(_$DocumentPurchaseRequestDTModelImpl) then) =
      __$$DocumentPurchaseRequestDTModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'purchaserequest_dt_id') String? purchaserequestDtId,
      @JsonKey(name: 'purchaserequest_hd_id') String? purchaserequestHdId,
      @JsonKey(name: 'purchaserequest_dt_listno') num? purchaserequestDtListno,
      @JsonKey(name: 'master_product_id') String? productId,
      @JsonKey(name: 'master_product_code') String? productCode,
      @JsonKey(name: 'master_product_name') String? productName,
      @JsonKey(name: 'master_unit_id') String? unitId,
      @JsonKey(name: 'master_unit_name') String? unitName,
      @JsonKey(name: 'purchaserequest_dt_price') String? purchaserequestDtPrice,
      @JsonKey(name: 'purchaserequest_dt_qty') String? purchaserequestDtQty,
      @JsonKey(name: 'purchaserequest_dt_discount')
      String? purchaserequestDtDiscount,
      @JsonKey(name: 'purchaserequest_dt_netamnt')
      String? purchaserequestDtNetamnt,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_id')
      String? purchaserequestDtProductBarcodeId,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_code')
      String? purchaserequestDtProductBarcodeCode,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_id')
      String? purchaserequestDtProductBarcodeMasterUnitId,
      @JsonKey(
          name: 'purchaserequest_dt_master_product_barcode_master_unit_name')
      String? purchaserequestDtProductBarcodeMasterUnitName,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_rate')
      String? purchaserequestDtProductBarcodeRate,
      @JsonKey(name: 'is_cancel') bool? isCancel});
}

/// @nodoc
class __$$DocumentPurchaseRequestDTModelImplCopyWithImpl<$Res>
    extends _$DocumentPurchaseRequestDTModelCopyWithImpl<$Res,
        _$DocumentPurchaseRequestDTModelImpl>
    implements _$$DocumentPurchaseRequestDTModelImplCopyWith<$Res> {
  __$$DocumentPurchaseRequestDTModelImplCopyWithImpl(
      _$DocumentPurchaseRequestDTModelImpl _value,
      $Res Function(_$DocumentPurchaseRequestDTModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentPurchaseRequestDTModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaserequestDtId = freezed,
    Object? purchaserequestHdId = freezed,
    Object? purchaserequestDtListno = freezed,
    Object? productId = freezed,
    Object? productCode = freezed,
    Object? productName = freezed,
    Object? unitId = freezed,
    Object? unitName = freezed,
    Object? purchaserequestDtPrice = freezed,
    Object? purchaserequestDtQty = freezed,
    Object? purchaserequestDtDiscount = freezed,
    Object? purchaserequestDtNetamnt = freezed,
    Object? purchaserequestDtProductBarcodeId = freezed,
    Object? purchaserequestDtProductBarcodeCode = freezed,
    Object? purchaserequestDtProductBarcodeMasterUnitId = freezed,
    Object? purchaserequestDtProductBarcodeMasterUnitName = freezed,
    Object? purchaserequestDtProductBarcodeRate = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_$DocumentPurchaseRequestDTModelImpl(
      purchaserequestDtId: freezed == purchaserequestDtId
          ? _value.purchaserequestDtId
          : purchaserequestDtId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestHdId: freezed == purchaserequestHdId
          ? _value.purchaserequestHdId
          : purchaserequestHdId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtListno: freezed == purchaserequestDtListno
          ? _value.purchaserequestDtListno
          : purchaserequestDtListno // ignore: cast_nullable_to_non_nullable
              as num?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      productCode: freezed == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitName: freezed == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtPrice: freezed == purchaserequestDtPrice
          ? _value.purchaserequestDtPrice
          : purchaserequestDtPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtQty: freezed == purchaserequestDtQty
          ? _value.purchaserequestDtQty
          : purchaserequestDtQty // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtDiscount: freezed == purchaserequestDtDiscount
          ? _value.purchaserequestDtDiscount
          : purchaserequestDtDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtNetamnt: freezed == purchaserequestDtNetamnt
          ? _value.purchaserequestDtNetamnt
          : purchaserequestDtNetamnt // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeId: freezed ==
              purchaserequestDtProductBarcodeId
          ? _value.purchaserequestDtProductBarcodeId
          : purchaserequestDtProductBarcodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeCode: freezed ==
              purchaserequestDtProductBarcodeCode
          ? _value.purchaserequestDtProductBarcodeCode
          : purchaserequestDtProductBarcodeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeMasterUnitId: freezed ==
              purchaserequestDtProductBarcodeMasterUnitId
          ? _value.purchaserequestDtProductBarcodeMasterUnitId
          : purchaserequestDtProductBarcodeMasterUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeMasterUnitName: freezed ==
              purchaserequestDtProductBarcodeMasterUnitName
          ? _value.purchaserequestDtProductBarcodeMasterUnitName
          : purchaserequestDtProductBarcodeMasterUnitName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaserequestDtProductBarcodeRate: freezed ==
              purchaserequestDtProductBarcodeRate
          ? _value.purchaserequestDtProductBarcodeRate
          : purchaserequestDtProductBarcodeRate // ignore: cast_nullable_to_non_nullable
              as String?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentPurchaseRequestDTModelImpl
    implements _DocumentPurchaseRequestDTModel {
  const _$DocumentPurchaseRequestDTModelImpl(
      {@JsonKey(name: 'purchaserequest_dt_id') this.purchaserequestDtId,
      @JsonKey(name: 'purchaserequest_hd_id') this.purchaserequestHdId,
      @JsonKey(name: 'purchaserequest_dt_listno') this.purchaserequestDtListno,
      @JsonKey(name: 'master_product_id') this.productId,
      @JsonKey(name: 'master_product_code') this.productCode,
      @JsonKey(name: 'master_product_name') this.productName,
      @JsonKey(name: 'master_unit_id') this.unitId,
      @JsonKey(name: 'master_unit_name') this.unitName,
      @JsonKey(name: 'purchaserequest_dt_price') this.purchaserequestDtPrice,
      @JsonKey(name: 'purchaserequest_dt_qty') this.purchaserequestDtQty,
      @JsonKey(name: 'purchaserequest_dt_discount')
      this.purchaserequestDtDiscount,
      @JsonKey(name: 'purchaserequest_dt_netamnt')
      this.purchaserequestDtNetamnt,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_id')
      this.purchaserequestDtProductBarcodeId,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_code')
      this.purchaserequestDtProductBarcodeCode,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_id')
      this.purchaserequestDtProductBarcodeMasterUnitId,
      @JsonKey(
          name: 'purchaserequest_dt_master_product_barcode_master_unit_name')
      this.purchaserequestDtProductBarcodeMasterUnitName,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_rate')
      this.purchaserequestDtProductBarcodeRate,
      @JsonKey(name: 'is_cancel') this.isCancel});

  factory _$DocumentPurchaseRequestDTModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DocumentPurchaseRequestDTModelImplFromJson(json);

  @override
  @JsonKey(name: 'purchaserequest_dt_id')
  final String? purchaserequestDtId;
  @override
  @JsonKey(name: 'purchaserequest_hd_id')
  final String? purchaserequestHdId;
  @override
  @JsonKey(name: 'purchaserequest_dt_listno')
  final num? purchaserequestDtListno;
  @override
  @JsonKey(name: 'master_product_id')
  final String? productId;
  @override
  @JsonKey(name: 'master_product_code')
  final String? productCode;
  @override
  @JsonKey(name: 'master_product_name')
  final String? productName;
  @override
  @JsonKey(name: 'master_unit_id')
  final String? unitId;
  @override
  @JsonKey(name: 'master_unit_name')
  final String? unitName;
  @override
  @JsonKey(name: 'purchaserequest_dt_price')
  final String? purchaserequestDtPrice;
  @override
  @JsonKey(name: 'purchaserequest_dt_qty')
  final String? purchaserequestDtQty;
  @override
  @JsonKey(name: 'purchaserequest_dt_discount')
  final String? purchaserequestDtDiscount;
  @override
  @JsonKey(name: 'purchaserequest_dt_netamnt')
  final String? purchaserequestDtNetamnt;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_id')
  final String? purchaserequestDtProductBarcodeId;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_code')
  final String? purchaserequestDtProductBarcodeCode;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_id')
  final String? purchaserequestDtProductBarcodeMasterUnitId;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_name')
  final String? purchaserequestDtProductBarcodeMasterUnitName;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_rate')
  final String? purchaserequestDtProductBarcodeRate;
  @override
  @JsonKey(name: 'is_cancel')
  final bool? isCancel;

  @override
  String toString() {
    return 'DocumentPurchaseRequestDTModel(purchaserequestDtId: $purchaserequestDtId, purchaserequestHdId: $purchaserequestHdId, purchaserequestDtListno: $purchaserequestDtListno, productId: $productId, productCode: $productCode, productName: $productName, unitId: $unitId, unitName: $unitName, purchaserequestDtPrice: $purchaserequestDtPrice, purchaserequestDtQty: $purchaserequestDtQty, purchaserequestDtDiscount: $purchaserequestDtDiscount, purchaserequestDtNetamnt: $purchaserequestDtNetamnt, purchaserequestDtProductBarcodeId: $purchaserequestDtProductBarcodeId, purchaserequestDtProductBarcodeCode: $purchaserequestDtProductBarcodeCode, purchaserequestDtProductBarcodeMasterUnitId: $purchaserequestDtProductBarcodeMasterUnitId, purchaserequestDtProductBarcodeMasterUnitName: $purchaserequestDtProductBarcodeMasterUnitName, purchaserequestDtProductBarcodeRate: $purchaserequestDtProductBarcodeRate, isCancel: $isCancel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentPurchaseRequestDTModelImpl &&
            (identical(other.purchaserequestDtId, purchaserequestDtId) ||
                other.purchaserequestDtId == purchaserequestDtId) &&
            (identical(other.purchaserequestHdId, purchaserequestHdId) ||
                other.purchaserequestHdId == purchaserequestHdId) &&
            (identical(other.purchaserequestDtListno, purchaserequestDtListno) ||
                other.purchaserequestDtListno == purchaserequestDtListno) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.purchaserequestDtPrice, purchaserequestDtPrice) ||
                other.purchaserequestDtPrice == purchaserequestDtPrice) &&
            (identical(other.purchaserequestDtQty, purchaserequestDtQty) ||
                other.purchaserequestDtQty == purchaserequestDtQty) &&
            (identical(other.purchaserequestDtDiscount, purchaserequestDtDiscount) ||
                other.purchaserequestDtDiscount == purchaserequestDtDiscount) &&
            (identical(other.purchaserequestDtNetamnt, purchaserequestDtNetamnt) ||
                other.purchaserequestDtNetamnt == purchaserequestDtNetamnt) &&
            (identical(other.purchaserequestDtProductBarcodeId, purchaserequestDtProductBarcodeId) ||
                other.purchaserequestDtProductBarcodeId ==
                    purchaserequestDtProductBarcodeId) &&
            (identical(other.purchaserequestDtProductBarcodeCode, purchaserequestDtProductBarcodeCode) ||
                other.purchaserequestDtProductBarcodeCode ==
                    purchaserequestDtProductBarcodeCode) &&
            (identical(other.purchaserequestDtProductBarcodeMasterUnitId,
                    purchaserequestDtProductBarcodeMasterUnitId) ||
                other.purchaserequestDtProductBarcodeMasterUnitId ==
                    purchaserequestDtProductBarcodeMasterUnitId) &&
            (identical(other.purchaserequestDtProductBarcodeMasterUnitName,
                    purchaserequestDtProductBarcodeMasterUnitName) ||
                other.purchaserequestDtProductBarcodeMasterUnitName ==
                    purchaserequestDtProductBarcodeMasterUnitName) &&
            (identical(other.purchaserequestDtProductBarcodeRate, purchaserequestDtProductBarcodeRate) ||
                other.purchaserequestDtProductBarcodeRate == purchaserequestDtProductBarcodeRate) &&
            (identical(other.isCancel, isCancel) || other.isCancel == isCancel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaserequestDtId,
      purchaserequestHdId,
      purchaserequestDtListno,
      productId,
      productCode,
      productName,
      unitId,
      unitName,
      purchaserequestDtPrice,
      purchaserequestDtQty,
      purchaserequestDtDiscount,
      purchaserequestDtNetamnt,
      purchaserequestDtProductBarcodeId,
      purchaserequestDtProductBarcodeCode,
      purchaserequestDtProductBarcodeMasterUnitId,
      purchaserequestDtProductBarcodeMasterUnitName,
      purchaserequestDtProductBarcodeRate,
      isCancel);

  /// Create a copy of DocumentPurchaseRequestDTModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentPurchaseRequestDTModelImplCopyWith<
          _$DocumentPurchaseRequestDTModelImpl>
      get copyWith => __$$DocumentPurchaseRequestDTModelImplCopyWithImpl<
          _$DocumentPurchaseRequestDTModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentPurchaseRequestDTModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentPurchaseRequestDTModel
    implements DocumentPurchaseRequestDTModel {
  const factory _DocumentPurchaseRequestDTModel(
      {@JsonKey(name: 'purchaserequest_dt_id')
      final String? purchaserequestDtId,
      @JsonKey(name: 'purchaserequest_hd_id') final String? purchaserequestHdId,
      @JsonKey(name: 'purchaserequest_dt_listno')
      final num? purchaserequestDtListno,
      @JsonKey(name: 'master_product_id') final String? productId,
      @JsonKey(name: 'master_product_code') final String? productCode,
      @JsonKey(name: 'master_product_name') final String? productName,
      @JsonKey(name: 'master_unit_id') final String? unitId,
      @JsonKey(name: 'master_unit_name') final String? unitName,
      @JsonKey(name: 'purchaserequest_dt_price')
      final String? purchaserequestDtPrice,
      @JsonKey(name: 'purchaserequest_dt_qty')
      final String? purchaserequestDtQty,
      @JsonKey(name: 'purchaserequest_dt_discount')
      final String? purchaserequestDtDiscount,
      @JsonKey(name: 'purchaserequest_dt_netamnt')
      final String? purchaserequestDtNetamnt,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_id')
      final String? purchaserequestDtProductBarcodeId,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_code')
      final String? purchaserequestDtProductBarcodeCode,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_id')
      final String? purchaserequestDtProductBarcodeMasterUnitId,
      @JsonKey(
          name: 'purchaserequest_dt_master_product_barcode_master_unit_name')
      final String? purchaserequestDtProductBarcodeMasterUnitName,
      @JsonKey(name: 'purchaserequest_dt_master_product_barcode_rate')
      final String? purchaserequestDtProductBarcodeRate,
      @JsonKey(name: 'is_cancel')
      final bool? isCancel}) = _$DocumentPurchaseRequestDTModelImpl;

  factory _DocumentPurchaseRequestDTModel.fromJson(Map<String, dynamic> json) =
      _$DocumentPurchaseRequestDTModelImpl.fromJson;

  @override
  @JsonKey(name: 'purchaserequest_dt_id')
  String? get purchaserequestDtId;
  @override
  @JsonKey(name: 'purchaserequest_hd_id')
  String? get purchaserequestHdId;
  @override
  @JsonKey(name: 'purchaserequest_dt_listno')
  num? get purchaserequestDtListno;
  @override
  @JsonKey(name: 'master_product_id')
  String? get productId;
  @override
  @JsonKey(name: 'master_product_code')
  String? get productCode;
  @override
  @JsonKey(name: 'master_product_name')
  String? get productName;
  @override
  @JsonKey(name: 'master_unit_id')
  String? get unitId;
  @override
  @JsonKey(name: 'master_unit_name')
  String? get unitName;
  @override
  @JsonKey(name: 'purchaserequest_dt_price')
  String? get purchaserequestDtPrice;
  @override
  @JsonKey(name: 'purchaserequest_dt_qty')
  String? get purchaserequestDtQty;
  @override
  @JsonKey(name: 'purchaserequest_dt_discount')
  String? get purchaserequestDtDiscount;
  @override
  @JsonKey(name: 'purchaserequest_dt_netamnt')
  String? get purchaserequestDtNetamnt;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_id')
  String? get purchaserequestDtProductBarcodeId;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_code')
  String? get purchaserequestDtProductBarcodeCode;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_id')
  String? get purchaserequestDtProductBarcodeMasterUnitId;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_name')
  String? get purchaserequestDtProductBarcodeMasterUnitName;
  @override
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_rate')
  String? get purchaserequestDtProductBarcodeRate;
  @override
  @JsonKey(name: 'is_cancel')
  bool? get isCancel;

  /// Create a copy of DocumentPurchaseRequestDTModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentPurchaseRequestDTModelImplCopyWith<
          _$DocumentPurchaseRequestDTModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
