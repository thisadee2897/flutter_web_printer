
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_product_return_d_t_model.freezed.dart';
part 'document_product_return_d_t_model.g.dart';

@freezed
class DocumentProductReturnDTModel with _$DocumentProductReturnDTModel {
  const factory DocumentProductReturnDTModel({
  @JsonKey(name: 'returnproduct_dt_id') String? returnproductDtId,
  @JsonKey(name: 'returnproduct_hd_id') String? returnproductHdId,
  @JsonKey(name: 'sale_dt_id') String? saleDtId,
  @JsonKey(name: 'returnproduct_dt_listno') num? returnproductDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'returnproduct_dt_master_product_barcode_id') String? returnproductDtProductBarcodeId,
  @JsonKey(name: 'returnproduct_dt_master_product_barcode_code') String? returnproductDtProductBarcodeCode,
  @JsonKey(name: 'returnproduct_dt_master_product_barcode_name') String? returnproductDtProductBarcodeName,
  @JsonKey(name: 'returnproduct_dt_master_product_barcode_master_unit_id') String? returnproductDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'returnproduct_dt_master_product_barcode_master_unit_name') String? returnproductDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'returnproduct_dt_master_product_barcode_rate') String? returnproductDtProductBarcodeRate,
  @JsonKey(name: 'returnproduct_dt_price') String? returnproductDtPrice,
  @JsonKey(name: 'sale_dt_qty') String? saleDtQty,
  @JsonKey(name: 'returnproduct_dt_qty') String? returnproductDtQty,
  @JsonKey(name: 'returnproduct_dt_netamnt') String? returnproductDtNetamnt,
  @JsonKey(name: 'master_account_id') String? accountId,
  @JsonKey(name: 'returnproduct_dt_vat_flag') bool? returnproductDtVatFlag,
  @JsonKey(name: 'returnproduct_dt_discount') String? returnproductDtDiscount,
  @JsonKey(name: 'sale_hd_docuno') String? saleHdDocuno,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentProductReturnDTModel;

  factory DocumentProductReturnDTModel.fromJson(Map<String, dynamic> json) => _$DocumentProductReturnDTModelFromJson(json);
}
