// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_full_tax_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeaderFullTaxInvoiceModelImpl _$$HeaderFullTaxInvoiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HeaderFullTaxInvoiceModelImpl(
      title: json['title'] as String?,
      companyLogoImageNetwork: json['company_logo_image_network'] as String?,
      companyName: json['company_name'] as String?,
      companyAddress: json['company_address'] as String?,
      companyPhoneNumber: json['company_phone_number'] as String?,
      companyTaxId: json['company_tax_id'] as String?,
      customerName: json['customer_name'] as String?,
      customerAddress: json['customer_address'] as String?,
      customerPhoneNumber: json['customer_phone_number'] as String?,
      customerTaxId: json['customer_tax_id'] as String?,
      docuNo: json['docu_no'] as String?,
      docuDate: json['docu_date'] as String?,
      branchs: (json['branchs'] as List<dynamic>?)
          ?.map((e) => BranchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$HeaderFullTaxInvoiceModelImplToJson(
        _$HeaderFullTaxInvoiceModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'company_logo_image_network': instance.companyLogoImageNetwork,
      'company_name': instance.companyName,
      'company_address': instance.companyAddress,
      'company_phone_number': instance.companyPhoneNumber,
      'company_tax_id': instance.companyTaxId,
      'customer_name': instance.customerName,
      'customer_address': instance.customerAddress,
      'customer_phone_number': instance.customerPhoneNumber,
      'customer_tax_id': instance.customerTaxId,
      'docu_no': instance.docuNo,
      'docu_date': instance.docuDate,
      'branchs': instance.branchs,
      'is_cancel': instance.isCancel,
    };
