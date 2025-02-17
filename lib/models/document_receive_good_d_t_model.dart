
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_receive_good_d_t_model.freezed.dart';
part 'document_receive_good_d_t_model.g.dart';

@freezed
class DocumentReceiveGoodDTModel with _$DocumentReceiveGoodDTModel {
  const factory DocumentReceiveGoodDTModel({
  @JsonKey(name: 'receive_dt_id') String? receiveDtId,
  @JsonKey(name: 'receive_hd_id') String? receiveHdId,
  @JsonKey(name: 'purchaseorder_dt_id') String? purchaseorderDtId,
  @JsonKey(name: 'receive_dt_listno') num? receiveDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_product_name') String? productName,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'master_unit_name') String? unitName,
  @JsonKey(name: 'receive_dt_vat_flag') bool? receiveDtVatFlag,
  @JsonKey(name: 'master_account_id') String? accountId,
  @JsonKey(name: 'receive_dt_price') String? receiveDtPrice,
  @JsonKey(name: 'receive_dt_qty') String? receiveDtQty,
  @JsonKey(name: 'receive_dt_discount') String? receiveDtDiscount,
  @JsonKey(name: 'receive_dt_netamnt') String? receiveDtNetamnt,
  @JsonKey(name: 'receive_dt_master_product_barcode_id') String? receiveDtProductBarcodeId,
  @JsonKey(name: 'receive_dt_master_product_barcode_code') String? receiveDtProductBarcodeCode,
  @JsonKey(name: 'receive_dt_master_product_barcode_master_unit_id') String? receiveDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'receive_dt_master_product_barcode_master_unit_name') String? receiveDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'receive_dt_master_product_barcode_rate') String? receiveDtProductBarcodeRate,
  @JsonKey(name: 'purchaseorder_hd_docuno') String? purchaseorderHdDocuno,
  @JsonKey(name: 'receive_dt_tank_no') String? receiveDtTankNo,
  }) = _DocumentReceiveGoodDTModel;

  factory DocumentReceiveGoodDTModel.fromJson(Map<String, dynamic> json) => _$DocumentReceiveGoodDTModelFromJson(json);
}
