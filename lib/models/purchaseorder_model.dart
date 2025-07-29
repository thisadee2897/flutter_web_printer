
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchaseorder_model.freezed.dart';
part 'purchaseorder_model.g.dart';

@freezed
class PurchaseorderModel with _$PurchaseorderModel {
  const factory PurchaseorderModel({
  @JsonKey(name: 'purchaseorder_dt_id') String? purchaseorderDtId,
  @JsonKey(name: 'purchaseorder_hd_id') String? purchaseorderHdId,
  @JsonKey(name: 'purchaserequest_dt_id') String? purchaserequestDtId,
  @JsonKey(name: 'purchaseorder_dt_listno') num? purchaseorderDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_product_name') String? productName,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'master_unit_name') String? unitName,
  @JsonKey(name: 'purchaseorder_dt_vat_flag') String? purchaseorderDtVatFlag,
  @JsonKey(name: 'purchaseorder_dt_price') String? purchaseorderDtPrice,
  @JsonKey(name: 'purchaseorder_dt_qty') String? purchaseorderDtQty,
  @JsonKey(name: 'purchaseorder_dt_discount') String? purchaseorderDtDiscount,
  @JsonKey(name: 'purchaseorder_dt_netamnt') String? purchaseorderDtNetamnt,
  @JsonKey(name: 'purchaserequest_hd_docuno') String? purchaserequestHdDocuno,
  @JsonKey(name: 'purchaseorder_dt_master_product_barcode_id') String? purchaseorderDtProductBarcodeId,
  @JsonKey(name: 'purchaseorder_dt_master_product_barcode_code') String? purchaseorderDtProductBarcodeCode,
  @JsonKey(name: 'purchaseorder_dt_master_product_barcode_master_unit_id') String? purchaseorderDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'purchaseorder_dt_master_product_barcode_master_unit_name') String? purchaseorderDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'purchaseorder_dt_master_product_barcode_rate') String? purchaseorderDtProductBarcodeRate,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _PurchaseorderModel;

  factory PurchaseorderModel.fromJson(Map<String, dynamic> json) => _$PurchaseorderModelFromJson(json);
}
