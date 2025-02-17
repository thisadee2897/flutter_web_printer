// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_credit_note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentCreditNoteModelImpl _$$DocumentCreditNoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentCreditNoteModelImpl(
      creditnoteHdId: json['creditnote_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      creditnoteHdDocudate: json['creditnote_hd_docudate'] as String?,
      creditnoteHdDocuno: json['creditnote_hd_docuno'] as String?,
      creditnoteHdStatusId: json['creditnote_hd_status_id'] as num?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      creditnoteHdRemark: json['creditnote_hd_remark'] as String?,
      vatGroupId: json['master_vat_group_id'] as num?,
      creditnoteHdVatrate: json['creditnote_hd_vatrate'] as String?,
      vatGroupName: json['master_vat_group_name'] as String?,
      creditnoteHdAmount: json['creditnote_hd_amount'] as String?,
      creditnoteHdTotalexcludeamnt:
          json['creditnote_hd_totalexcludeamnt'] as String?,
      creditnoteHdTotalincludeamnt:
          json['creditnote_hd_totalincludeamnt'] as String?,
      creditnoteHdBaseamnt: json['creditnote_hd_baseamnt'] as String?,
      creditnoteHdVatamnt: json['creditnote_hd_vatamnt'] as String?,
      creditnoteHdNetamnt: json['creditnote_hd_netamnt'] as String?,
      creditnoteHdCreditday: json['creditnote_hd_creditday'] as num?,
      creditnoteHdCashAmount: json['creditnote_hd_cash_amount'] as String?,
      creditnoteHdTransferAmount:
          json['creditnote_hd_transfer_amount'] as String?,
      branchBankbookId: json['master_branch_bankbook_id'] as String?,
      bankId: json['master_bank_id'] as num?,
      bankName: json['master_bank_name'] as String?,
      branchBankbookBankbookno:
          json['master_branch_bankbook_bankbookno'] as String?,
      branchBankbookBranchname:
          json['master_branch_bankbook_branchname'] as String?,
      branchBankbookName: json['master_branch_bankbook_name'] as String?,
      vendorBankId: json['vendor_master_bank_id'] as num?,
      vendorBankName: json['vendor_master_bank_name'] as String?,
      vendorBankbookno: json['vendor_bankbookno'] as String?,
      vendorBankbookName: json['vendor_bankbook_name'] as String?,
      vendorBankbookBranchname: json['vendor_bankbook_branchname'] as String?,
      fullname: json['fullname'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
    );

Map<String, dynamic> _$$DocumentCreditNoteModelImplToJson(
        _$DocumentCreditNoteModelImpl instance) =>
    <String, dynamic>{
      'creditnote_hd_id': instance.creditnoteHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'creditnote_hd_docudate': instance.creditnoteHdDocudate,
      'creditnote_hd_docuno': instance.creditnoteHdDocuno,
      'creditnote_hd_status_id': instance.creditnoteHdStatusId,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'creditnote_hd_remark': instance.creditnoteHdRemark,
      'master_vat_group_id': instance.vatGroupId,
      'creditnote_hd_vatrate': instance.creditnoteHdVatrate,
      'master_vat_group_name': instance.vatGroupName,
      'creditnote_hd_amount': instance.creditnoteHdAmount,
      'creditnote_hd_totalexcludeamnt': instance.creditnoteHdTotalexcludeamnt,
      'creditnote_hd_totalincludeamnt': instance.creditnoteHdTotalincludeamnt,
      'creditnote_hd_baseamnt': instance.creditnoteHdBaseamnt,
      'creditnote_hd_vatamnt': instance.creditnoteHdVatamnt,
      'creditnote_hd_netamnt': instance.creditnoteHdNetamnt,
      'creditnote_hd_creditday': instance.creditnoteHdCreditday,
      'creditnote_hd_cash_amount': instance.creditnoteHdCashAmount,
      'creditnote_hd_transfer_amount': instance.creditnoteHdTransferAmount,
      'master_branch_bankbook_id': instance.branchBankbookId,
      'master_bank_id': instance.bankId,
      'master_bank_name': instance.bankName,
      'master_branch_bankbook_bankbookno': instance.branchBankbookBankbookno,
      'master_branch_bankbook_branchname': instance.branchBankbookBranchname,
      'master_branch_bankbook_name': instance.branchBankbookName,
      'vendor_master_bank_id': instance.vendorBankId,
      'vendor_master_bank_name': instance.vendorBankName,
      'vendor_bankbookno': instance.vendorBankbookno,
      'vendor_bankbook_name': instance.vendorBankbookName,
      'vendor_bankbook_branchname': instance.vendorBankbookBranchname,
      'fullname': instance.fullname,
      'master_contact_address': instance.contactAddress,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
    };
