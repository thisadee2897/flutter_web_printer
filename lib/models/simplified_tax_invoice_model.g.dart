// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_tax_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedTaxInvoiceModelImpl _$$SimplifiedTaxInvoiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SimplifiedTaxInvoiceModelImpl(
      header: json['header'] == null
          ? null
          : HeaderSimplifiedTaxInvoiceModel.fromJson(
              json['header'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map(
              (e) => DetailTaxInvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      footer: json['footer'] == null
          ? null
          : FooterSimplifiedTaxInvoiceModel.fromJson(
              json['footer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SimplifiedTaxInvoiceModelImplToJson(
        _$SimplifiedTaxInvoiceModelImpl instance) =>
    <String, dynamic>{
      'header': instance.header,
      'details': instance.details,
      'footer': instance.footer,
    };
