
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_quotation_d_t_model.freezed.dart';
part 'document_quotation_d_t_model.g.dart';

@freezed
class DocumentQuotationDTModel with _$DocumentQuotationDTModel {
  const factory DocumentQuotationDTModel({
  @JsonKey(name: 'quotation_dt_id') String? quotationDtId,
  @JsonKey(name: 'quotation_hd_id') String? quotationHdId,
  @JsonKey(name: 'quotation_dt_listno') num? quotationDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'quotation_dt_master_product_barcode_id') String? quotationDtProductBarcodeId,
  @JsonKey(name: 'quotation_dt_master_product_barcode_code') String? quotationDtProductBarcodeCode,
  @JsonKey(name: 'quotation_dt_master_product_barcode_name') String? quotationDtProductBarcodeName,
  @JsonKey(name: 'quotation_dt_master_product_barcode_master_unit_id') String? quotationDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'quotation_dt_master_product_barcode_master_unit_name') String? quotationDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'quotation_dt_master_product_barcode_rate') String? quotationDtProductBarcodeRate,
  @JsonKey(name: 'quotation_dt_price') String? quotationDtPrice,
  @JsonKey(name: 'quotation_dt_qty') String? quotationDtQty,
  @JsonKey(name: 'quotation_dt_discount') String? quotationDtDiscount,
  @JsonKey(name: 'quotation_dt_netamnt') String? quotationDtNetamnt,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentQuotationDTModel;

  factory DocumentQuotationDTModel.fromJson(Map<String, dynamic> json) => _$DocumentQuotationDTModelFromJson(json);
}
