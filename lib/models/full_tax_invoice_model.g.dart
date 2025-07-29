// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_tax_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FullTaxInvoiceModelImpl _$$FullTaxInvoiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FullTaxInvoiceModelImpl(
      original: json['original'] as bool?,
      copy: json['copy'] as bool?,
      header: json['header'] == null
          ? null
          : HeaderFullTaxInvoiceModel.fromJson(
              json['header'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map(
              (e) => DetailTaxInvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      footer: json['footer'] == null
          ? null
          : FooterFullTaxInvoiceModel.fromJson(
              json['footer'] as Map<String, dynamic>),
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$FullTaxInvoiceModelImplToJson(
        _$FullTaxInvoiceModelImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
      'copy': instance.copy,
      'header': instance.header,
      'details': instance.details,
      'footer': instance.footer,
      'is_cancel': instance.isCancel,
    };
