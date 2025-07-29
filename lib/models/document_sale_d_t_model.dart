
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_sale_d_t_model.freezed.dart';
part 'document_sale_d_t_model.g.dart';

@freezed
class DocumentSaleDTModel with _$DocumentSaleDTModel {
  const factory DocumentSaleDTModel({
  @JsonKey(name: 'sale_dt_id') String? saleDtId,
  @JsonKey(name: 'sale_hd_id') String? saleHdId,
  @JsonKey(name: 'order_dt_id') String? orderDtId,
  @JsonKey(name: 'sale_dt_listno') num? saleDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'sale_dt_master_product_barcode_id') String? saleDtProductBarcodeId,
  @JsonKey(name: 'sale_dt_master_product_barcode_code') String? saleDtProductBarcodeCode,
  @JsonKey(name: 'sale_dt_master_product_barcode_name') String? saleDtProductBarcodeName,
  @JsonKey(name: 'sale_dt_master_product_barcode_master_unit_id') String? saleDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'sale_dt_master_product_barcode_master_unit_name') String? saleDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'sale_dt_master_product_barcode_rate') String? saleDtProductBarcodeRate,
  @JsonKey(name: 'sale_dt_price') String? saleDtPrice,
  @JsonKey(name: 'sale_dt_qty') String? saleDtQty,
  @JsonKey(name: 'sale_dt_discount') String? saleDtDiscount,
  @JsonKey(name: 'sale_dt_netamnt') String? saleDtNetamnt,
  @JsonKey(name: 'master_account_id') String? accountId,
  @JsonKey(name: 'sale_dt_vat_flag') bool? saleDtVatFlag,
  @JsonKey(name: 'sale_dt_qty_balance') String? saleDtQtyBalance,
  @JsonKey(name: 'order_hd_docuno') String? orderHdDocuno,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentSaleDTModel;

  factory DocumentSaleDTModel.fromJson(Map<String, dynamic> json) => _$DocumentSaleDTModelFromJson(json);
}
