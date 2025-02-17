
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_purchase_request_d_t_model.freezed.dart';
part 'document_purchase_request_d_t_model.g.dart';

@freezed
class DocumentPurchaseRequestDTModel with _$DocumentPurchaseRequestDTModel {
  const factory DocumentPurchaseRequestDTModel({
  @JsonKey(name: 'purchaserequest_dt_id') String? purchaserequestDtId,
  @JsonKey(name: 'purchaserequest_hd_id') String? purchaserequestHdId,
  @JsonKey(name: 'purchaserequest_dt_listno') num? purchaserequestDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_product_name') String? productName,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'master_unit_name') String? unitName,
  @JsonKey(name: 'purchaserequest_dt_price') String? purchaserequestDtPrice,
  @JsonKey(name: 'purchaserequest_dt_qty') String? purchaserequestDtQty,
  @JsonKey(name: 'purchaserequest_dt_discount') String? purchaserequestDtDiscount,
  @JsonKey(name: 'purchaserequest_dt_netamnt') String? purchaserequestDtNetamnt,
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_id') String? purchaserequestDtProductBarcodeId,
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_code') String? purchaserequestDtProductBarcodeCode,
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_id') String? purchaserequestDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_master_unit_name') String? purchaserequestDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'purchaserequest_dt_master_product_barcode_rate') String? purchaserequestDtProductBarcodeRate,
  }) = _DocumentPurchaseRequestDTModel;

  factory DocumentPurchaseRequestDTModel.fromJson(Map<String, dynamic> json) => _$DocumentPurchaseRequestDTModelFromJson(json);
}
