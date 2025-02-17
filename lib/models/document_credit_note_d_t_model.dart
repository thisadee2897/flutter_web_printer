
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_credit_note_d_t_model.freezed.dart';
part 'document_credit_note_d_t_model.g.dart';

@freezed
class DocumentCreditNoteDTModel with _$DocumentCreditNoteDTModel {
  const factory DocumentCreditNoteDTModel({
  @JsonKey(name: 'creditnote_dt_id') String? creditnoteDtId,
  @JsonKey(name: 'creditnote_hd_id') String? creditnoteHdId,
  @JsonKey(name: 'receive_dt_id') String? receiveDtId,
  @JsonKey(name: 'creditnote_dt_listno') num? creditnoteDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'creditnote_dt_master_product_barcode_id') String? creditnoteDtProductBarcodeId,
  @JsonKey(name: 'creditnote_dt_master_product_barcode_code') String? creditnoteDtProductBarcodeCode,
  @JsonKey(name: 'creditnote_dt_master_product_barcode_name') String? creditnoteDtProductBarcodeName,
  @JsonKey(name: 'creditnote_dt_master_product_barcode_master_unit_id') String? creditnoteDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'creditnote_dt_master_product_barcode_master_unit_name') String? creditnoteDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'creditnote_dt_master_product_barcode_rate') String? creditnoteDtProductBarcodeRate,
  @JsonKey(name: 'creditnote_dt_price') String? creditnoteDtPrice,
  @JsonKey(name: 'receive_dt_qty') String? receiveDtQty,
  @JsonKey(name: 'creditnote_dt_qty') String? creditnoteDtQty,
  @JsonKey(name: 'creditnote_dt_discount') String? creditnoteDtDiscount,
  @JsonKey(name: 'creditnote_dt_netamnt') String? creditnoteDtNetamnt,
  @JsonKey(name: 'master_account_id') String? accountId,
  @JsonKey(name: 'creditnote_dt_vat_flag') bool? creditnoteDtVatFlag,
  @JsonKey(name: 'receive_hd_docuno') String? receiveHdDocuno,
  }) = _DocumentCreditNoteDTModel;

  factory DocumentCreditNoteDTModel.fromJson(Map<String, dynamic> json) => _$DocumentCreditNoteDTModelFromJson(json);
}
