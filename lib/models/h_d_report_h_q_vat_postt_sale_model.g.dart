// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'h_d_report_h_q_vat_postt_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HDReportHQVatPosttSaleModelImpl _$$HDReportHQVatPosttSaleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HDReportHQVatPosttSaleModelImpl(
      companyName: json['master_company_name'] as String?,
      companyTaxid: json['master_company_taxid'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      branchsName: (json['branchs_name'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HDReportHQVatPosttSaleModelImplToJson(
        _$HDReportHQVatPosttSaleModelImpl instance) =>
    <String, dynamic>{
      'master_company_name': instance.companyName,
      'master_company_taxid': instance.companyTaxid,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'branchs_name': instance.branchsName,
    };
