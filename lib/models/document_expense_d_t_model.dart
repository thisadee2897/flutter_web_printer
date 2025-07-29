
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_expense_d_t_model.freezed.dart';
part 'document_expense_d_t_model.g.dart';

@freezed
class DocumentExpenseDTModel with _$DocumentExpenseDTModel {
  const factory DocumentExpenseDTModel({
  @JsonKey(name: 'expense_dt_id') String? expenseDtId,
  @JsonKey(name: 'expense_hd_id') String? expenseHdId,
  @JsonKey(name: 'expense_dt_listno') num? expenseDtListno,
  @JsonKey(name: 'master_product_id') String? productId,
  @JsonKey(name: 'master_product_code') String? productCode,
  @JsonKey(name: 'master_unit_id') String? unitId,
  @JsonKey(name: 'expense_dt_master_product_barcode_id') String? expenseDtProductBarcodeId,
  @JsonKey(name: 'expense_dt_master_product_barcode_code') String? expenseDtProductBarcodeCode,
  @JsonKey(name: 'master_product_barcode_name') String? productBarcodeName,
  @JsonKey(name: 'expense_dt_master_product_barcode_master_unit_id') String? expenseDtProductBarcodeMasterUnitId,
  @JsonKey(name: 'expense_dt_master_product_barcode_master_unit_name') String? expenseDtProductBarcodeMasterUnitName,
  @JsonKey(name: 'expense_dt_master_product_barcode_rate') String? expenseDtProductBarcodeRate,
  @JsonKey(name: 'expense_dt_vat_flag') bool? expenseDtVatFlag,
  @JsonKey(name: 'master_account_id') String? accountId,
  @JsonKey(name: 'expense_dt_price') String? expenseDtPrice,
  @JsonKey(name: 'expense_dt_qty') String? expenseDtQty,
  @JsonKey(name: 'expense_dt_discount') String? expenseDtDiscount,
  @JsonKey(name: 'expense_dt_netamnt') String? expenseDtNetamnt,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentExpenseDTModel;

  factory DocumentExpenseDTModel.fromJson(Map<String, dynamic> json) => _$DocumentExpenseDTModelFromJson(json);
}
