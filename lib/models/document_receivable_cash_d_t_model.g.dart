// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_receivable_cash_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentReceivableCashDTModelImpl
    _$$DocumentReceivableCashDTModelImplFromJson(Map<String, dynamic> json) =>
        _$DocumentReceivableCashDTModelImpl(
          receivableDtId: json['receivable_dt_id'] as String?,
          receivableHdId: json['receivable_hd_id'] as String?,
          receivableDtListno: json['receivable_dt_listno'] as num?,
          saleHdId: json['sale_hd_id'] as String?,
          saleHdDocudate: json['sale_hd_docudate'] as String?,
          saleHdDocuno: json['sale_hd_docuno'] as String?,
          receivableDtInvoiceTotoalamount:
              json['receivable_dt_invoice_totoalamount'] as String?,
          receivableDtInvoiceLastamount:
              json['receivable_dt_invoice_lastamount'] as String?,
          receivableDtReceiveamount:
              json['receivable_dt_receiveamount'] as String?,
        );

Map<String, dynamic> _$$DocumentReceivableCashDTModelImplToJson(
        _$DocumentReceivableCashDTModelImpl instance) =>
    <String, dynamic>{
      'receivable_dt_id': instance.receivableDtId,
      'receivable_hd_id': instance.receivableHdId,
      'receivable_dt_listno': instance.receivableDtListno,
      'sale_hd_id': instance.saleHdId,
      'sale_hd_docudate': instance.saleHdDocudate,
      'sale_hd_docuno': instance.saleHdDocuno,
      'receivable_dt_invoice_totoalamount':
          instance.receivableDtInvoiceTotoalamount,
      'receivable_dt_invoice_lastamount':
          instance.receivableDtInvoiceLastamount,
      'receivable_dt_receiveamount': instance.receivableDtReceiveamount,
    };
