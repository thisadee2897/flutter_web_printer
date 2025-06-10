// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_report_h_q_vat_postt_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailReportHQVatPosttSaleModelImpl
    _$$DetailReportHQVatPosttSaleModelImplFromJson(Map<String, dynamic> json) =>
        _$DetailReportHQVatPosttSaleModelImpl(
          vatPosttSaleDocudate: json['vat_postt_sale_docudate'] as String?,
          vatPosttSaleDocuno: json['vat_postt_sale_docuno'] as String?,
          vatPosttSaleArcustomerName:
              json['vat_postt_sale_arcustomer_name'] as String?,
          vatPosttSaleArcustomerTaxid:
              json['vat_postt_sale_arcustomer_taxid'] as String?,
          vatPosttSaleArcustomerBranchNumber:
              json['vat_postt_sale_arcustomer_branch_number'] as String?,
          salehdPaymenttype: json['salehd_paymenttype'] as String?,
          vatPosttSaleBaseamnt: json['vat_postt_sale_baseamnt'] as String?,
          vatPosttSaleVatamnt: json['vat_postt_sale_vatamnt'] as String?,
          vatPosttSaleSumamnt: json['vat_postt_sale_sumamnt'] as String?,
          vatPosttSaleTotalexcludeamnt:
              json['vat_postt_sale_totalexcludeamnt'] as String?,
          companyAddress: json['company_address'] as String?,
          branchs: (json['branch'] as List<dynamic>?)
              ?.map((e) => Branch2.fromJson(e as Map<String, dynamic>))
              .toList(),
          listno: (json['listno'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$DetailReportHQVatPosttSaleModelImplToJson(
        _$DetailReportHQVatPosttSaleModelImpl instance) =>
    <String, dynamic>{
      'vat_postt_sale_docudate': instance.vatPosttSaleDocudate,
      'vat_postt_sale_docuno': instance.vatPosttSaleDocuno,
      'vat_postt_sale_arcustomer_name': instance.vatPosttSaleArcustomerName,
      'vat_postt_sale_arcustomer_taxid': instance.vatPosttSaleArcustomerTaxid,
      'vat_postt_sale_arcustomer_branch_number':
          instance.vatPosttSaleArcustomerBranchNumber,
      'salehd_paymenttype': instance.salehdPaymenttype,
      'vat_postt_sale_baseamnt': instance.vatPosttSaleBaseamnt,
      'vat_postt_sale_vatamnt': instance.vatPosttSaleVatamnt,
      'vat_postt_sale_sumamnt': instance.vatPosttSaleSumamnt,
      'vat_postt_sale_totalexcludeamnt': instance.vatPosttSaleTotalexcludeamnt,
      'company_address': instance.companyAddress,
      'branch': instance.branchs,
      'listno': instance.listno,
    };
