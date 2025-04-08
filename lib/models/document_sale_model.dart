
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_sale_model.freezed.dart';
part 'document_sale_model.g.dart';

@freezed
class DocumentSaleModel with _$DocumentSaleModel {
  const factory DocumentSaleModel({
  @JsonKey(name: 'sale_hd_id') String? saleHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'sale_hd_docudate') String? saleHdDocudate,
  @JsonKey(name: 'sale_hd_docuno') String? saleHdDocuno,
  @JsonKey(name: 'sale_hd_status_id') num? saleHdStatusId,
  @JsonKey(name: 'sale_hd_status_name') String? saleHdStatusName,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'master_contact_district_id') String? contactDistrictId,
  @JsonKey(name: 'master_contact_prefecture_id') String? contactPrefectureId,
  @JsonKey(name: 'master_contact_province_id') String? contactProvinceId,
  @JsonKey(name: 'master_contact_postcode_id') String? contactPostcodeId,
  @JsonKey(name: 'sale_hd_remark') String? saleHdRemark,
  @JsonKey(name: 'master_vat_group_id') num? vatGroupId,
  @JsonKey(name: 'sale_hd_type_id') num? saleHdTypeId,
  @JsonKey(name: 'sale_hd_creditday') num? saleHdCreditday,
  @JsonKey(name: 'wht_category_id') String? whtCategoryId,
  @JsonKey(name: 'sale_hd_amount') String? saleHdAmount,
  @JsonKey(name: 'sale_hd_totalexcludeamnt') String? saleHdTotalexcludeamnt,
  @JsonKey(name: 'sale_hd_totalincludeamnt') String? saleHdTotalincludeamnt,
  @JsonKey(name: 'sale_hd_baseamnt') String? saleHdBaseamnt,
  @JsonKey(name: 'sale_hd_vatamnt') String? saleHdVatamnt,
  @JsonKey(name: 'sale_hd_discount_amount') String? saleHdDiscountAmount,
  @JsonKey(name: 'sale_hd_wht_amount') String? saleHdWhtAmount,
  @JsonKey(name: 'sale_hd_netamnt') String? saleHdNetamnt,
  @JsonKey(name: 'sale_hd_cash_amount') String? saleHdCashAmount,
  @JsonKey(name: 'sale_hd_transfer_amount') String? saleHdTransferAmount,
  @JsonKey(name: 'sale_hd_credit_amount') String? saleHdCreditAmount,
  @JsonKey(name: 'sale_hd_change_amount') String? saleHdChangeAmount,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'sale_hd_cash_received') String? saleHdCashReceived,
  @JsonKey(name: 'sale_hd_rounding_amount') String? saleHdRoundingAmount,
  @JsonKey(name: 'wht_category_name') String? whtCategoryName,
  @JsonKey(name: 'wht_category_rate') String? whtCategoryRate,
  @JsonKey(name: 'master_vat_group_name') String? vatGroupName,
  @JsonKey(name: 'sale_hd_vatrate') String? saleHdVatrate,
  @JsonKey(name: 'sale_hd_voucher_amount') String? saleHdVoucherAmount,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'sale_hd_savetime') String? saleHdSavetime,
  @JsonKey(name: 'master_contact_branchname') String? contactBranchname,
  }) = _DocumentSaleModel;

  factory DocumentSaleModel.fromJson(Map<String, dynamic> json) => _$DocumentSaleModelFromJson(json);
}
