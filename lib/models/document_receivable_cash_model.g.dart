// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_receivable_cash_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentReceivableCashModelImpl _$$DocumentReceivableCashModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentReceivableCashModelImpl(
      receivableHdId: json['receivable_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchName: json['master_branch_name'] as String?,
      receivableHdDocudate: json['receivable_hd_docudate'] as String?,
      receivableHdDocuno: json['receivable_hd_docuno'] as String?,
      receivableStatusId: json['receivable_status_id'] as num?,
      receivableStatusName: json['receivable_status_name'] as String?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      receivableHdRemark: json['receivable_hd_remark'] as String?,
      receivableHdCashAmount: json['receivable_hd_cash_amount'] as String?,
      receivableHdTransferAmount:
          json['receivable_hd_transfer_amount'] as String?,
      receivableHdCreditAmount: json['receivable_hd_credit_amount'] as String?,
      branchBankbookId: json['master_branch_bankbook_id'] as String?,
      bankId: json['master_bank_id'] as num?,
      bankName: json['master_bank_name'] as String?,
      branchBankbookName: json['master_branch_bankbook_name'] as String?,
      branchBankbookBankbookno:
          json['master_branch_bankbook_bankbookno'] as String?,
      branchBankbookBranchname:
          json['master_branch_bankbook_branchname'] as String?,
      receivableHdAmount: json['receivable_hd_amount'] as String?,
      receivableHdWhtAmount: json['receivable_hd_wht_amount'] as String?,
      receivableHdNetamnt: json['receivable_hd_netamnt'] as String?,
      fullname: json['fullname'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentReceivableCashModelImplToJson(
        _$DocumentReceivableCashModelImpl instance) =>
    <String, dynamic>{
      'receivable_hd_id': instance.receivableHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_name': instance.branchName,
      'receivable_hd_docudate': instance.receivableHdDocudate,
      'receivable_hd_docuno': instance.receivableHdDocuno,
      'receivable_status_id': instance.receivableStatusId,
      'receivable_status_name': instance.receivableStatusName,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'receivable_hd_remark': instance.receivableHdRemark,
      'receivable_hd_cash_amount': instance.receivableHdCashAmount,
      'receivable_hd_transfer_amount': instance.receivableHdTransferAmount,
      'receivable_hd_credit_amount': instance.receivableHdCreditAmount,
      'master_branch_bankbook_id': instance.branchBankbookId,
      'master_bank_id': instance.bankId,
      'master_bank_name': instance.bankName,
      'master_branch_bankbook_name': instance.branchBankbookName,
      'master_branch_bankbook_bankbookno': instance.branchBankbookBankbookno,
      'master_branch_bankbook_branchname': instance.branchBankbookBranchname,
      'receivable_hd_amount': instance.receivableHdAmount,
      'receivable_hd_wht_amount': instance.receivableHdWhtAmount,
      'receivable_hd_netamnt': instance.receivableHdNetamnt,
      'fullname': instance.fullname,
      'master_contact_address': instance.contactAddress,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
      'is_cancel': instance.isCancel,
    };
