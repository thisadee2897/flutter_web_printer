// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentBillModelImpl _$$DocumentBillModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentBillModelImpl(
      billHdId: json['bill_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchName: json['master_branch_name'] as String?,
      billHdDocudate: json['bill_hd_docudate'] as String?,
      billHdDocuno: json['bill_hd_docuno'] as String?,
      billHdStatusId: json['bill_hd_status_id'] as num?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      billHdDueDate: json['bill_hd_due_date'] as String?,
      billHdRemark: json['bill_hd_remark'] as String?,
      billHdAmount: json['bill_hd_amount'] as String?,
      fullname: json['fullname'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentBillModelImplToJson(
        _$DocumentBillModelImpl instance) =>
    <String, dynamic>{
      'bill_hd_id': instance.billHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_name': instance.branchName,
      'bill_hd_docudate': instance.billHdDocudate,
      'bill_hd_docuno': instance.billHdDocuno,
      'bill_hd_status_id': instance.billHdStatusId,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'bill_hd_due_date': instance.billHdDueDate,
      'bill_hd_remark': instance.billHdRemark,
      'bill_hd_amount': instance.billHdAmount,
      'fullname': instance.fullname,
      'master_contact_address': instance.contactAddress,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
      'is_cancel': instance.isCancel,
    };
