
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_payment_d_t_model.freezed.dart';
part 'document_payment_d_t_model.g.dart';

@freezed
class DocumentPaymentDTModel with _$DocumentPaymentDTModel {
  const factory DocumentPaymentDTModel({
  @JsonKey(name: 'payment_dt_id') String? paymentDtId,
  @JsonKey(name: 'payment_hd_id') String? paymentHdId,
  @JsonKey(name: 'payment_dt_listno') num? paymentDtListno,
  @JsonKey(name: 'receive_hd_id') String? receiveHdId,
  @JsonKey(name: 'receive_hd_docudate') String? receiveHdDocudate,
  @JsonKey(name: 'receive_hd_docuno') String? receiveHdDocuno,
  @JsonKey(name: 'payment_dt_invoice_totoalamount') String? paymentDtInvoiceTotoalamount,
  @JsonKey(name: 'payment_dt_paymentamount') String? paymentDtPaymentamount,
  @JsonKey(name: 'payment_dt_invoice_lastamount') String? paymentDtInvoiceLastamount,
  }) = _DocumentPaymentDTModel;

  factory DocumentPaymentDTModel.fromJson(Map<String, dynamic> json) => _$DocumentPaymentDTModelFromJson(json);
}
