// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'footer_full_tax_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FooterFullTaxInvoiceModelImpl _$$FooterFullTaxInvoiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FooterFullTaxInvoiceModelImpl(
      paymentMethod: json['payment_method'] as String?,
      vatExempt: json['vat_exempt'] as num?,
      vatIncluded: json['vat_included'] as num?,
      vatAmount: json['vat_amount'] as num?,
      withholdingTax: json['withholding_tax'] as num?,
      netAmount: json['net_amount'] as num?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$FooterFullTaxInvoiceModelImplToJson(
        _$FooterFullTaxInvoiceModelImpl instance) =>
    <String, dynamic>{
      'payment_method': instance.paymentMethod,
      'vat_exempt': instance.vatExempt,
      'vat_included': instance.vatIncluded,
      'vat_amount': instance.vatAmount,
      'withholding_tax': instance.withholdingTax,
      'net_amount': instance.netAmount,
      'is_cancel': instance.isCancel,
    };
