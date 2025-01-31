// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_product_return_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentProductReturnModelImpl _$$DocumentProductReturnModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentProductReturnModelImpl(
      returnproductHdId: json['returnproduct_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      returnproductHdDocudate: json['returnproduct_hd_docudate'] as String?,
      returnproductHdDocuno: json['returnproduct_hd_docuno'] as String?,
      returnproductHdStatusId: json['returnproduct_hd_status_id'] as num?,
      returnproductHdStatusName:
          json['returnproduct_hd_status_name'] as String?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactDistrictId: json['master_contact_district_id'] as String?,
      contactPrefectureId: json['master_contact_prefecture_id'] as String?,
      contactProvinceId: json['master_contact_province_id'] as String?,
      contactPostcodeId: json['master_contact_postcode_id'] as String?,
      returnproductHdRemark: json['returnproduct_hd_remark'] as String?,
      vatGroupId: json['master_vat_group_id'] as num?,
      returnproductHdTypeId: json['returnproduct_hd_type_id'] as num?,
      returnproductHdCreditday: json['returnproduct_hd_creditday'] as num?,
      returnproductHdAmount: json['returnproduct_hd_amount'] as String?,
      returnproductHdTotalexcludeamnt:
          json['returnproduct_hd_totalexcludeamnt'] as String?,
      returnproductHdTotalincludeamnt:
          json['returnproduct_hd_totalincludeamnt'] as String?,
      returnproductHdBaseamnt: json['returnproduct_hd_baseamnt'] as String?,
      returnproductHdVatamnt: json['returnproduct_hd_vatamnt'] as String?,
      returnproductHdNetamnt: json['returnproduct_hd_netamnt'] as String?,
      returnproductHdCashAmount:
          json['returnproduct_hd_cash_amount'] as String?,
      returnproductHdTransferAmount:
          json['returnproduct_hd_transfer_amount'] as String?,
      fullname: json['fullname'] as String?,
      returnproductHdVatrate: json['returnproduct_hd_vatrate'] as String?,
      vatGroupName: json['master_vat_group_name'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
    );

Map<String, dynamic> _$$DocumentProductReturnModelImplToJson(
        _$DocumentProductReturnModelImpl instance) =>
    <String, dynamic>{
      'returnproduct_hd_id': instance.returnproductHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'returnproduct_hd_docudate': instance.returnproductHdDocudate,
      'returnproduct_hd_docuno': instance.returnproductHdDocuno,
      'returnproduct_hd_status_id': instance.returnproductHdStatusId,
      'returnproduct_hd_status_name': instance.returnproductHdStatusName,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'master_contact_address': instance.contactAddress,
      'master_contact_district_id': instance.contactDistrictId,
      'master_contact_prefecture_id': instance.contactPrefectureId,
      'master_contact_province_id': instance.contactProvinceId,
      'master_contact_postcode_id': instance.contactPostcodeId,
      'returnproduct_hd_remark': instance.returnproductHdRemark,
      'master_vat_group_id': instance.vatGroupId,
      'returnproduct_hd_type_id': instance.returnproductHdTypeId,
      'returnproduct_hd_creditday': instance.returnproductHdCreditday,
      'returnproduct_hd_amount': instance.returnproductHdAmount,
      'returnproduct_hd_totalexcludeamnt':
          instance.returnproductHdTotalexcludeamnt,
      'returnproduct_hd_totalincludeamnt':
          instance.returnproductHdTotalincludeamnt,
      'returnproduct_hd_baseamnt': instance.returnproductHdBaseamnt,
      'returnproduct_hd_vatamnt': instance.returnproductHdVatamnt,
      'returnproduct_hd_netamnt': instance.returnproductHdNetamnt,
      'returnproduct_hd_cash_amount': instance.returnproductHdCashAmount,
      'returnproduct_hd_transfer_amount':
          instance.returnproductHdTransferAmount,
      'fullname': instance.fullname,
      'returnproduct_hd_vatrate': instance.returnproductHdVatrate,
      'master_vat_group_name': instance.vatGroupName,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
    };
