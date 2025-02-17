
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_inventory_adjust_d_t_model.freezed.dart';
part 'document_inventory_adjust_d_t_model.g.dart';

@freezed
class DocumentInventoryAdjustDTModel with _$DocumentInventoryAdjustDTModel {
  const factory DocumentInventoryAdjustDTModel({
  @JsonKey(name: 'adjust_dt_id') String? adjustDtId,
  @JsonKey(name: 'adjust_hd_id') String? adjustHdId,
  @JsonKey(name: 'adjust_dt_listno') num? adjustDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'adjust_dt_master_product_barcode_id') String? adjustDtProductBarcodeId,
  @JsonKey(name: 'adjust_dt_master_product_barcode_code') String? adjustDtProductBarcodeCode,
  @JsonKey(name: 'adjust_dt_master_product_barcode_name') String? adjustDtProductBarcodeName,
  @JsonKey(name: 'adjust_dt_master_product_barcode_master_unit_id') String? adjustDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'adjust_dt_master_product_barcode_master_unit_name') String? adjustDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'adjust_dt_master_product_barcode_rate') String? adjustDtProductBarcodeRate,
  @JsonKey(name: 'adjust_dt_flag') num? adjustDtFlag,
  @JsonKey(name: 'adjust_dt_qty') String? adjustDtQty,
  @JsonKey(name: 'adjust_dt_price') String? adjustDtPrice,
  @JsonKey(name: 'adjust_dt_amount') String? adjustDtAmount,
  }) = _DocumentInventoryAdjustDTModel;

  factory DocumentInventoryAdjustDTModel.fromJson(Map<String, dynamic> json) => _$DocumentInventoryAdjustDTModelFromJson(json);
}
