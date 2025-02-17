
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_credit_note_model.freezed.dart';
part 'document_credit_note_model.g.dart';

@freezed
class DocumentCreditNoteModel with _$DocumentCreditNoteModel {
  const factory DocumentCreditNoteModel({
  @JsonKey(name: 'creditnote_hd_id') String? creditnoteHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'creditnote_hd_docudate') String? creditnoteHdDocudate,
  @JsonKey(name: 'creditnote_hd_docuno') String? creditnoteHdDocuno,
  @JsonKey(name: 'creditnote_hd_status_id') num? creditnoteHdStatusId,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'creditnote_hd_remark') String? creditnoteHdRemark,
  @JsonKey(name: 'master_vat_group_id') num? vatGroupId,
  @JsonKey(name: 'creditnote_hd_vatrate') String? creditnoteHdVatrate,
  @JsonKey(name: 'master_vat_group_name') String? vatGroupName,
  @JsonKey(name: 'creditnote_hd_amount') String? creditnoteHdAmount,
  @JsonKey(name: 'creditnote_hd_totalexcludeamnt') String? creditnoteHdTotalexcludeamnt,
  @JsonKey(name: 'creditnote_hd_totalincludeamnt') String? creditnoteHdTotalincludeamnt,
  @JsonKey(name: 'creditnote_hd_baseamnt') String? creditnoteHdBaseamnt,
  @JsonKey(name: 'creditnote_hd_vatamnt') String? creditnoteHdVatamnt,
  @JsonKey(name: 'creditnote_hd_netamnt') String? creditnoteHdNetamnt,
  @JsonKey(name: 'creditnote_hd_creditday') num? creditnoteHdCreditday,
  @JsonKey(name: 'creditnote_hd_cash_amount') String? creditnoteHdCashAmount,
  @JsonKey(name: 'creditnote_hd_transfer_amount') String? creditnoteHdTransferAmount,
  @JsonKey(name: 'master_branch_bankbook_id') String? branchBankbookId,
  @JsonKey(name: 'master_bank_id') num? bankId,
  @JsonKey(name: 'master_bank_name') String? bankName,
  @JsonKey(name: 'master_branch_bankbook_bankbookno') String? branchBankbookBankbookno,
  @JsonKey(name: 'master_branch_bankbook_branchname') String? branchBankbookBranchname,
  @JsonKey(name: 'master_branch_bankbook_name') String? branchBankbookName,
  @JsonKey(name: 'vendor_master_bank_id') num? vendorBankId,
  @JsonKey(name: 'vendor_master_bank_name') String? vendorBankName,
  @JsonKey(name: 'vendor_bankbookno') String? vendorBankbookno,
  @JsonKey(name: 'vendor_bankbook_name') String? vendorBankbookName,
  @JsonKey(name: 'vendor_bankbook_branchname') String? vendorBankbookBranchname,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  }) = _DocumentCreditNoteModel;

  factory DocumentCreditNoteModel.fromJson(Map<String, dynamic> json) => _$DocumentCreditNoteModelFromJson(json);
}
