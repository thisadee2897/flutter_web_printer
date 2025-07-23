
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_expense_model.freezed.dart';
part 'document_expense_model.g.dart';

@freezed
class DocumentExpenseModel with _$DocumentExpenseModel {
  const factory DocumentExpenseModel({
  @JsonKey(name: 'expense_hd_id') String? expenseHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'expense_hd_docudate') String? expenseHdDocudate,
  @JsonKey(name: 'expense_hd_docuno') String? expenseHdDocuno,
  @JsonKey(name: 'expense_hd_status_id') num? expenseHdStatusId,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'expense_hd_remark') String? expenseHdRemark,
  @JsonKey(name: 'master_vat_group_id') num? vatGroupId,
  @JsonKey(name: 'master_vat_group_name') String? vatGroupName,
  @JsonKey(name: 'master_vat_rate') String? vatRate,
  @JsonKey(name: 'expense_hd_type_id') num? expenseHdTypeId,
  @JsonKey(name: 'expense_hd_creditday') num? expenseHdCreditday,
  @JsonKey(name: 'expense_hd_cash_amount') String? expenseHdCashAmount,
  @JsonKey(name: 'expense_hd_transfer_amount') String? expenseHdTransferAmount,
  @JsonKey(name: 'master_branch_bankbook_id') String? branchBankbookId,
  @JsonKey(name: 'master_bank_id') num? bankId,
  @JsonKey(name: 'master_bank_name') String? bankName,
  @JsonKey(name: 'master_branch_bankbook_bankbookno') String? branchBankbookBankbookno,
  @JsonKey(name: 'master_branch_bankbook_branchname') String? branchBankbookBranchname,
  @JsonKey(name: 'master_branch_bankbook_name') String? branchBankbookName,
  @JsonKey(name: 'vendor_bankbookno') String? vendorBankbookno,
  @JsonKey(name: 'vendor_bank_name') String? vendorBankName,
  @JsonKey(name: 'vendor_bankbook_branchname') String? vendorBankbookBranchname,
  @JsonKey(name: 'expense_hd_amount') String? expenseHdAmount,
  @JsonKey(name: 'expense_hd_totalexcludeamnt') String? expenseHdTotalexcludeamnt,
  @JsonKey(name: 'expense_hd_totalincludeamnt') String? expenseHdTotalincludeamnt,
  @JsonKey(name: 'expense_hd_baseamnt') String? expenseHdBaseamnt,
  @JsonKey(name: 'expense_hd_vatamnt') String? expenseHdVatamnt,
  @JsonKey(name: 'expense_hd_discount_amount') String? expenseHdDiscountAmount,
  @JsonKey(name: 'expense_hd_netamnt') String? expenseHdNetamnt,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'expense_hd_whtamnt') String? expenseHdWhtamnt,
  @JsonKey(name: 'expense_hd_invoice_date') String? expenseHdInvoiceDate,
  @JsonKey(name: 'expense_hd_invoice_no') String? expenseHdInvoiceNo,
  }) = _DocumentExpenseModel;

  factory DocumentExpenseModel.fromJson(Map<String, dynamic> json) => _$DocumentExpenseModelFromJson(json);
}
