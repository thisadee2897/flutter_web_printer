
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_receive_good_model.freezed.dart';
part 'document_receive_good_model.g.dart';

@freezed
class DocumentReceiveGoodModel with _$DocumentReceiveGoodModel {
  const factory DocumentReceiveGoodModel({
  @JsonKey(name: 'receive_hd_id') String? receiveHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'receive_hd_docudate') String? receiveHdDocudate,
  @JsonKey(name: 'receive_hd_docuno') String? receiveHdDocuno,
  @JsonKey(name: 'receive_hd_status_id') num? receiveHdStatusId,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'receive_hd_remark') String? receiveHdRemark,
  @JsonKey(name: 'master_vat_group_id') num? vatGroupId,
  @JsonKey(name: 'master_vat_group_name') String? vatGroupName,
  @JsonKey(name: 'receive_hd_amount') String? receiveHdAmount,
  @JsonKey(name: 'receive_hd_totalexcludeamnt') String? receiveHdTotalexcludeamnt,
  @JsonKey(name: 'receive_hd_totalincludeamnt') String? receiveHdTotalincludeamnt,
  @JsonKey(name: 'receive_hd_baseamnt') String? receiveHdBaseamnt,
  @JsonKey(name: 'receive_hd_vatamnt') String? receiveHdVatamnt,
  @JsonKey(name: 'receive_hd_discount_amount') String? receiveHdDiscountAmount,
  @JsonKey(name: 'receive_hd_netamnt') String? receiveHdNetamnt,
  @JsonKey(name: 'receive_hd_creditday') num? receiveHdCreditday,
  @JsonKey(name: 'receive_hd_cash_amount') String? receiveHdCashAmount,
  @JsonKey(name: 'receive_hd_transfer_amount') String? receiveHdTransferAmount,
  @JsonKey(name: 'master_bank_id') String? bankId,
  @JsonKey(name: 'receive_hd_bankbookno') String? receiveHdBankbookno,
  @JsonKey(name: 'receive_hd_bank_name') String? receiveHdBankName,
  @JsonKey(name: 'receive_hd_bank_branchname') String? receiveHdBankBranchname,
  @JsonKey(name: 'master_bank_name') String? bankName,
  @JsonKey(name: 'master_branch_bankbook_id') String? branchBankbookId,
  @JsonKey(name: 'master_bank_id_comany') String? bankIdComany,
  @JsonKey(name: 'master_bank_name_company') String? bankNameCompany,
  @JsonKey(name: 'master_branch_bankbook_bankbookno_company') String? branchBankbookBankbooknoCompany,
  @JsonKey(name: 'master_branch_bankbook_branchname_company') String? branchBankbookBranchnameCompany,
  @JsonKey(name: 'master_branch_bankbook_name_comapny') String? branchBankbookNameComapny,
  @JsonKey(name: 'master_vat_rate') String? vatRate,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'receive_hd_deposit_amount') String? receiveHdDepositAmount,
  @JsonKey(name: 'master_menu_id') String? menuId,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  }) = _DocumentReceiveGoodModel;

  factory DocumentReceiveGoodModel.fromJson(Map<String, dynamic> json) => _$DocumentReceiveGoodModelFromJson(json);
}
