
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_product_return_model.freezed.dart';
part 'document_product_return_model.g.dart';

@freezed
class DocumentProductReturnModel with _$DocumentProductReturnModel {
  const factory DocumentProductReturnModel({
  @JsonKey(name: 'returnproduct_hd_id') String? returnproductHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'returnproduct_hd_docudate') String? returnproductHdDocudate,
  @JsonKey(name: 'returnproduct_hd_docuno') String? returnproductHdDocuno,
  @JsonKey(name: 'returnproduct_hd_status_id') num? returnproductHdStatusId,
  @JsonKey(name: 'returnproduct_hd_status_name') String? returnproductHdStatusName,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_district_id') String? contactDistrictId,
  @JsonKey(name: 'master_contact_prefecture_id') String? contactPrefectureId,
  @JsonKey(name: 'master_contact_province_id') String? contactProvinceId,
  @JsonKey(name: 'master_contact_postcode_id') String? contactPostcodeId,
  @JsonKey(name: 'returnproduct_hd_remark') String? returnproductHdRemark,
  @JsonKey(name: 'master_vat_group_id') num? vatGroupId,
  @JsonKey(name: 'returnproduct_hd_type_id') num? returnproductHdTypeId,
  @JsonKey(name: 'returnproduct_hd_creditday') num? returnproductHdCreditday,
  @JsonKey(name: 'returnproduct_hd_amount') String? returnproductHdAmount,
  @JsonKey(name: 'returnproduct_hd_totalexcludeamnt') String? returnproductHdTotalexcludeamnt,
  @JsonKey(name: 'returnproduct_hd_totalincludeamnt') String? returnproductHdTotalincludeamnt,
  @JsonKey(name: 'returnproduct_hd_baseamnt') String? returnproductHdBaseamnt,
  @JsonKey(name: 'returnproduct_hd_vatamnt') String? returnproductHdVatamnt,
  @JsonKey(name: 'returnproduct_hd_netamnt') String? returnproductHdNetamnt,
  @JsonKey(name: 'returnproduct_hd_cash_amount') String? returnproductHdCashAmount,
  @JsonKey(name: 'returnproduct_hd_transfer_amount') String? returnproductHdTransferAmount,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'returnproduct_hd_vatrate') String? returnproductHdVatrate,
  @JsonKey(name: 'master_vat_group_name') String? vatGroupName,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentProductReturnModel;

  factory DocumentProductReturnModel.fromJson(Map<String, dynamic> json) => _$DocumentProductReturnModelFromJson(json);
}
