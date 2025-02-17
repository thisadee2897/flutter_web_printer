
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_inventory_requisition_d_t_model.freezed.dart';
part 'document_inventory_requisition_d_t_model.g.dart';

@freezed
class DocumentInventoryRequisitionDTModel with _$DocumentInventoryRequisitionDTModel {
  const factory DocumentInventoryRequisitionDTModel({
  @JsonKey(name: 'requisition_dt_id') String? requisitionDtId,
  @JsonKey(name: 'requisition_hd_id') String? requisitionHdId,
  @JsonKey(name: 'requisition_dt_listno') num? requisitionDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'requisition_dt_master_product_barcode_id') String? requisitionDtProductBarcodeId,
  @JsonKey(name: 'requisition_dt_master_product_barcode_code') String? requisitionDtProductBarcodeCode,
  @JsonKey(name: 'requisition_dt_master_product_barcode_name') String? requisitionDtProductBarcodeName,
  @JsonKey(name: 'requisition_dt_master_product_barcode_master_unit_id') String? requisitionDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'requisition_dt_master_product_barcode_master_unit_name') String? requisitionDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'requisition_dt_master_product_barcode_rate') String? requisitionDtProductBarcodeRate,
  @JsonKey(name: 'requisition_dt_qty') String? requisitionDtQty,
  @JsonKey(name: 'requisition_dt_price') String? requisitionDtPrice,
  @JsonKey(name: 'requisition_dt_amount') String? requisitionDtAmount,
  }) = _DocumentInventoryRequisitionDTModel;

  factory DocumentInventoryRequisitionDTModel.fromJson(Map<String, dynamic> json) => _$DocumentInventoryRequisitionDTModelFromJson(json);
}
