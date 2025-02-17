
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_payment_model.freezed.dart';
part 'document_payment_model.g.dart';

@freezed
class DocumentPaymentModel with _$DocumentPaymentModel {
  const factory DocumentPaymentModel({
  @JsonKey(name: 'payment_hd_id') String? paymentHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'payment_hd_docudate') String? paymentHdDocudate,
  @JsonKey(name: 'payment_hd_docuno') String? paymentHdDocuno,
  @JsonKey(name: 'payment_status_id') num? paymentStatusId,
  @JsonKey(name: 'payment_status_name') String? paymentStatusName,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'payment_hd_remark') String? paymentHdRemark,
  @JsonKey(name: 'payment_hd_amount') String? paymentHdAmount,
  @JsonKey(name: 'payment_hd_cash_amount') String? paymentHdCashAmount,
  @JsonKey(name: 'payment_hd_transfer_amount') String? paymentHdTransferAmount,
  @JsonKey(name: 'master_branch_bankbook_id') String? branchBankbookId,
  @JsonKey(name: 'master_bank_id') num? bankId,
  @JsonKey(name: 'master_bank_name') String? bankName,
  @JsonKey(name: 'master_branch_bankbook_name') String? branchBankbookName,
  @JsonKey(name: 'master_branch_bankbook_bankbookno') String? branchBankbookBankbookno,
  @JsonKey(name: 'master_branch_bankbook_branchname') String? branchBankbookBranchname,
  @JsonKey(name: 'vendor_master_bank_id') num? vendorBankId,
  @JsonKey(name: 'vendor_master_bank_name') String? vendorBankName,
  @JsonKey(name: 'vendor_bankbookno') String? vendorBankbookno,
  @JsonKey(name: 'vendor_bankbook_name') String? vendorBankbookName,
  @JsonKey(name: 'vendor_bankbook_branchname') String? vendorBankbookBranchname,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'payment_hd_netamnt') String? paymentHdNetamnt,
  }) = _DocumentPaymentModel;

  factory DocumentPaymentModel.fromJson(Map<String, dynamic> json) => _$DocumentPaymentModelFromJson(json);
}
