
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_receivable_cash_model.freezed.dart';
part 'document_receivable_cash_model.g.dart';

@freezed
class DocumentReceivableCashModel with _$DocumentReceivableCashModel {
  const factory DocumentReceivableCashModel({
  @JsonKey(name: 'receivable_hd_id') String? receivableHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'receivable_hd_docudate') String? receivableHdDocudate,
  @JsonKey(name: 'receivable_hd_docuno') String? receivableHdDocuno,
  @JsonKey(name: 'receivable_status_id') num? receivableStatusId,
  @JsonKey(name: 'receivable_status_name') String? receivableStatusName,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'receivable_hd_remark') String? receivableHdRemark,
  @JsonKey(name: 'receivable_hd_cash_amount') String? receivableHdCashAmount,
  @JsonKey(name: 'receivable_hd_transfer_amount') String? receivableHdTransferAmount,
  @JsonKey(name: 'receivable_hd_credit_amount') String? receivableHdCreditAmount,
  @JsonKey(name: 'master_branch_bankbook_id') String? branchBankbookId,
  @JsonKey(name: 'master_bank_id') num? bankId,
  @JsonKey(name: 'master_bank_name') String? bankName,
  @JsonKey(name: 'master_branch_bankbook_name') String? branchBankbookName,
  @JsonKey(name: 'master_branch_bankbook_bankbookno') String? branchBankbookBankbookno,
  @JsonKey(name: 'master_branch_bankbook_branchname') String? branchBankbookBranchname,
  @JsonKey(name: 'receivable_hd_amount') String? receivableHdAmount,
  @JsonKey(name: 'receivable_hd_wht_amount') String? receivableHdWhtAmount,
  @JsonKey(name: 'receivable_hd_netamnt') String? receivableHdNetamnt,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  }) = _DocumentReceivableCashModel;

  factory DocumentReceivableCashModel.fromJson(Map<String, dynamic> json) => _$DocumentReceivableCashModelFromJson(json);
}
