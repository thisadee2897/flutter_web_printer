// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_payment_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentPaymentDTModelImpl _$$DocumentPaymentDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentPaymentDTModelImpl(
      paymentDtId: json['payment_dt_id'] as String?,
      paymentHdId: json['payment_hd_id'] as String?,
      paymentDtListno: json['payment_dt_listno'] as num?,
      receiveHdId: json['receive_hd_id'] as String?,
      receiveHdDocudate: json['receive_hd_docudate'] as String?,
      receiveHdDocuno: json['receive_hd_docuno'] as String?,
      paymentDtInvoiceTotoalamount:
          json['payment_dt_invoice_totoalamount'] as String?,
      paymentDtPaymentamount: json['payment_dt_paymentamount'] as String?,
      paymentDtInvoiceLastamount:
          json['payment_dt_invoice_lastamount'] as String?,
    );

Map<String, dynamic> _$$DocumentPaymentDTModelImplToJson(
        _$DocumentPaymentDTModelImpl instance) =>
    <String, dynamic>{
      'payment_dt_id': instance.paymentDtId,
      'payment_hd_id': instance.paymentHdId,
      'payment_dt_listno': instance.paymentDtListno,
      'receive_hd_id': instance.receiveHdId,
      'receive_hd_docudate': instance.receiveHdDocudate,
      'receive_hd_docuno': instance.receiveHdDocuno,
      'payment_dt_invoice_totoalamount': instance.paymentDtInvoiceTotoalamount,
      'payment_dt_paymentamount': instance.paymentDtPaymentamount,
      'payment_dt_invoice_lastamount': instance.paymentDtInvoiceLastamount,
    };
