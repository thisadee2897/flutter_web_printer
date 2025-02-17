// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentPaymentModelImpl _$$DocumentPaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentPaymentModelImpl(
      paymentHdId: json['payment_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchName: json['master_branch_name'] as String?,
      paymentHdDocudate: json['payment_hd_docudate'] as String?,
      paymentHdDocuno: json['payment_hd_docuno'] as String?,
      paymentStatusId: json['payment_status_id'] as num?,
      paymentStatusName: json['payment_status_name'] as String?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      paymentHdRemark: json['payment_hd_remark'] as String?,
      paymentHdAmount: json['payment_hd_amount'] as String?,
      paymentHdCashAmount: json['payment_hd_cash_amount'] as String?,
      paymentHdTransferAmount: json['payment_hd_transfer_amount'] as String?,
      branchBankbookId: json['master_branch_bankbook_id'] as String?,
      bankId: json['master_bank_id'] as num?,
      bankName: json['master_bank_name'] as String?,
      branchBankbookName: json['master_branch_bankbook_name'] as String?,
      branchBankbookBankbookno:
          json['master_branch_bankbook_bankbookno'] as String?,
      branchBankbookBranchname:
          json['master_branch_bankbook_branchname'] as String?,
      vendorBankId: json['vendor_master_bank_id'] as num?,
      vendorBankName: json['vendor_master_bank_name'] as String?,
      vendorBankbookno: json['vendor_bankbookno'] as String?,
      vendorBankbookName: json['vendor_bankbook_name'] as String?,
      vendorBankbookBranchname: json['vendor_bankbook_branchname'] as String?,
      fullname: json['fullname'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
      paymentHdNetamnt: json['payment_hd_netamnt'] as String?,
    );

Map<String, dynamic> _$$DocumentPaymentModelImplToJson(
        _$DocumentPaymentModelImpl instance) =>
    <String, dynamic>{
      'payment_hd_id': instance.paymentHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_name': instance.branchName,
      'payment_hd_docudate': instance.paymentHdDocudate,
      'payment_hd_docuno': instance.paymentHdDocuno,
      'payment_status_id': instance.paymentStatusId,
      'payment_status_name': instance.paymentStatusName,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'payment_hd_remark': instance.paymentHdRemark,
      'payment_hd_amount': instance.paymentHdAmount,
      'payment_hd_cash_amount': instance.paymentHdCashAmount,
      'payment_hd_transfer_amount': instance.paymentHdTransferAmount,
      'master_branch_bankbook_id': instance.branchBankbookId,
      'master_bank_id': instance.bankId,
      'master_bank_name': instance.bankName,
      'master_branch_bankbook_name': instance.branchBankbookName,
      'master_branch_bankbook_bankbookno': instance.branchBankbookBankbookno,
      'master_branch_bankbook_branchname': instance.branchBankbookBranchname,
      'vendor_master_bank_id': instance.vendorBankId,
      'vendor_master_bank_name': instance.vendorBankName,
      'vendor_bankbookno': instance.vendorBankbookno,
      'vendor_bankbook_name': instance.vendorBankbookName,
      'vendor_bankbook_branchname': instance.vendorBankbookBranchname,
      'fullname': instance.fullname,
      'master_contact_address': instance.contactAddress,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
      'payment_hd_netamnt': instance.paymentHdNetamnt,
    };
