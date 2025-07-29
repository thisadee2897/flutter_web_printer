// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_purchase_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentPurchaseOrderModelImpl _$$DocumentPurchaseOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentPurchaseOrderModelImpl(
      purchaseorderHdId: json['purchaseorder_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      purchaseorderHdDocudate: json['purchaseorder_hd_docudate'] as String?,
      purchaseorderHdDocuno: json['purchaseorder_hd_docuno'] as String?,
      purchaseorderHdStatusId: json['purchaseorder_hd_status_id'] as num?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      purchaseorderHdRemark: json['purchaseorder_hd_remark'] as String?,
      vatGroupId: json['master_vat_group_id'] as num?,
      vatGroupName: json['master_vat_group_name'] as String?,
      purchaseorderHdAmount: json['purchaseorder_hd_amount'] as String?,
      purchaseorderHdTotalexcludeamnt:
          json['purchaseorder_hd_totalexcludeamnt'] as String?,
      purchaseorderHdTotalincludeamnt:
          json['purchaseorder_hd_totalincludeamnt'] as String?,
      purchaseorderHdBaseamnt: json['purchaseorder_hd_baseamnt'] as String?,
      purchaseorderHdVatamnt: json['purchaseorder_hd_vatamnt'] as String?,
      purchaseorderHdDiscountAmount:
          json['purchaseorder_hd_discount_amount'] as String?,
      purchaseorderHdNetamnt: json['purchaseorder_hd_netamnt'] as String?,
      vatRate: json['master_vat_rate'] as String?,
      fullname: json['fullname'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentPurchaseOrderModelImplToJson(
        _$DocumentPurchaseOrderModelImpl instance) =>
    <String, dynamic>{
      'purchaseorder_hd_id': instance.purchaseorderHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'purchaseorder_hd_docudate': instance.purchaseorderHdDocudate,
      'purchaseorder_hd_docuno': instance.purchaseorderHdDocuno,
      'purchaseorder_hd_status_id': instance.purchaseorderHdStatusId,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'purchaseorder_hd_remark': instance.purchaseorderHdRemark,
      'master_vat_group_id': instance.vatGroupId,
      'master_vat_group_name': instance.vatGroupName,
      'purchaseorder_hd_amount': instance.purchaseorderHdAmount,
      'purchaseorder_hd_totalexcludeamnt':
          instance.purchaseorderHdTotalexcludeamnt,
      'purchaseorder_hd_totalincludeamnt':
          instance.purchaseorderHdTotalincludeamnt,
      'purchaseorder_hd_baseamnt': instance.purchaseorderHdBaseamnt,
      'purchaseorder_hd_vatamnt': instance.purchaseorderHdVatamnt,
      'purchaseorder_hd_discount_amount':
          instance.purchaseorderHdDiscountAmount,
      'purchaseorder_hd_netamnt': instance.purchaseorderHdNetamnt,
      'master_vat_rate': instance.vatRate,
      'fullname': instance.fullname,
      'master_contact_address': instance.contactAddress,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
      'is_cancel': instance.isCancel,
    };
