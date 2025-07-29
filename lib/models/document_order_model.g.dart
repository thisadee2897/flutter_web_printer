// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentOrderModelImpl _$$DocumentOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentOrderModelImpl(
      orderHdId: json['order_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      orderHdDocudate: json['order_hd_docudate'] as String?,
      orderHdDocuno: json['order_hd_docuno'] as String?,
      orderHdStatusId: json['order_hd_status_id'] as num?,
      orderHdStatusName: json['order_hd_status_name'] as String?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      orderHdPersonName: json['order_hd_person_name'] as String?,
      orderHdPersonTel: json['order_hd_person_tel'] as String?,
      orderHdRemark: json['order_hd_remark'] as String?,
      orderHdAmount: json['order_hd_amount'] as String?,
      orderHdDiscountamount: json['order_hd_discountamount'] as String?,
      orderHdNetamount: json['order_hd_netamount'] as String?,
      fullname: json['fullname'] as String?,
      vatGroupId: json['master_vat_group_id'] as num?,
      orderHdVatrate: json['order_hd_vatrate'] as String?,
      orderHdTotalexcludeamnt: json['order_hd_totalexcludeamnt'] as String?,
      orderHdTotalincludeamnt: json['order_hd_totalincludeamnt'] as String?,
      orderHdBaseamnt: json['order_hd_baseamnt'] as String?,
      orderHdVatamnt: json['order_hd_vatamnt'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactDistrictId: json['master_contact_district_id'] as String?,
      contactPrefectureId: json['master_contact_prefecture_id'] as String?,
      contactProvinceId: json['master_contact_province_id'] as String?,
      contactPostcodeId: json['master_contact_postcode_id'] as String?,
      vatGroupName: json['master_vat_group_name'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentOrderModelImplToJson(
        _$DocumentOrderModelImpl instance) =>
    <String, dynamic>{
      'order_hd_id': instance.orderHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'order_hd_docudate': instance.orderHdDocudate,
      'order_hd_docuno': instance.orderHdDocuno,
      'order_hd_status_id': instance.orderHdStatusId,
      'order_hd_status_name': instance.orderHdStatusName,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'order_hd_person_name': instance.orderHdPersonName,
      'order_hd_person_tel': instance.orderHdPersonTel,
      'order_hd_remark': instance.orderHdRemark,
      'order_hd_amount': instance.orderHdAmount,
      'order_hd_discountamount': instance.orderHdDiscountamount,
      'order_hd_netamount': instance.orderHdNetamount,
      'fullname': instance.fullname,
      'master_vat_group_id': instance.vatGroupId,
      'order_hd_vatrate': instance.orderHdVatrate,
      'order_hd_totalexcludeamnt': instance.orderHdTotalexcludeamnt,
      'order_hd_totalincludeamnt': instance.orderHdTotalincludeamnt,
      'order_hd_baseamnt': instance.orderHdBaseamnt,
      'order_hd_vatamnt': instance.orderHdVatamnt,
      'master_contact_address': instance.contactAddress,
      'master_contact_district_id': instance.contactDistrictId,
      'master_contact_prefecture_id': instance.contactPrefectureId,
      'master_contact_province_id': instance.contactProvinceId,
      'master_contact_postcode_id': instance.contactPostcodeId,
      'master_vat_group_name': instance.vatGroupName,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
      'is_cancel': instance.isCancel,
    };
