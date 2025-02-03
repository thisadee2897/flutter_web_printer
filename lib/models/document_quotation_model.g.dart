// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_quotation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentQuotationModelImpl _$$DocumentQuotationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentQuotationModelImpl(
      quotationHdId: json['quotation_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      quotationHdDocudate: json['quotation_hd_docudate'] as String?,
      quotationHdDocuno: json['quotation_hd_docuno'] as String?,
      quotationHdStatusId: json['quotation_hd_status_id'] as num?,
      quotationHdStatusName: json['quotation_hd_status_name'] as String?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      quotationHdPersonName: json['quotation_hd_person_name'] as String?,
      quotationHdPersonTel: json['quotation_hd_person_tel'] as String?,
      quotationHdRemark: json['quotation_hd_remark'] as String?,
      quotationHdAmount: json['quotation_hd_amount'] as String?,
      quotationHdDiscountamount: json['quotation_hd_discountamount'] as String?,
      quotationHdNetamount: json['quotation_hd_netamount'] as String?,
      fullname: json['fullname'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactDistrictId: json['master_contact_district_id'] as String?,
      contactPrefectureId: json['master_contact_prefecture_id'] as String?,
      contactProvinceId: json['master_contact_province_id'] as String?,
      contactPostcodeId: json['master_contact_postcode_id'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
    );

Map<String, dynamic> _$$DocumentQuotationModelImplToJson(
        _$DocumentQuotationModelImpl instance) =>
    <String, dynamic>{
      'quotation_hd_id': instance.quotationHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'quotation_hd_docudate': instance.quotationHdDocudate,
      'quotation_hd_docuno': instance.quotationHdDocuno,
      'quotation_hd_status_id': instance.quotationHdStatusId,
      'quotation_hd_status_name': instance.quotationHdStatusName,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'quotation_hd_person_name': instance.quotationHdPersonName,
      'quotation_hd_person_tel': instance.quotationHdPersonTel,
      'quotation_hd_remark': instance.quotationHdRemark,
      'quotation_hd_amount': instance.quotationHdAmount,
      'quotation_hd_discountamount': instance.quotationHdDiscountamount,
      'quotation_hd_netamount': instance.quotationHdNetamount,
      'fullname': instance.fullname,
      'master_contact_address': instance.contactAddress,
      'master_contact_district_id': instance.contactDistrictId,
      'master_contact_prefecture_id': instance.contactPrefectureId,
      'master_contact_province_id': instance.contactProvinceId,
      'master_contact_postcode_id': instance.contactPostcodeId,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
    };
