
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_quotation_model.freezed.dart';
part 'document_quotation_model.g.dart';

@freezed
class DocumentQuotationModel with _$DocumentQuotationModel {
  const factory DocumentQuotationModel({
  @JsonKey(name: 'quotation_hd_id') String? quotationHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'quotation_hd_docudate') String? quotationHdDocudate,
  @JsonKey(name: 'quotation_hd_docuno') String? quotationHdDocuno,
  @JsonKey(name: 'quotation_hd_status_id') num? quotationHdStatusId,
  @JsonKey(name: 'quotation_hd_status_name') String? quotationHdStatusName,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'quotation_hd_person_name') String? quotationHdPersonName,
  @JsonKey(name: 'quotation_hd_person_tel') String? quotationHdPersonTel,
  @JsonKey(name: 'quotation_hd_remark') String? quotationHdRemark,
  @JsonKey(name: 'quotation_hd_amount') String? quotationHdAmount,
  @JsonKey(name: 'quotation_hd_discountamount') String? quotationHdDiscountamount,
  @JsonKey(name: 'quotation_hd_netamount') String? quotationHdNetamount,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_district_id') String? contactDistrictId,
  @JsonKey(name: 'master_contact_prefecture_id') String? contactPrefectureId,
  @JsonKey(name: 'master_contact_province_id') String? contactProvinceId,
  @JsonKey(name: 'master_contact_postcode_id') String? contactPostcodeId,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentQuotationModel;

  factory DocumentQuotationModel.fromJson(Map<String, dynamic> json) => _$DocumentQuotationModelFromJson(json);
}
