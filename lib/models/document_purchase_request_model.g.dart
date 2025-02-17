// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_purchase_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentPurchaseRequestModelImpl _$$DocumentPurchaseRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentPurchaseRequestModelImpl(
      purchaserequestHdId: json['purchaserequest_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      purchaserequestHdDocudate: json['purchaserequest_hd_docudate'] as String?,
      purchaserequestHdDocuno: json['purchaserequest_hd_docuno'] as String?,
      purchaserequestHdStatusId: json['purchaserequest_hd_status_id'] as num?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      purchaserequestHdRemark: json['purchaserequest_hd_remark'] as String?,
      purchaserequestHdAmount: json['purchaserequest_hd_amount'] as String?,
      purchaserequestHdDiscountamount:
          json['purchaserequest_hd_discountamount'] as String?,
      purchaserequestHdNetamount:
          json['purchaserequest_hd_netamount'] as String?,
      fullname: json['fullname'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
    );

Map<String, dynamic> _$$DocumentPurchaseRequestModelImplToJson(
        _$DocumentPurchaseRequestModelImpl instance) =>
    <String, dynamic>{
      'purchaserequest_hd_id': instance.purchaserequestHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'purchaserequest_hd_docudate': instance.purchaserequestHdDocudate,
      'purchaserequest_hd_docuno': instance.purchaserequestHdDocuno,
      'purchaserequest_hd_status_id': instance.purchaserequestHdStatusId,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'purchaserequest_hd_remark': instance.purchaserequestHdRemark,
      'purchaserequest_hd_amount': instance.purchaserequestHdAmount,
      'purchaserequest_hd_discountamount':
          instance.purchaserequestHdDiscountamount,
      'purchaserequest_hd_netamount': instance.purchaserequestHdNetamount,
      'fullname': instance.fullname,
      'master_contact_address': instance.contactAddress,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
    };
