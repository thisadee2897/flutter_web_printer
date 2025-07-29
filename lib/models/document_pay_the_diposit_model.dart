
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_pay_the_diposit_model.freezed.dart';
part 'document_pay_the_diposit_model.g.dart';

@freezed
class DocumentPayTheDipositModel with _$DocumentPayTheDipositModel {
  const factory DocumentPayTheDipositModel({
  @JsonKey(name: 'pay_deposit_id') String? payDepositId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'pay_deposit_docudate') String? payDepositDocudate,
  @JsonKey(name: 'pay_deposit_docuno') String? payDepositDocuno,
  @JsonKey(name: 'pay_deposit_status_id') num? payDepositStatusId,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'pay_deposit_remark') String? payDepositRemark,
  @JsonKey(name: 'master_vat_group_id') num? vatGroupId,
  @JsonKey(name: 'master_vat_rate') String? vatRate,
  @JsonKey(name: 'master_branch_bankbook_id') String? branchBankbookId,
  @JsonKey(name: 'vendor_master_bank_id') num? vendorBankId,
  @JsonKey(name: 'vendor_master_bank_name') String? vendorBankName,
  @JsonKey(name: 'vendor_bankbookno') String? vendorBankbookno,
  @JsonKey(name: 'vendor_bankbook_name') String? vendorBankbookName,
  @JsonKey(name: 'vendor_bank_branchname') String? vendorBankBranchname,
  @JsonKey(name: 'pay_deposit_amount') String? payDepositAmount,
  @JsonKey(name: 'pay_deposit_baseamnt') String? payDepositBaseamnt,
  @JsonKey(name: 'pay_deposit_vatamnt') String? payDepositVatamnt,
  @JsonKey(name: 'pay_deposit_netamnt') String? payDepositNetamnt,
  @JsonKey(name: 'pay_deposit_cash_amount') String? payDepositCashAmount,
  @JsonKey(name: 'pay_deposit_transfer_amount') String? payDepositTransferAmount,
  @JsonKey(name: 'pay_deposit_balance_amount') String? payDepositBalanceAmount,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_vat_group_name') String? vatGroupName,
  @JsonKey(name: 'master_branch_bankbook_bankbookno') String? branchBankbookBankbookno,
  @JsonKey(name: 'master_branch_bankbook_branchname') String? branchBankbookBranchname,
  @JsonKey(name: 'master_branch_bankbook_name') String? branchBankbookName,
  @JsonKey(name: 'master_bank_name') String? bankName,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentPayTheDipositModel;

  factory DocumentPayTheDipositModel.fromJson(Map<String, dynamic> json) => _$DocumentPayTheDipositModelFromJson(json);
}
