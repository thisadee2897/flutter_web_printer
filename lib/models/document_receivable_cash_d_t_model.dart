
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_receivable_cash_d_t_model.freezed.dart';
part 'document_receivable_cash_d_t_model.g.dart';

@freezed
class DocumentReceivableCashDTModel with _$DocumentReceivableCashDTModel {
  const factory DocumentReceivableCashDTModel({
  @JsonKey(name: 'receivable_dt_id') String? receivableDtId,
  @JsonKey(name: 'receivable_hd_id') String? receivableHdId,
  @JsonKey(name: 'receivable_dt_listno') num? receivableDtListno,
  @JsonKey(name: 'sale_hd_id') String? saleHdId,
  @JsonKey(name: 'sale_hd_docudate') String? saleHdDocudate,
  @JsonKey(name: 'sale_hd_docuno') String? saleHdDocuno,
  @JsonKey(name: 'receivable_dt_invoice_totoalamount') String? receivableDtInvoiceTotoalamount,
  @JsonKey(name: 'receivable_dt_invoice_lastamount') String? receivableDtInvoiceLastamount,
  @JsonKey(name: 'receivable_dt_receiveamount') String? receivableDtReceiveamount,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentReceivableCashDTModel;

  factory DocumentReceivableCashDTModel.fromJson(Map<String, dynamic> json) => _$DocumentReceivableCashDTModelFromJson(json);
}
