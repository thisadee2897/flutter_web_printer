
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_order_d_t_model.freezed.dart';
part 'document_order_d_t_model.g.dart';

@freezed
class DocumentOrderDTModel with _$DocumentOrderDTModel {
  const factory DocumentOrderDTModel({
  @JsonKey(name: 'order_dt_id') String? orderDtId,
  @JsonKey(name: 'order_hd_id') String? orderHdId,
  @JsonKey(name: 'quotation_dt_id') String? quotationDtId,
  @JsonKey(name: 'order_dt_listno') num? orderDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'order_dt_master_product_barcode_id') String? orderDtProductBarcodeId,
  @JsonKey(name: 'order_dt_master_product_barcode_code') String? orderDtProductBarcodeCode,
  @JsonKey(name: 'order_dt_master_product_barcode_name') String? orderDtProductBarcodeName,
  @JsonKey(name: 'order_dt_master_product_barcode_master_unit_id') String? orderDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'order_dt_master_product_barcode_master_unit_name') String? orderDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'order_dt_master_product_barcode_rate') String? orderDtProductBarcodeRate,
  @JsonKey(name: 'order_dt_price') String? orderDtPrice,
  @JsonKey(name: 'order_dt_qty') String? orderDtQty,
  @JsonKey(name: 'order_dt_discount') String? orderDtDiscount,
  @JsonKey(name: 'order_dt_netamnt') String? orderDtNetamnt,
  @JsonKey(name: 'order_dt_vat_flag') bool? orderDtVatFlag,
  @JsonKey(name: 'quotation_hd_docuno') String? quotationHdDocuno,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentOrderDTModel;

  factory DocumentOrderDTModel.fromJson(Map<String, dynamic> json) => _$DocumentOrderDTModelFromJson(json);
}
