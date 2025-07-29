
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_order_model.freezed.dart';
part 'document_order_model.g.dart';

@freezed
class DocumentOrderModel with _$DocumentOrderModel {
  const factory DocumentOrderModel({
  @JsonKey(name: 'order_hd_id') String? orderHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'order_hd_docudate') String? orderHdDocudate,
  @JsonKey(name: 'order_hd_docuno') String? orderHdDocuno,
  @JsonKey(name: 'order_hd_status_id') num? orderHdStatusId,
  @JsonKey(name: 'order_hd_status_name') String? orderHdStatusName,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'order_hd_person_name') String? orderHdPersonName,
  @JsonKey(name: 'order_hd_person_tel') String? orderHdPersonTel,
  @JsonKey(name: 'order_hd_remark') String? orderHdRemark,
  @JsonKey(name: 'order_hd_amount') String? orderHdAmount,
  @JsonKey(name: 'order_hd_discountamount') String? orderHdDiscountamount,
  @JsonKey(name: 'order_hd_netamount') String? orderHdNetamount,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_vat_group_id') num? vatGroupId,
  @JsonKey(name: 'order_hd_vatrate') String? orderHdVatrate,
  @JsonKey(name: 'order_hd_totalexcludeamnt') String? orderHdTotalexcludeamnt,
  @JsonKey(name: 'order_hd_totalincludeamnt') String? orderHdTotalincludeamnt,
  @JsonKey(name: 'order_hd_baseamnt') String? orderHdBaseamnt,
  @JsonKey(name: 'order_hd_vatamnt') String? orderHdVatamnt,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_district_id') String? contactDistrictId,
  @JsonKey(name: 'master_contact_prefecture_id') String? contactPrefectureId,
  @JsonKey(name: 'master_contact_province_id') String? contactProvinceId,
  @JsonKey(name: 'master_contact_postcode_id') String? contactPostcodeId,
  @JsonKey(name: 'master_vat_group_name') String? vatGroupName,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentOrderModel;

  factory DocumentOrderModel.fromJson(Map<String, dynamic> json) => _$DocumentOrderModelFromJson(json);
}
