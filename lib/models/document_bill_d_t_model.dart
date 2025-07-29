
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_bill_d_t_model.freezed.dart';
part 'document_bill_d_t_model.g.dart';

@freezed
class DocumentBillDTModel with _$DocumentBillDTModel {
  const factory DocumentBillDTModel({
  @JsonKey(name: 'bill_dt_id') String? billDtId,
  @JsonKey(name: 'bill_hd_id') String? billHdId,
  @JsonKey(name: 'bill_dt_listno') num? billDtListno,
  @JsonKey(name: 'sale_hd_id') String? saleHdId,
  @JsonKey(name: 'sale_hd_docudate') String? saleHdDocudate,
  @JsonKey(name: 'sale_hd_docuno') String? saleHdDocuno,
  @JsonKey(name: 'bill_dt_invoice_totoalamount') String? billDtInvoiceTotoalamount,
  @JsonKey(name: 'bill_dt_invoice_lastamount') String? billDtInvoiceLastamount,
  @JsonKey(name: 'bill_dt_amount') String? billDtAmount,
  @JsonKey(name: 'is_cancel') bool? isCancel,

  }) = _DocumentBillDTModel;

  factory DocumentBillDTModel.fromJson(Map<String, dynamic> json) => _$DocumentBillDTModelFromJson(json);
}
