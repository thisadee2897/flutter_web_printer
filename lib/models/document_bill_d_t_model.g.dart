// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_bill_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentBillDTModelImpl _$$DocumentBillDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentBillDTModelImpl(
      billDtId: json['bill_dt_id'] as String?,
      billHdId: json['bill_hd_id'] as String?,
      billDtListno: json['bill_dt_listno'] as num?,
      saleHdId: json['sale_hd_id'] as String?,
      saleHdDocudate: json['sale_hd_docudate'] as String?,
      saleHdDocuno: json['sale_hd_docuno'] as String?,
      billDtInvoiceTotoalamount:
          json['bill_dt_invoice_totoalamount'] as String?,
      billDtInvoiceLastamount: json['bill_dt_invoice_lastamount'] as String?,
      billDtAmount: json['bill_dt_amount'] as String?,
    );

Map<String, dynamic> _$$DocumentBillDTModelImplToJson(
        _$DocumentBillDTModelImpl instance) =>
    <String, dynamic>{
      'bill_dt_id': instance.billDtId,
      'bill_hd_id': instance.billHdId,
      'bill_dt_listno': instance.billDtListno,
      'sale_hd_id': instance.saleHdId,
      'sale_hd_docudate': instance.saleHdDocudate,
      'sale_hd_docuno': instance.saleHdDocuno,
      'bill_dt_invoice_totoalamount': instance.billDtInvoiceTotoalamount,
      'bill_dt_invoice_lastamount': instance.billDtInvoiceLastamount,
      'bill_dt_amount': instance.billDtAmount,
    };
