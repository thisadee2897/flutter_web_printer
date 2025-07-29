// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_simplified_tax_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeaderSimplifiedTaxInvoiceModelImpl
    _$$HeaderSimplifiedTaxInvoiceModelImplFromJson(Map<String, dynamic> json) =>
        _$HeaderSimplifiedTaxInvoiceModelImpl(
          title: json['title'] as String?,
          companyLogoImageNetwork:
              json['company_logo_image_network'] as String?,
          companyName: json['company_name'] as String?,
          companyAddress: json['company_address'] as String?,
          companyPhoneNumber: json['company_phone_number'] as String?,
          companyTaxId: json['company_tax_id'] as String?,
          employeeName: json['employee_name'] as String?,
          customerName: json['customer_name'] as String?,
          tableNumber: json['table_number'] as String?,
          docuNo: json['docu_no'] as String?,
          docuDate: json['docu_date'] as String?,
          isCancel: json['is_cancel'] as bool?,
        );

Map<String, dynamic> _$$HeaderSimplifiedTaxInvoiceModelImplToJson(
        _$HeaderSimplifiedTaxInvoiceModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'company_logo_image_network': instance.companyLogoImageNetwork,
      'company_name': instance.companyName,
      'company_address': instance.companyAddress,
      'company_phone_number': instance.companyPhoneNumber,
      'company_tax_id': instance.companyTaxId,
      'employee_name': instance.employeeName,
      'customer_name': instance.customerName,
      'table_number': instance.tableNumber,
      'docu_no': instance.docuNo,
      'docu_date': instance.docuDate,
      'is_cancel': instance.isCancel,
    };
