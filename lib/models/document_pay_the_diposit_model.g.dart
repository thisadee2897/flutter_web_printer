// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_pay_the_diposit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentPayTheDipositModelImpl _$$DocumentPayTheDipositModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentPayTheDipositModelImpl(
      payDepositId: json['pay_deposit_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      payDepositDocudate: json['pay_deposit_docudate'] as String?,
      payDepositDocuno: json['pay_deposit_docuno'] as String?,
      payDepositStatusId: json['pay_deposit_status_id'] as num?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      payDepositRemark: json['pay_deposit_remark'] as String?,
      vatGroupId: json['master_vat_group_id'] as num?,
      vatRate: json['master_vat_rate'] as String?,
      branchBankbookId: json['master_branch_bankbook_id'] as String?,
      vendorBankId: json['vendor_master_bank_id'] as num?,
      vendorBankName: json['vendor_master_bank_name'] as String?,
      vendorBankbookno: json['vendor_bankbookno'] as String?,
      vendorBankbookName: json['vendor_bankbook_name'] as String?,
      vendorBankBranchname: json['vendor_bank_branchname'] as String?,
      payDepositAmount: json['pay_deposit_amount'] as String?,
      payDepositBaseamnt: json['pay_deposit_baseamnt'] as String?,
      payDepositVatamnt: json['pay_deposit_vatamnt'] as String?,
      payDepositNetamnt: json['pay_deposit_netamnt'] as String?,
      payDepositCashAmount: json['pay_deposit_cash_amount'] as String?,
      payDepositTransferAmount: json['pay_deposit_transfer_amount'] as String?,
      payDepositBalanceAmount: json['pay_deposit_balance_amount'] as String?,
      fullname: json['fullname'] as String?,
      vatGroupName: json['master_vat_group_name'] as String?,
      branchBankbookBankbookno:
          json['master_branch_bankbook_bankbookno'] as String?,
      branchBankbookBranchname:
          json['master_branch_bankbook_branchname'] as String?,
      branchBankbookName: json['master_branch_bankbook_name'] as String?,
      bankName: json['master_bank_name'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentPayTheDipositModelImplToJson(
        _$DocumentPayTheDipositModelImpl instance) =>
    <String, dynamic>{
      'pay_deposit_id': instance.payDepositId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'pay_deposit_docudate': instance.payDepositDocudate,
      'pay_deposit_docuno': instance.payDepositDocuno,
      'pay_deposit_status_id': instance.payDepositStatusId,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'pay_deposit_remark': instance.payDepositRemark,
      'master_vat_group_id': instance.vatGroupId,
      'master_vat_rate': instance.vatRate,
      'master_branch_bankbook_id': instance.branchBankbookId,
      'vendor_master_bank_id': instance.vendorBankId,
      'vendor_master_bank_name': instance.vendorBankName,
      'vendor_bankbookno': instance.vendorBankbookno,
      'vendor_bankbook_name': instance.vendorBankbookName,
      'vendor_bank_branchname': instance.vendorBankBranchname,
      'pay_deposit_amount': instance.payDepositAmount,
      'pay_deposit_baseamnt': instance.payDepositBaseamnt,
      'pay_deposit_vatamnt': instance.payDepositVatamnt,
      'pay_deposit_netamnt': instance.payDepositNetamnt,
      'pay_deposit_cash_amount': instance.payDepositCashAmount,
      'pay_deposit_transfer_amount': instance.payDepositTransferAmount,
      'pay_deposit_balance_amount': instance.payDepositBalanceAmount,
      'fullname': instance.fullname,
      'master_vat_group_name': instance.vatGroupName,
      'master_branch_bankbook_bankbookno': instance.branchBankbookBankbookno,
      'master_branch_bankbook_branchname': instance.branchBankbookBranchname,
      'master_branch_bankbook_name': instance.branchBankbookName,
      'master_bank_name': instance.bankName,
      'master_contact_address': instance.contactAddress,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
      'is_cancel': instance.isCancel,
    };
